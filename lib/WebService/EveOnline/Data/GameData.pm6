unit class WebService::EveOnline::Data::GameData;

use v6.c;

use DBIish;
use WebService::EveOnline::Data::Static::MarketGroups;

has $!dbh;
has %!invMarketGroups;
has %!marketGroups;

submethod BUILD {
	# cw: -XXX- need proper way to attach non-perl data files to module installation.
	$!dbh = DBIish.connect(
		'SQLite',
		:database</home/cbwood/projects/p6-webservice-eveonline-fitshopper/data/Eve_Static.sqlite3>
	);

	%!marketGroups := %WebService::EveOnline::Data::Static::MarketGroups::marketGroups;

	# Create inverse lookup table for market groups.
	for %!marketGroups.kv -> $k, $v {
		%!invMarketGroups{$v} = $k;
	}
}

method new {
	self.bless();
}

submethod DESTROY {
	$!dbh.dispose;
}

multi method getItem(Int $typeId) {
	my $sth = $!dbh.prepare(qq:to/STATEMENT/);
		SELECT typeID, groupID, typeName
		FROM invTypes
		WHERE typeId = ?
		STATEMENT

	$sth.execute($typeId);
	my @ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

multi method getItem(Str $typeName) {
	my $sth = $!dbh.prepare(qq:to/STATEMENT/);
		SELECT typeID, groupID, typeName
		FROM invTypes
		WHERE typeName = ?
		STATEMENT

	$sth.execute($typeName);
	my @ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

method getRegionStations(Int $regionID) {
	my $sth = $!dbh.prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE regionID = ?
		STATEMENT

	$sth.execute($regionID);
	my @ret = $sth.allrows(:array-of-hash);
	$sth.finish;
}

multi method getStation(Int $staID) {
	my $sth = $!dbh.prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE stationID = ?
		STATEMENT

	$sth.execute($staID);
	my @ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;	
}

multi method getStation(Str $staName) {
	my $sth = $!dbh.prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE stationName = ?
		STATEMENT

	$sth.execute($staName);
	my @ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

multi method getMarket(Int $id) {
	return %!marketGroups{$id};
}

multi method getMarket(Str $name) {
	return %!invMarketGroups{$name};
}
