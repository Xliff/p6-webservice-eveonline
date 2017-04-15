#!/usr/bin/perl6

use v6.c;
use DBIish;

#const MAXITEM = 16369;
constant MAXITEM = 20000;

sub MAIN (Str :$user!, Str :$password!, Str :$host = "localhost", Str :$database = "Eve") {
	my $dbh = DBIish.connect(
		'mysql',
		:host($host),
		:database($database),
		:user($user),
		:password($password)
	);

	say chomp(q:to/HEADER/);
		#!/usr/bin/perl6
		unit module WebService::EveOnline::Static::Items;

		use v6.c;
		HEADER

	my $max_id = 0;
	my $l_cnt = 1;
	loop {
		# cw: Limit determined by experminentation;
		my $sth = $dbh.prepare(qq:to/STATEMENT/);
			SELECT typeID, groupID, typeName
			FROM invTypes
			WHERE typeID > {$max_id}
			ORDER BY typeID
			LIMIT {MAXITEM}
    STATEMENT

    $sth.execute();

    my @data = $sth.allrows(:array-of-hash);
    last if @data.elems == 0;

    say "our \%itemLookup{$l_cnt} = (";

    for @data -> $d {
    	my $tn;
    	$tn = $d<typeName>.defined ?? (S:g/\"/\\"/ given $d<typeName>) !! '';
    	say qq:to/ITEM/;
	    			{$d<typeID>}	=> \{
	    				typeID   => {$d<typeID>},
		    			groupID  => {$d<groupID>},
		    			typeName => "{ $tn }"
				\},
			ITEM
    }

    say ");\n";

    #last if @data.elems < 16360;
		last if @data.elems < MAXITEM;
    $max_id = @data[* - 1]<typeID>;
    $l_cnt++;
  }
}
