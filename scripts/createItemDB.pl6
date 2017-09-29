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
			typeName VARCHAR(100)
		)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX invTypes_typeName_idx ON invTypes(typeName)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT typeID, groupID, typeName
		FROM invTypes
		ORDER BY typeID
  STATEMENT

  $i_sth.execute();

  $o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO invTypes (typeID, groupID, typeName)
		VALUES (?, ?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
    	$o_sth.execute($_<typeID>, $_<groupID>, $_<typeName>);
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

	print "Adding regions...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
	  CREATE TABLE Regions (
			regionID INTEGER PRIMARY KEY NOT NULL,
			regionName VARCHAR(100)
		);
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Region_idx ON Regions(regionID)
	STATEMENT

	$o_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE INDEX Region_Name_idx ON Regions(regionName)
	STATEMENT

	$o_sth.execute();

	$i_sth = $i_dbh.prepare(q:to/STATEMENT/);
		SELECT regionID, regionName
		FROM mapRegions
		ORDER BY regionID
	STATEMENT

	$i_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO Regions (
			regionID, regionName
		)
		VALUES (?, ?)
	STATEMENT

	@data = $i_sth.allrows(:array-of-hash);
	$cnt = 0;
	for @data {
    $o_sth.execute(
    	$_<regionID>,
    	$_<regionName>
		);
	  print '.' if $cnt++ % 1000 == 0;
	}
	say "({$cnt})";

  # Stations
  print "Adding stations...";
	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		CREATE TABLE Stations (
			stationID INTEGER PRIMARYY KEY NOT NULL,
			security INTEGER,
			solarSystemID INTEGER,
			regionID INTEGER,
			stationName VARCHAR(100)
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
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		ORDER BY stationID
  STATEMENT

  $i_sth.execute();

	$o_sth = $o_dbh.prepare(q:to/STATEMENT/);
		INSERT INTO Stations (
			stationID, security, solarSystemID, regionID, stationName
		)
		VALUES (?, ?, ?, ?, ?)
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
		print '.' if $cnt++ % 1000 == 0;
	}
  $i_sth.finish;
  say "({$cnt})\n\nDone.\n";

  $o_dbh.dispose;
  $i_dbh.dispose;
}
