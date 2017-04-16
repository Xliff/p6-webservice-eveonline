#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;

my $sq_dbh;
my %inv;
my %bps;
my %mats;
my %market;
my @materials;

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

sub retrieveMarketData {
	my $ec = WebService::EveOnline::EveCentral.new;

	my Filter $filter = HUB;
	my $seclev = 0.5;
	my $region;
	my $station;
	# cw: Personal prefernce keeps me out of Jita and WTF is Agil?
	my @avoidance = (60003760, 60012412);

	for @materials -> $k {
		say "Retrieving Data for item '{ %inv{$k} }'";
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
						{
							$_<station> == any(@hubs)
							&&
							$_<station> !== any(@avoidance)
						}

				%m<quicklook><buy_orders><order> =
					%m<quicklook><buy_orders><order>.grep:
						{
							$_<station> == any(@hubs)
							&&
							$_<station> !== any(@avoidance)
						}
			}

			# cw: Consider how these could implement multiple values
			when REGION {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<region> == $region
							&&
							$_<station> !== any(@avoidance)
						}

				%m<quicklook><buy_orders><order> =
					%m<quicklook><buy_orders><order>.grep:
						{
							$_<region> == $region
							&&
							$_<station> !== any(@avoidance)
						}
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
						{
							$_<security> >= $seclev
							&&
							$_<station> !== any(@avoidance)
						}

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<security> >= $seclev
							&&
							$_<station> !== any(@avoidance)
						}
			}

			when SECLEV_LT {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<security> <= $seclev
							&&
							$_<station> !== any(@avoidance)
						}

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<security> <= $seclev
							&&
							$_<station> !== any(@avoidance)
						}
			}

			when SECLEV_EQ {
				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<security> == $seclev
							&&
							$_<station> !== any(@avoidance)
						}

				%m<quicklook><sell_orders><order> =
					%m<quicklook><sell_orders><order>.grep:
						{
							$_<security> == $seclev
							&&
							$_<station> !== any(@avoidance)
						}
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

# sub resolveFitPricing {
# 	my %cart;
#
# 	for %fit<_BYID_>.keys -> $k {
# 		my $count = %fit<_BYID_>{$k}<count>;
# 		my $idx = 0;
# 		while ($count > 0) {
# 			my $o = {
# 				count =>
# 					%market{$k}<sell>[$idx]<vol_remain> > $count
# 					??
# 					$count !! %market{$k}<sell>[$idx]<vol_remain>,
# 				unit_price  => %market{$k}<sell>[$idx]<price>,
# 				station     => %market{$k}<sell>[$idx++]<station_name>
# 			};
# 			$o<subtotal> = $o<unit_price> * $o<count>;
# 			%cart{%fit<_BYID_>{$k}<name>}.push: $o;
# 			$count -= $o<count>;
# 		}
# 	}
#
# 	%cart;
# }

# cw: Really need a module to say "comma-ize this number"
sub commaize($_v) {
	my $length = 18;
	my $decimal = $_v ~~ / '.' / ?? $_v.subst(/ \d+ '.'/, '') !! '00';
	$decimal ~= '0' if $decimal.chars < 2;

	my $v = $_v.Int;
	my $c = "{$v.flip.comb(3).join(',').flip}.{$decimal}";
	my $s = '';
	$s = ' ' x ($length - $c.chars) if $length > $c.chars;
	"$s$c";
}

sub openStaticDB($sqlite) {
	return if $sq_dbh;

	my $sq_file = $sqlite || 'Eve_Static.sqlite3';

	die "ERROR! Static eve data file not found at '$sq_file'!\n"
		unless $sq_file.IO.e && $sq_file.IO.f;

	$sq_dbh = DBIish.connect(
		'SQLite',
		:database($sq_file),
		:PrintError(True)
	)
	or
	die "Cannot open static Eve data!";
}

sub getIDs(Int $typeID) {
	say "Fetching blueprint data (type_id = $typeID) ...";
	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		SELECT typeId, activityId, materialTypeId, quantity
		FROM industryActivityMaterials
		WHERE typeID = ?
	STATEMENT

	$sth.execute($typeID);
	for @($sth.allrows) -> $r {
		my $item_req = [ $r[2], $r[3] ];
		if %bps{ $r[0] }.defined {
			%bps{ $r[0] }<materials>.push($item_req);
		} else {
			%bps{ $r[0] } = {
				materials => [ $item_req ]
			};
		}
	}
	$sth.finish;

	say "Fetching item data...";
	@materials = %bps{$typeID}<materials>.map: { $_[0] };
	$sth = $sq_dbh.prepare(qq:to/STATEMENT/);
		SELECT typeID, typeName
		FROM invTypes
		WHERE
			typeID IN ( { ('?' xx @materials.elems).join(',') } )
	STATEMENT

	$sth.execute(@materials);
	for @($sth.allrows) -> $r {
		%inv{$r[0]} = $r[1];
	}
}

multi sub MAIN (Str :$type_name!, Str :$sqlite) {
	openStaticDB($sqlite);

	my $bpname = $type_name;
	$bpname ~= " Blueprint" unless $bpname ~~ m:i/Blueprint$/;

	# cw: Best way to load ICU extension for proper non-ASCII operation, anyone?
	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		SELECT typeID
		FROM invTypes
		WHERE
			LOWER(typeName) = ?
  STATEMENT

	$sth.execute($bpname.lc);

	my $typeID;
	my @result = $sth.allrows;
	if @result.elems == 1 {
		$typeID = @result[0][0];
	} elsif @result.elems > 1 {
		# This should never happen, but we should balk if it does!
		die "ERROR! Got more than one item with that name, which should not happen!\n";
	} else {
		die "No item found matching '$bpname'.\n" unless $typeID.defined;
	}

	MAIN(:type_id($typeID), :$sqlite);
}

multi sub MAIN (Int :$type_id!, Str :$sqlite) {
	openStaticDB($sqlite);
	getIDs($type_id);
	retrieveMarketData;

	dd %market;
	say "Ready to wail on the market data...!";
	exit;

	my %cart; # Need to define cart!
	my $total = 0;
	my $mq = '=' x 40;
	say "\n{$mq}\nShopping List for item: {0}\n{$mq}";
	for %cart.keys -> $k {
		say "$k:";
		for @(%cart{$k}) -> $o {
			say "\t{$o<station>.substr(0, 40)}\t\t$o<count>\t{commaize($o<unit_price>)}\t{commaize($o<subtotal>)}";
			$total += $o<subtotal>;
		}
	}
	say "{$mq}\nTOTAL INVOICE: {commaize($total)} ISK\n{$mq}";
}
