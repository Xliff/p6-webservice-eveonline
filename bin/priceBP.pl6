#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;
use WebService::EveOnline::ESI::Market;

my $sq_dbh;
my %inv;
my %bp;
my %mats;
my %market;
my %options;
my %existing;
my $api;

enum Filter <
	NONE
	HUB
	REGION
	STATION
	SECLEV_GT
	SECLEV_LT
	SECLEV_EQ
	SECLEV_BT
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

#my $station = 60005686;  # Hek
#my $station = 60003760;  # Jita
#my $station = 60004588;  # Rens
# cw: Personal prefernce keeps me out of Jita and WTF is Agil?
#my @avoidance = (60003760, 60012412);

my @stations = (60005686, 60004588, 60003760);
my @avoidance;

# Print error without backtrace.
sub fatal($msg) {
	note($msg);
	exit;
}

sub quickLook(:$typeID) {
	return $api.quicklook(:$typeID) if $api ~~ WebService::EveOnline::EveCentral;

	sub getSecLev($id) {
		state %sec_cache;

		return %sec_cache<id> if %sec_cache<id>.defined;
		my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
			SELECT security
			FROM staStations
			WHERE stationID = ?
		STATEMENT

		$sth.execute($id);

		my @r = $sth.allrows;

		return unless @r.elems;
		%sec_cache{$id} = @r[0];
	}

	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		 SELECT regionID, stationID, stationName
		 FROM staStations
		 WHERE
			 stationID IN ( { @stations.join(',') } )
  STATEMENT

	$sth.execute;

	my @rows = $sth.allrows;
	my %stationName;
	my $data;

	%stationName{ $_[1] } = $_[2] for @rows;
	for @rows.map({ $_[0] }) -> $r {
		my $rawdata = $api.marketRegionOrders($r, :type_id($typeID));

		for @( $rawdata ) -> $rd {
			# cw: Bail unless we are looking. This blows filter data, but we can fix
			#     that, later.
			next unless $rd<location> == @stations.any;

			# Add aliases.
			$rd<station>    := $rd<location>;
			$rd<vol_remain> := $rd<volume_remain>;
			$rd<id>         := $rd<order_id>;

			# Add region and seclev to order.
			$rd<seclev>       = getSecLev($rd<location>);
			$rd<region>       = $r;
			$rd<station_name> = %stationName{$rd<location>};

			# Separate into buy and sell orders.
			if $rd<is_buy_order> {
				$data<quicklook><buy_orders><order>.push: $rd;
			} else {
				$data<quicklook><sell_orders><order>.push: $rd;
			}
		}
	}

	$data
}

