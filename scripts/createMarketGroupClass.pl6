#!/usr/bin/perl6

use v6.c;
use DBIish;


sub MAIN (Str :$user!, Str :$password!, Str :$host = "localhost", Str :$database = "Eve") {	
	my $dbh = DBIish.connect(
		'mysql', 
		:host($host),
		:database($database), 
		:user($user), 
		:password($password)
	);

	my $sth = $dbh.prepare(q:to/STATEMENT/);
		SELECT marketGroupID, marketGroupName 
		FROM invMarketGroups
        STATEMENT

    $sth.execute();

    my @data = $sth.allrows(:array-of-hash);
    say "{$database} / {$host} / {$user} / {@data.elems}";

	say chomp(q:to/HEADER/);
		#!/usr/bin/perl6
		unit module WebService::EveOnline::Static::MarketGroups;

		use v6.c;

		our %marketGroupLookup = (
		HEADER

    for @data -> $d {
    	say "\t{$d<marketGroupID>}\t\t=> '{$d<marketGroupName>}'";
    }

    say ");";
}