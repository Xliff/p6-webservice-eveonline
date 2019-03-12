use v6.c;

use DBIish;

use WebService::EveOnline::SSO::Web;
use WebService::EveOnline::ESI::Alliance;
use WebService::EveOnline::ESI::Corporation;
use WebService::EveOnline::ESI::Universe;

my ($uni, $corp, $ali, $o_dbh, $g_sth, $lock, %eid);
$lock = Lock.new;

sub deleteEntries {
  say "Deleting { %eid.keys.elems } entries...";
  for %eid.keys.rotor(100) -> $b {
    my $sth = $o_dbh.prepare(qq:to/SQL/);
DELETE FROM publicStructures WHERE id IN ({ $b.Array.join(',') })
SQL

    $sth.execute();
  } 
}

sub getStructureIDs($t) {
  my $sth = $o_dbh.prepare(qq:to/SQL/);
SELECT id FROM { $t }
SQL
    
  $sth.execute($sid);
  my @ids = $sth.allrows().flat {
  if @ids.elems {
    say "Currently storing{ @id.elems } entries...";
    %eid{$_} = 1 for @ids;
  }
}

# This will need to be done for pricate structures as well!
sub populateData($t, $sid) {
  my $s;
  
  if %eids{$sid}:exists {
    say "Entry #{$sid} exists, skipping...";
    %eids{$sid}:delete;
    return True;
  }
  
  my $retry = 5;
  while $retry {
    try {
      CATCH { default { .message.say } }
      # This is a non-fatal situation.
      $s = $uni.getStructure($sid);
      $s = $s<data>;
    }
    last without $!;
    given $!.message {
      when /'502' | '503' | '504'/ {
        warn "{ $! } -- Retrying";
        $retry--;
        sleep 3;
      }
      default {
        die $!;
      }
    }
  }
  
  $lock.protect({
    $g_sth.execute(
      $sid, 
      $s<name>,
      $s<position><x>,
      $s<position><y>,
      $s<position><z>,
      $s<solar_system_id>,
      $s<type_id>
    );
  });
  
  my $sql = qq:to/SQL/.chomp;
UPDATE { $t }
SET 
  seclev   = (
    SELECT security 
    FROM static.SolSystems 
    WHERE solarSystemID = { $t }.systemID
  ),
  regionID = (
    SELECT regionID
    FROM static.SolSystems
    WHERE solarSystemID = { $t }.systemID
  )
WHERE
  { $t }.id = ?
SQL

  $sth = $o_dbh.prepare($sql);
  
  say "Adding { $s<name> } (#{$sid})...";
  $lock.protect({ $sth.execute($sid) });
  False;
}

sub populateStructs(@s) {
  my @p;
  for @s.rotor(@s.elems / BATCH, :partial) -> $list {
    @p.append: start {
      for $list.Array -> $l { 
        my $p = start { sleep 2 unless populateData($t, $l) }
        await $p;
      }
    }
  }
  await @p;
  deleteEntries() if %eids.elems;
  # for $structs<data>.List -> $id { 
  #   populateData($t, $id)   
  # };
}

sub MAIN (
  :$static = 'Eve-Static.sqlite3', 
  :$structure = 'Eve-Structure.sqlite3', 
  :$force = False,
  :$create = False
) {
  die qq:to/D/.chomp unless !$structure.IO.e || $force;
  Will overrite existing structure database at '$structure'. Please either 
  remove the file, or use the --force option.
  D
  
  # Remove the structures database file.
  $structure.IO.unlink if $create;
  
  die "Cannot load static database at '$static'" unless $static.IO.e;
  $o_dbh = DBIish.connect(
		'SQLite',
		database => $structure
	);
    
  my $sso = WebService::EveOnline::SSO::Web.new(
    :scopes(<
    	esi-assets.read_assets.v1
    	esi-assets.read_corporation_assets.v1
    	esi-universe.read_structures.v1
      esi-corporations.read_structures.v1
      esi-corporations.read_starbases.v1
    >),
    :realm<ESI>,
    :section<getStructureData>
  );
  $sso.await-init;
  
  my $sth = $o_dbh.prepare("ATTACH DATABASE '$static' AS static");
  $sth.execute;
 
  $uni  = WebService::EveOnline::ESI::Universe.new(:$sso);
  $corp = WebService::EveOnline::ESI::Corporation.new(:$sso);
  $ali  = WebService::EveOnline::ESI::Alliance.new(:$sso);
  
  # INSURE concurrency.
  constant BATCH = 4;
  
  #for <publicStructures privateStructures> -> $t {
  for <privateStructures>.List -> $t {
    if $create {
      my $csth = $o_dbh.prepare(qq:to/SQL/.chomp);
CREATE TABLE { $t } (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(100),
	systemID INTEGER,
  regionID INTEGER,
  typeID INTEGER,
  seclev DOUBLE DEFAULT NULL,
  x DOUBLE NOT NULL,
  y DOUBLE NOT NULL,
  z DOUBLE NOT NULL
)
SQL
      $csth.execute;
    }
  
    # TODO: Do A & A check for privateStructures, when it comes up.
    $g_sth = $o_dbh.prepare(qq:to/SQL/.chomp);
INSERT INTO { $t } (
  id,
  name,
  x, y, z,
  systemID,
  typeID
) VALUES (?, ?, ?,?,?, ?, ?)
SQL

   given $t { 
      # Easy
      when 'publicStructures'  { 
        my $structs = $uni.getStructures();
        say "Processing { $structs<data>.elems } entries...";
        populateStructs($structs<data>.elems);
      }
      
      # Tricky. Need corp AND alliances. May as well go for alliance if
      # alliance-id is set.
      when 'privateStructures' { 
        # For now... we wuss out! 
        # ... but until then, here's how it could work...
        # 1)  Build list of corporations in alliance. If no alliance, then
        #     Corp list contains one entry. 
        #     a)  There will ALWAYS be a corp entry, even if its just a 
        #         starter.
        my @sids;
        my @cids = $corp.info<alliance_id>.defined ??
          $ali.getCorporations()
          !!
          $corp.corporation-id.Array;
        #     b)  Check corp list for list of structures.
        for @cids -> $cid {
          try {
            CATCH { default { .message.say } } 
            @sids.append: $corp.getStructures($cid);
          }
        }
        #         i)  Go through list of structures.
        populateStructs(@sids);
      }
    }
      
  }
}
