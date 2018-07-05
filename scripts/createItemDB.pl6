#!/usr/bin/perl6

use v6.c;
use DBIish;

sub MAIN (Str :$user!, Str :$password!, Str :$host = "localhost", Str :$database = "Eve") {
	my $i_dbh = DBIish.connect(
		'mysql',
		:host($host),
		:database($database),
		:user($user),
		:password($password)
	);

	my $dbname = 'Eve_Static.sqlite3';
	my $olddbname = "$dbname.old";
	$olddbname.IO.unlink if $olddbname.IO.e && $olddbname.IO.f;
	$dbname.IO.rename($olddbname) if $dbname.IO.e && $dbname.IO.f;

	my $o_dbh = DBIish.connect(
		'SQLite',
		:database<Eve_Static.sqlite3>
	);

	my $o_sth = $o_dbh.prepare("PRAGMA journal_mode=memory");
	$o_sth.execute();

	my ($i_sth, $cnt, @data);

	# Items
	print "Adding items...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE TABLE invTypes (
			typeID INTEGER PRIMARY KEY NOT NULL,
			groupID INTEGER NOT NULL,
			typeName VARCHAR(100),
			bpID INTEGER
		)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX invTypes_typeName_idx ON invTypes(typeName)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT i.typeID, i.groupID, i.typeName, ii.typeID as bpID
		FROM invTypes i
		LEFT JOIN invTypes ii on ii.typeName = CONCAT(i.typeName, ' Blueprint')
  STATEMENT

  $i_sth.execute();

  $o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO invTypes (typeID, groupID, typeName, bpID)
		VALUES (?, ?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
    	$o_sth.execute($_<typeID>, $_<groupID>, $_<typeName>, $_<bpID>);
    	print '.' if $cnt++ % 1000 == 0;
	}
  $i_sth.finish;
  say "({$cnt})";

	# Blueprint data
	print "Adding blueprints...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE TABLE industryActivityMaterials (
			typeID INTEGER,
			activityId INTEGER,
			materialTypeId INTEGER,
			quantity INTEGER
		)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX indActMat_typeId_idx ON industryActivityMaterials(typeId)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX indActMat_matId_idx ON industryActivityMaterials(materialTypeId)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT typeID, activityId, materialTypeId, quantity
		FROM industryActivityMaterials
		ORDER BY typeID
  STATEMENT

  $i_sth.execute();

  $o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO industryActivityMaterials (typeID, activityId, materialTypeId, quantity)
		VALUES (?, ?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
    	$o_sth.execute($_<typeID>, $_<activityId>, $_<materialTypeId>, $_<quantity>);
    	print '.' if $cnt++ % 1000 == 0;
	}
	$i_sth.finish;
	say "({$cnt})";

  # Stations
  print "Adding stations...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE TABLE Stations (
			stationID INTEGER PRIMARYY KEY NOT NULL,
			security INTEGER,
			solarSystemID INTEGER,
			regionID INTEGER,
			stationName VARCHAR(100),
			x DOUBLE NOT NULL,
			y DOUBLE NOT NULL,
			z DOUBLE NOT NULL
		)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Stations_System_idx ON Stations(solarSystemID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Stations_Region_idx ON Stations(regionID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Stations_Name_idx ON Stations(stationName)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName, x, y, z
		FROM staStations
		ORDER BY stationID
  STATEMENT

  $i_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO Stations (
			stationID, security, solarSystemID, regionID, stationName, x, y, z
		)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
	    $o_sth.execute(
	    	$_<stationID>,
	    	$_<security>,
	    	$_<solarSystemID>,
	    	$_<regionID>,
	    	$_<stationName>
		);
		print '.' if $cnt++ % 500 == 0;
	}
  $i_sth.finish;
	say "({$cnt})";

	print "Adding regions...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
	  CREATE TABLE Regions (
	    regionID INTEGER PRIMARY KEY NOT NULL,
	    regionName VARCHAR(100) DEFAULT NULL,
	    x DOUBLE DEFAULT NULL,
	    y DOUBLE DEFAULT NULL,
	    z DOUBLE DEFAULT NULL,
	    xMin DOUBLE DEFAULT NULL,
	    xMax DOUBLE DEFAULT NULL,
	    yMin DOUBLE DEFAULT NULL,
	    yMax DOUBLE DEFAULT NULL,
	    zMin DOUBLE DEFAULT NULL,
	    zMax DOUBLE DEFAULT NULL,
	    radius FLOAT DEFAULT NULL
	  )
  STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Region_Name_idx ON Regions(regionName)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT
			regionID,
			regionName,
			x, y, z, radius,
			xMin, xMax,
			yMin, yMax,
			zMin, zMax
		FROM mapRegions
  STATEMENT

	$i_sth.execute;

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO Regions (
			regionID, regionName, x, y, z, radius, xMin, xMax, yMin, yMax,
			zMin, zMax
		)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
	  $o_sth.execute($_<
		  regionID
		  regionName
		  x y z radius
		  xMin xMax
		  yMin yMax
		  zMin zMax
    >);
		print '.' if $cnt++ % 5 == 0;
	}
  $i_sth.finish;
  say "({$cnt})";

	print "Adding solar systems...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
	  CREATE TABLE SolSystems (
			solarSystemID INTEGER PRIMARY KEY NOT NULL,
      regionID INTEGER DEFAULT NULL,
      constellationID INTEGER DEFAULT NULL,
      solarSystemName VARCHAR(100) DEFAULT NULL,
      x DOUBLE DEFAULT NULL,
      y DOUBLE DEFAULT NULL,
      z DOUBLE DEFAULT NULL,
      xMin DOUBLE DEFAULT NULL,
      xMax DOUBLE DEFAULT NULL,
      yMin DOUBLE DEFAULT NULL,
      yMax DOUBLE DEFAULT NULL,
      zMin DOUBLE DEFAULT NULL,
      zMax DOUBLE DEFAULT NULL,
      security DOUBLE DEFAULT NULL,
      radius DOUBLE DEFAULT NULL
		)
  STATEMENT

	$o_sth.execute;

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX SolSystems_Name ON SolSystems(solarSystemName)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX SolSystems_RegionID ON SolSystems(regionID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX SolSystems_Security ON SolSystems(security)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT
		  solarSystemID,
		  regionID,
		  constellationID,
		  solarSystemName,
		  x, y, z, radius,
		  xMin, xMax,
		  yMin, yMax,
		  zMin, zMax,
		  security
		FROM mapSolarSystems
	STATEMENT

	$i_sth.execute();

	$o_sth = $o_dbh.prepare(qq:to/STATEMENT/);
		INSERT INTO SolSystems (
			solarSystemID, regionID, constellationID, solarSystemName,
			x, y, z, radius,
			xMin, xMax,
			yMin, yMax,
			zMin, zMax,
			security
		)
		VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
	  $o_sth.execute($_<
		  solarSystemID regionID constellationID solarSystemName
		  x y z radius
		  xMin xMax
		  yMin yMax
		  zMin zMax
		  security
    >);
		print '.' if $cnt++ % 500 == 0;
	}
  $i_sth.finish;
  say "({$cnt})";

	print "Adding reactions...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE TABLE Reactions (
		  reactionTypeID INTEGER NOT NULL,
			input INTEGER,
			typeID INTEGER,
			quantity INTEGER,
			multiplier NUMERIC
		)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Reactions_ReactID ON Reactions(reactionTypeID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Reactions_TypeID ON Reactions(typeID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Reactions_Input ON Reactions(input)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT
			r.reactionTypeID,
			r.input,
			r.typeID,
			r.quantity,
			a.valueInt,
			a.valueFloat
		FROM invTypeReactions as r
		INNER JOIN invTypes as t ON r.typeID=t.typeID
		LEFT OUTER JOIN dgmTypeAttributes as a ON r.typeID=a.typeID
		WHERE
			t.published=1 AND
			(a.typeId is NULL OR a.attributeId = 726)
	STATEMENT

	$i_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO Reactions (
			reactionTypeID, input, typeID, quantity, multiplier
		)
		VALUES (?, ?, ?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
	    $o_sth.execute(
	    	$_<reactionTypeID>,
	    	$_<input>,
	    	$_<typeID>,
	    	$_<quantity>,
	    	$_<valueInt> // $_<valueFloat> // 1
		);
		print '.' if $cnt++ % 100 == 0;
	}
  $i_sth.finish;
  say "({$cnt})\n\nDone.\n";

  $o_dbh.dispose;
  $i_dbh.dispose;
}