# cw: For re-use, should use @type_ids, and %filter.
#     also, remove static @avoidance, as that will eventually be a part
#     of %filter.
sub retrieveMarketData {
	#my Filter $filter = HUB;
	my Filter $filter = STATION;
	my ($min_seclev, $max_seclev);
	my $seclev = 0.5;
	my $region;

	for %bp<materials>.map( { $_[0] } ) -> $k {
		say "\t{ %inv{$k} }...";

		# cw: Since Eve-Central is down at this time of writing, we are adding support
		#     for ESI. Too make things easier, we need to abstract away the difference.
		my %m = quickLook(:typeID($k));

		# Filter, here -- seclev is easy...
		#	for markethubs, will need to get the station IDs:
		#	       Jita - 60003760
		#        Hek  - 60005686
		# 	    Amarr - 60008494
		#  	  Dodixie - 60011866
		#        Rens - 60004588
		# Tash-Murkon - 60001096
		#  Oursulaert - 60011740
		#        Agil - 60012412

		# cW: This handling could be done better. Probably in the abstracted
		#     quicklook.
		if $api ~~ WebService::EveOnline::EveCentral {
			given $filter {
				when HUB {
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<station> == any(@hubs)
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><buy_orders><order> =
						%m<quicklook><buy_orders><order>.grep:
							{
								$_.defined &&
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
								$_.defined &&
									$_<region> == $region
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><buy_orders><order> =
						%m<quicklook><buy_orders><order>.grep:
							{
								$_.defined &&
									$_<region> == $region
									&&
									$_<station> !== any(@avoidance)
							}
				}

				when STATION {
					# cw: When done this way, HUB is just STATION with a predefined list.
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{ $_.defined && $_<station> == any(@stations); }

					%m<quicklook><buy_orders><order> =
						%m<quicklook><buy_orders><order>.grep:
							{ $_.defined && $_<station> == any(@stations); }
				}

				when SECLEV_GT {
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> >= $seclev
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> >= $seclev
									&&
									$_<station> !== any(@avoidance)
							}
				}

				when SECLEV_BT {
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> <= $min_seclev
									&&
									$_<security> >= $max_seclev
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> <= $min_seclev
									&&
									$_<security> >= $max_seclev
									&&
									$_<station> !== any(@avoidance)
							}
				}

				when SECLEV_LT {
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> <= $seclev
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> <= $seclev
									&&
									$_<station> !== any(@avoidance)
							}
				}

				when SECLEV_EQ {
					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> == $seclev
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><sell_orders><order> =
						%m<quicklook><sell_orders><order>.grep:
							{
								$_.defined &&
									$_<security> == $seclev
									&&
									$_<station> !== any(@avoidance)
							}
				}

				default {
					# No Op
				}
			}
		}

		# Sort function: ascending by prince, descending by quantity remaining.
		my $sorter = {
				     $^a<price> <=> $^b<price> ||
				$^b<vol_remain> <=> $^a<vol_remain>
		};

		# cw: These must be containerized, otherwise it returns a Seq, which will
		#     really fuck things up.
		%market{$k}<sell> = %m<quicklook><sell_orders><order>.sort( $sorter ).list;
		%market{$k}<buy>  = %m<quicklook><buy_orders><order>.sort(  $sorter ).list;
	}
}

# cw: -YY- This code should be moved into a module for reuse!!
sub getEveItem($lookup) {
	# cw: Best way to load ICU extension for proper non-ASCII operation, anyone?
	my $sth;
	given $lookup {
		when Str {
			 $sth = $sq_dbh.prepare(q:to/STATEMENT/);
				SELECT *
				FROM invTypes
				WHERE
					LOWER(typeName) = ?
		  STATEMENT

			$sth.execute($lookup.lc);
		}

		when Int {
			$sth = $sq_dbh.prepare(q:to/STATEMENT/);
				SELECT *
				FROM invTypes
				WHERE
					typeID = ?
		  STATEMENT

			$sth.execute($lookup);
		}

		default {
			# cw: Coding error, not execution, so use die()
			die "ERROR! Illegal parameter type in getEveItem: { $lookup.WHAT }";
		}
	}

	my $type_id;
	my @result = $sth.allrows(:array-of-hash);
	if @result.elems == 1 {
		return @result[0];
	} elsif @result.elems > 1 {
		# This should never happen, but we should balk if it does!
		fatal("ERROR! Got more than one item with that name, which should not happen!\n");
	}

	Nil;
}

sub getShoppingCart {
	my %cart;

	for %bp<materials>.list -> $i {
		my $k = $i[0];
		my $count := $i[1];
		my $minVol= $count / 10;
		my $idx = 0;

		while ($count > 0 && $idx < %market{$k}<sell>.elems ) {
			unless (%market{$k}<sell>[$idx]<vol_remain> // 1) > $minVol {
				say "Skipping order #{ %market{$k}<sell>[$idx++]<id> } for small volume...";
				next;
			}

			my $o = {
				count =>
					%market{$k}<sell>[$idx]<vol_remain> > $count
					??
					$count !! %market{$k}<sell>[$idx]<vol_remain>,
				unit_price  => %market{$k}<sell>[$idx]<price>,
				station     => %market{$k}<sell>[$idx++]<station_name>
			};

			$o<subtotal> = $o<unit_price> * $o<count>;
			%cart{ %inv{$k} }.push: $o;
			$count -= $o<count>;
		}
	}

	%cart;
}

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

	fatal("ERROR! Static eve data file not found at '$sq_file'!\n")
		unless $sq_file.IO.e && $sq_file.IO.f;

	$sq_dbh = DBIish.connect(
		'SQLite',
		:database($sq_file),
		:PrintError(True)
	)
	or
	fatal("Cannot open static Eve data!");
}

