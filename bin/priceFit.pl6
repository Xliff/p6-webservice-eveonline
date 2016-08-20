#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;

my $sq_dbh;
my %fit;
my %market;

enum Filter <
	NONE
	HUB
	REGION
	STATION
	SECLEV_GT
	SECLEV_LT
	SECLEV_EQ
>;

my @hubs = <<
	60003760
	60005686
	60008494
	60011866
	60004588
	60001096
	60011740
	60012412
>>;

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
		if $l ~~ /^ '[' (\w+) (',' ' ' ? (<-[ \] ]>+)) ']' $/ {
			#say "Ship: {$/[0].Str}";
			%fit_data{$/[0].Str} = 1;
			next;
		}

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

	my Filter $filter = HUB;
	my $seclev = 0.5;
	my $region;
	my $station;

	for %fit<_BYID_>.keys -> $k {
		say "Retrieving Data for item '{ %fit<_BYID_>{$k}<name> }'";
		my %m = $ec.quickLook(:typeID($k));

		# Filter, here -- seclev is easy...
		#	for markethubs, will need to get the station IDs:
		#	     Jita - 60003760
		#        Hek  - 60005686
		# 	    Amarr - 60008494
		#  	  Dodixie - 60011866
		#        Rens - 60004588
		# Tash-Murkon - 60001096
		#  Oursulaert - 60011740
		#        Agil - 60012412
		given $filter {
			when HUB {
				%m<quicklook><sell_orders><order> = 
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<station> == any(@hubs); }

				%m<quicklook><buy_orders><order> = 
					%m<quicklook><buy_orders><order>.grep: 
						{ $_<station> == any(@hubs); }
			}

			when REGION {
				%m<quicklook><sell_orders><order> = 
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<region> == $region; }

				%m<quicklook><buy_orders><order> = 
					%m<quicklook><buy_orders><order>.grep: 
						{ $_<region> == $region; }
			}

			when STATION {
				%m<quicklook><sell_orders><order> = 
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<station> == $station; }

				%m<quicklook><buy_orders><order> = 
					%m<quicklook><buy_orders><order>.grep: 
						{ $_<station> == $station; }
			}

			when SECLEV_GT {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> >= $seclev; }

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> >= $seclev; }
			}

			when SECLEV_LT {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> <= $seclev; }

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> <= $seclev; }
			}

			when SECLEV_EQ {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> == $seclev; }

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep: 
						{ $_<security> == $seclev; }
			}

			default {
				# No Op
			}
		}

		# Sort from cheapest to highest for sell orders.
		%market{$k}<sell> = %m<quicklook><sell_orders><order>.sort: { 
			$^a<price> <=> $^b<price> 
		};

		# Sort from highest to lowest for buy order.
		%market{$k}<buy> = %m<quicklook><buy_orders><order>.sort: { 
			$^b<price> <=> $^a<price> 
		};
	}
}

sub resolveFitPricing {
	my %cart;

	for %fit<_BYID_>.keys -> $k {
		my $count = %fit<_BYID_>{$k}<count>;
		my $idx = 0;
		while ($count > 0) {
			my $o = {
				count => 
					%market{$k}<sell>[$idx]<vol_remain> > $count 
					?? 
					$count !! %market{$k}<sell>[$idx]<vol_remain>,
				unit_price  => %market{$k}<sell>[$idx]<price>,
				station     => %market{$k}<sell>[$idx++]<station_name>
			};
			$o<subtotal> = $o<unit_price> * $o<count>;
			%cart{%fit<_BYID_>{$k}<name>}.push: $o;
			$count -= $o<count>;
		}
	}

	%cart;
}

# cw: Really need a module to say "comma-ize this number"
sub commaize($_v) {
	my $decimal = $_v ~~ / '.' / ?? $_v.subst(/ \d+ '.'/, '') !! '0';
	my $v = $_v.Int;
	"{$v.flip.comb(3).join(',').flip}.{$decimal}"
}

sub MAIN (:$filename!, :$sqlite) {
	my $sq_file = $sqlite || 'Eve_Static.sqlite3';
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
	retrieveMarketData;
	#dd %market;

	my %cart = resolveFitPricing;
	my $total = 0;
	for %cart.keys -> $k {
		say "$k:";
		for @(%cart{$k}) -> $o {
			say "\t{$o<station>.substr(0, 40)}\t\t$o<count>\t{commaize($o<unit_price>)}\t{commaize($o<subtotal>)}";
			$total += $o<subtotal>;
		}
	}

	say "TOTAL INVOICE: {commaize($total)} ISK";
}
