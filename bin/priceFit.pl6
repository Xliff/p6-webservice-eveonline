#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;

my $sq_dbh;
my %fit;
my %market;

multi sub readFit(Str $fn) {
	if ($fn.lines.elems > 1) {
		realReadFit($fn);
		return;
	}

	my $fh = $fn.IO.open(:r) 
		or 
	die "Cannot open fittings file file '$fn'";

	readFit($fh);
}

multi sub readFit(IO::Handle $fh) {
	realReadFit($fh.slurp-rest);
}

sub realReadFit(Str $f) {
	my %fit_data = ();

	for $f.lines -> $l {
		next if $l ~~ /^\[/;

		if ($l ~~ /^(<-[,]>+)/) {
			my $name = $/[0].Str;
			
			my $num;
			if ($name ~~ /' ' x (\d+)$/) {
				$num = $/[0].Str;
				$name ~~ s/' ' x \d+$//;
			} 

			# cw: If the data already exists, we can safely increment without having
			#     to worry about the presence of the " x###" value.
			if (%fit_data{$name}:v && !$num.defined) {
				%fit_data{$name}++;
			} else {
				%fit_data{$name} = $num ?? $num !! 1;
			}
		}
	}

	%fit_data;
}

sub addFitIDs {
	# cw: REALLY wish the syntax highlighting in Sublime Text didn't 
	#     break with a valid Perl6 HereDoc
	my $SQL = "
		SELECT typeID, typeName
		FROM invTypes 
		WHERE 
			typeName IN ( { ('?' xx %fit.keys).join(',') } )
			AND
			typeId IS NOT NULL
			AND
			typeName IS NOT NULL";

	#say "SQL is\n{'-' x 10}\n$SQL";
	my $sth = $sq_dbh.prepare($SQL);

	$sth.execute(%fit.keys);

	for @($sth.allrows) -> $r {
		#%fit{$r[1]}<id> = $r[0];
		# Resolver by id.
		%fit<_BYID_>{$r[0]} = {
			name 	=> $r[1],
			count	=> %fit{$r[1]}
		};
	}
	$sth.finish;
}

sub retrieveMarketData {
	my $ec = WebService::EveOnline::EveCentral.new;

	for %fit<_BYID_>.keys -> $k {
		say "Retrieving Data for item '{ %fit<_BYID_>{$k}<name> }'";
		%market{$k} = $ec.quickLook(:typeID($k));
	}
}

#sub MAIN (:$filename!, :$sqlite) {
	my $filename = 'scripts/test.fit';
	my $sq_file = 'data/Eve_Static.sqlite3';
	$sq_dbh = DBIish.connect(
		'SQLite',
		:database($sq_file),
		:PrintError(True)
	) 
	or 
	die "Cannot open static Eve data!";

	die "Fit file does not exist" unless $filename.IO.e;

	%fit = readFit($filename);
	die "Blank fit encountered" unless %fit.keys.elems;

	addFitIDs;
	dd %fit;

	retrieveMarketData;
	#dd %market;
#}