sub getIDs(Int $typeID) {
	my $me = '';
	$me = "(ME = { %options<me> * 100 }) " if %options<me>.defined;
	say "Fetching blueprint data {$me}(type_id = {$typeID}) ...";
	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		SELECT typeId, activityId, materialTypeId, quantity
		FROM industryActivityMaterials
		WHERE typeID = ?
	STATEMENT

	$sth.execute($typeID);
	for @($sth.allrows) -> $r {
		# Compute necessary amounts with ME reduction.
		my $needed = ($r[3] * (1 - (%options<me> // 0))).ceiling;
		$needed -= %inv{ $r[2] } if %inv{ $r[2] }.defined;
		%bp<materials>.push: [ $r[2], $needed ] if $r[1] == 1 && $needed > 0;
	}
	$sth.finish;

	say "Fetching item data...";
	my @materials = %bp<materials>.map: { $_[0] };
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

sub getExisting($inv) {
	say "Checking existing items...";
	for $inv.list -> $i {
		my ($item, $cnt) = $i.split(',');
		my $ei = getEveItem($item);

		fatal("Item { $item } not a valid Eve Inventory item!")
			unless $ei.defined;

		%inv{ $ei<typeID> } = $cnt;
	}
}

sub actualMAIN(:$type_id, :$bpname, :$sqlite, :%extras) {
	# Process slurped options.
	%options<me> = %extras<me> * 0.01 if %extras<me>.defined;

	# Process existing inventory, if specified.
	getExisting(%extras<existing>) if %extras<existing>.defined;

	openStaticDB($sqlite);
	getIDs($type_id);
	retrieveMarketData;

	my $item_name = $bpname;
	unless $item_name.defined {
		my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
			SELECT typeName
			FROM invTypes
			WHERE
				typeID = ?
	  STATEMENT

		$sth.execute($type_id);

		my @result = $sth.allrows;
		if @result.elems == 1 {
			$item_name = @result[0][0];
		} else {
			fatal("ERROR! Could not retrieve item name with type_id.");
		}
	}
	$item_name = $item_name.wordcase;

	sub mq($a) {
		say "{'=' x $a.chars}\n{$a}\n{'=' x $a.chars}";
	};

	my %cart = getShoppingCart;
	my $total = 0;
	my @leftovers = %bp<materials>.grep: { $_[1] > 0 };

	if %cart {
		mq("Shopping List for: {$item_name}");
		for %cart.keys -> $k {
			say "$k:";
			for @(%cart{$k}) -> $o {
				say "\t{$o<station>.substr(0, 40)}\t\t$o<count>\t{commaize($o<unit_price>)}\t{commaize($o<subtotal>)}";
				$total += $o<subtotal>;
			}
		}
		mq("{ @leftovers ?? 'INCOMPLETE' !! 'TOTAL' } INVOICE: {commaize($total)} ISK");
	}

	if (@leftovers) {
		say "\n\nWARNING! -- Quantity requirements not met for the following items: ";
		for @leftovers -> $i {
			say "\t{ %inv{ $i[0] } }: { $i[1] }":
		}
	}
}

multi sub MAIN (Str :$type_name!, Str :$sqlite, *%extras) {
	openStaticDB($sqlite);

	given (%extras<api> // 'esi').lc {
		when 'ec' | 'evecentral' {
			$api = WebService.EveOnline.EveCentral.new;
		}

		when 'esi' {
			my $sso = WebService.EveOnline.SSO.new(
				:scopes([ "esi-markets.structure_markets.v1" ])
			);
			$sso.getToken;
			$api = WebService.EveOnline.ESI.Market.new($sso, :latest);
		}
	}

	my $bpname = $type_name;
	$bpname ~= " Blueprint" unless $bpname ~~ m:i/Blueprint$/;

	my $item = getEveItem($bpname);
	fatal("No item found matching '$bpname'.\n") unless $item.defined;

	actualMAIN(:type_id( $item<typeID> ), :$bpname, :$sqlite, :%extras);
}

multi sub MAIN (Int :$type_id!, Str :$sqlite, *%extras) {
	actualMAIN(:$type_id, :$sqlite, :%extras);
}
