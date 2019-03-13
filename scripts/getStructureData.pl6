use v6.c;

use DBIish;

use WebService::EveOnline::SSO::Web;
use WebService::EveOnline::ESI::Alliance;
use WebService::EveOnline::ESI::Corporation;
use WebService::EveOnline::ESI::Universe;

# Concurrency.
constant BATCH = 5;

my ($uni, $corp, $ali, $o_dbh, @g_sth, $lock, %eids);
$lock = Lock.new;

sub deleteEntries {
  say "Deleting { %eids.keys.elems } entries...";
  for %eids.keys.rotor(100) -> $b {
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
    
  $sth.execute;
  if ( my @ids = $sth.allrows().flat ).elems {
    say "Currently storing{ @ids.elems } entries...";
    %eids{$_} = 1 for @ids;
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
  
  say "Adding { $s<name> } (#{$sid})...";
  $lock.protect({
    for @g_sth {
      when 0 {
        .execute(
          $sid, 
          $s<name>,
          $s<position><x>,
          $s<position><y>,
          $s<position><z>,
          $s<solar_system_id>,
          $s<type_id>
        );
      }
      
      when 1 { .execute($sid) }
    }
  });
  
  False;
}

sub populateStructs($t, @s) {
  my @p;
 
  for @s.rotor( (1, @s.elems / BATCH).max.Int, :partial) -> $list {
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
  $sso.getToken();
  $sso.await-auth;
  
  my $sth = $o_dbh.prepare("ATTACH DATABASE '$static' AS static");
  $sth.execute;
 
  $uni  = WebService::EveOnline::ESI::Universe.new(:$sso);
  $corp = WebService::EveOnline::ESI::Corporation.new(:$sso);
  $ali  = WebService::EveOnline::ESI::Alliance.new(:$sso);
    
  #for <publicStructures privateStructures> -> $t {
  for <publicStructures privateStructures>.List -> $t {
    my $pub = $t.starts-with('public');
    
    if $create {
      my $csth = $o_dbh.prepare(qq:to/SQL/.chomp);
CREATE TABLE { $t } (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(128) UNIQUE NOT NULL,
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
    @g_sth.push: $o_dbh.prepare(qq:to/SQL/.chomp);
INSERT INTO { $t } (
  id,
  name,
  x, y, z,
  systemID,
  typeID
) VALUES (?, ?, ?,?,?, ?, ?)
SQL

  @g_sth.push: $o_dbh.prepare(qq:to/SQL/.chomp);
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

   given $t { 
      # Easy
      getStructureIDs($t);
      when 'publicStructures'  { 
        my $structs = $uni.getStructures();
        say "Processing { $structs<data>.elems } entries...";
        populateStructs($t, $structs<data>);
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
        my @cids = $ali.getCorporations()<data>.flat;
        @cids.push: $corp.corporation-id unless @cids;
        #     b)  Check corp list for list of structures.
        for @cids -> $cid {
          try {
            CATCH { default { .message.say } } 
            @sids.append: $corp.getStructures($cid)<data>;
          }
        }
        # Populate anti-collision structure.
        %eids = %();
        %eids{$_} = 1 for @sids;
        #         i)  Go through list of structures.
        say "Processing { @sids.elems } entries...";
        populateStructs($t, @sids);
      }
    }
      
  }
  
  LEAVE { $o_dbh.dispose }
}
