unit class WebService::EveOnline::GameData;

use v6.c;

use DBIish;
use WebService::EveOnline::Data::Static::MarketGroups;

has $!dbh;
has %!invMarketGroups;
has %!marketGroups;

method new {
	$!dbh = DBIish.connect(
		'SQLite',
		:database<~/projects/p6-webservice-eveonline-fitshopper/Eve_Static.sqlite3>
	);

	%!marketGroups := %WebService::EveOnline::Data::Static::MarketGroups::markerGroups;

	# Create inverse lookup table for market groups.
	for %!marketGroups:kv -> $k, $v {
		%!invMarketGroups{$v} = $k;
	}
}

submethod DESTROY {
	$!dbh.dispose;
}

multi method getItem(Int $typeId) {
	my $sth = $!dbh->prepare(qq:to/STATEMENT/);
		SELECT typeID, groupID, typeName
		FROM invTypes
		WHERE typeId = ?
		STATEMENT

	$sth.execute($typeID);
	@ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

multi method getItem(Str $typeName) {
	my $sth = $!dbh->prepare(qq:to/STATEMENT/);
		SELECT typeID, groupID, typeName
		FROM invTypes
		WHERE typeName = ?
		STATEMENT

	$sth.execute($typeName);
	@ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

method getRegionStations(Int $regionID) {
	my $sth = $!dbh->prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE regionID = ?
		STATEMENT

	$sth.execute($regionID);
	@ret = $sth.allrows(:array-of-hash);
	$sth.finish;
}

multi method getStation(Int $staID) {
	my $sth = $!dbh->prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE stationID = ?
		STATEMENT

	$sth.execute($staID);
	@ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;	
}

multi method getStation(Str $staName) {
	my $sth = $!dbh->prepare(qq:to/STATEMENT/);
		SELECT stationID, security, solarSystemID, regionID, stationName
		FROM staStations
		WHERE stationName = ?
		STATEMENT

	$sth.execute($staName);
	@ret = $sth.row(:hash);
	$sth.finish;

	return @ret.elems ?? @ret[0] !! Nil;
}

multi method getMarket(Int $id) {
	return %!marketGroups{$id};
}

multi method getMarket(Str $name) {
	return %!invMarketGroups{$name};
}