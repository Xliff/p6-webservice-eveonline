use v6.c;

use DBIish;

use WebService::EveOnline::Utils;

unit package WebService::EveOnline::Data;

my $sq_dbh;

sub openStaticDB($sqlite) is export {
	return if $sq_dbh;

	# Offer some reasonable defaults if nothing specified.
	my @sq_file = $sqlite ?? ($sqlite) !! <
		./Eve_Static.sqlite3
		data/Eve_Static.sqlite3
		../data/Eve_Static.sqlite3
	>;

	for @sq_file -> $s {
		#fatal("ERROR! Static eve data file not found at '$sq_file'!\n")
		#	unless $sq_file.IO.e && $sq_file.IO.f;

		$sq_dbh = DBIish.connect(
			'SQLite',
			:database($s),
			:PrintError(True)
		) if $s.IO.e;

		if $sq_dbh {
			say "Using SQLite static file '$s'";
			last;
		}
	}
	fatal("Cannot open static Eve data!") unless $sq_dbh;

  $sq_dbh;
}

sub resolveItemNames(*@names) is export {
	my $sql = qq:to/STATEMENT/;
	  SELECT typeID
	  FROM invTypes
	  WHERE typeName IN (
			{ @names.map({ "'{ $_ }'" }).join(',') }
	  )
	STATEMENT

	my $sth = $sq_dbh.prepare($sql);
	$sth.execute();
	$sth.allrows().flat;
}

sub resolveRegionNames(@names, @regions) is export {
	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
	  SELECT s.*
	  FROM SolSystems s
		INNER JOIN Regions r ON r.regionID = s.regionID
	  WHERE
			r.regionName IN (
				{ @names.map( "'{ * }'" ).join(',') }
		  )
			OR
			r.regionID in (
			  { @regions.join(',') }
			)
	STATEMENT

	$sth.execute();
	arrayToHash(
		$sth.allrows(:array-of-hash),
		'solarSystemID'
	);
}

sub resolveSystemNames(@names) is export {
	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
	  SELECT *
	  FROM SolSystems
	  WHERE solarSystemName IN (
			{ @names.map( "'{ * }'" ).join(',') }
	  )
	STATEMENT

	$sth.execute();
	arrayToHash(
		$sth.allrows(:array-of-hash),
		'solarSystemID'
	);
}
