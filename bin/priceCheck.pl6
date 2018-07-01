#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;
use WebService::EveOnline::ESI::Assets;
use WebService::EveOnline::ESI::Market;
use WebService::EveOnline::SSO;
use WebService::EveOnline::Utils;

my (%inv, %manifest, %assets, %mats, %market, %options);
my ($api, $asset-api, $beatprice);

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

my %hubs = (
	Jita 		=> 60003760,       # Jita
	Hex 		=> 60005686,       # Hek
	Amarr		=> 60008494,       # Amarr
	Dodixie => 60011866,       # Dodixie
	Rens		=> 60004588,       # Rens
#	60001096,
#	60011740,
#	60012412,
);

#my $station = 60005686;  # Hek
#my $station = 60003760;  # Jita
#my $station = 60004588;  # Rens
# cw: Personal prefernce keeps me out of Jita and WTF is Agil?
#my @avoidance = (60003760, 60012412);

my @stations = (60005686, 60004588, 60003760);		# Jita.
#my @stations = (60005686, 60004588);							# NO JITA!
my @avoidance;

sub quickLook(:$typeID) {
	return $api.quicklook(:$typeID) if $api ~~ WebService::EveOnline::EveCentral;

	sub getSecLev($id) {
		state %sec_cache;

		return %sec_cache<id> if %sec_cache<id>.defined;
		my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
			SELECT security
			FROM Stations
			WHERE stationID = ?
		STATEMENT

		$sth.execute($id);

		my @r = $sth.allrows;

		return unless @r.elems;
		%sec_cache{$id} = @r[0];
	}

	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
		 SELECT r.regionID, r.regionName, s.stationID, s.stationName
		 FROM Stations AS s
		 INNER JOIN Regions AS r on r.regionID = s.regionID
		 WHERE
			 stationID IN ({ @stations.join(',') })
  STATEMENT

	$sth.execute;

	my @rows = $sth.allrows;
	my %stationName;
	my %regionName;
	my $data;

	for @rows {
		 %regionName{ $_[0] } = $_[1];
		%stationName{ $_[2] } = $_[3];
	}
	for %regionName.keys -> $r {
		say "\t\t...in { %regionName{ $r } } (#{ $r })";
		my $rawdata = $api.getRegionOrders(
			$r, :type_id($typeID.Int), :order_type('sell')
		);

		#dd $rawdata;

		for @( $rawdata<data> ) -> $rd {
			# cw: Bail unless we are looking. This blows filter data, but we can fix
			#     that, later.
			next unless $rd<location_id> == @stations.any;

			# Add aliases.
			$rd<station>    := $rd<location_id>;
			$rd<vol_remain> := $rd<volume_remain>;
			$rd<id>         := $rd<order_id>;

			# Add region and seclev to order.
			$rd<seclev>       = getSecLev($rd<station>);
			$rd<region>       = $r;
			$rd<station_name> = %stationName{$rd<station>};

			# Separate into buy and sell orders.
			if $rd<is_buy_order> {
				$data<quicklook><buy_orders><order>.push: $rd;
			} else {
				$data<quicklook><sell_orders><order>.push: $rd;
			}
		}
	}

	$data.Hash;
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

	for %manifest.keys.sort -> $k {
		say "\t{ %manifest{$k}<name> }...";

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
									$_<station> == any(%hubs.keys)
									&&
									$_<station> !== any(@avoidance)
							}

					%m<quicklook><buy_orders><order> =
						%m<quicklook><buy_orders><order>.grep:
							{
								$_.defined &&
									$_<station> == any(%hubs.keys)
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

	for %manifest.kv -> $k, $v {
		my $count := $v<count>;
		my $minVol= %options<minvol> // ($count * %options<minper>);
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
				station     => %market{$k}<sell>[$idx]<station_name>
			};

			$o<subtotal> = $o<unit_price> * $o<count>;
			%cart{ %inv{$k} }.push: $o;
			$count -= $o<count>;
			$idx++;
		}
	}

	%cart;
}

# cw: Really need a module to say "comma-ize this number"
sub commaize($_v) {
	my $length = 18;

	$_v ~~ / '.' (\d ** 2) /;
	my $decimal = $/[0];
	$decimal ~= '0' if $decimal && $decimal.chars < 2;

	my $v = $_v.Int;
	my $c = "{$v.flip.comb(3).join(',').flip}.{$decimal // '00'}";
	my $s = '';
	$s = ' ' x ($length - $c.chars) if $length > $c.chars;
	"$s$c";
}

sub getIDs(Int $typeID, $m = 1) {
	my $me = '';
	$me = "(ME = { %options<me> * 100 }) " if %options<me>.defined;
	say "Fetching blueprint data { $me }(type_id = { $typeID }) ...";

	# cw: Would it be worth it to cache any of this?
	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		SELECT typeId, activityId, materialTypeId, quantity
		FROM industryActivityMaterials
		WHERE typeID = ?
	STATEMENT

	$sth.execute($typeID);
	for @($sth.allrows) -> $r {
		# Compute necessary amounts with ME reduction.
		my $needed = ($r[3] * (1 - (%options<me> // 0))).ceiling;
		# cw: Old code that just happened to not break anything?
		#$needed -= $r[3] if %inv{ $r[2] }.defined;
		if $r[1] == 1 {
			%manifest{ $r[2] } //= {
				name		=> %inv{ $r[2] },
				count   => 0,
			};
			%manifest{ $r[2]  }<count> += $needed * $m;
		}
	}
	$sth.finish;
}

sub getAssets($inv, *%extras) {
	my (%char, %corp);

	# cw: This could actually be reusable. But where to put it?
	my @bad_location_flags = <
		AutoFit CorpseBay DroneBay FighterBay
		FighterTube0 FighterTube1 FighterTube2 FighterTube3 FighterTube4
		LoSlot0 LoSlot1 LoSlot2 LoSlot3 LoSlot4 LoSlot5 LoSlot6 LoSlot7
		MedSlot0 MedSlot1 MedSlot2 MedSlot3 MedSlot4 MedSlot5 MedSlot6 MedSlot7
		HiSlot0 HiSlot1 HiSlot2 HiSlot3 HiSlot4 HiSlot5 HiSlot6 HiSlot7
		RigSlot0 RigSlot1 RigSlot2 RigSlot3 RigSlot4 RigSlot5 RigSlot6 RigSlot7
		SubSystemBay SubSystemSlot0 SubSystemSlot1 SubSystemSlot2 SubSystemSlot3 SubSystemSlot4
		SubSystemSlot5 SubSystemSlot6 SubSystemSlot7
		Implant Wardrobe
	>;

	if %extras<inv> eq <char all>.any {
		say "Checking character assets...";
		%assets.append: $asset-api.getCharacterAssets(%inv.keys);
	}

	if %extras<inv> eq <corp all>.any {
		say "Checking corporation assets...";
		%assets.append: $asset-api.getCorporationAssets(%inv.keys);
	}

	# cw: How are we going to handle existing assets?
}

sub actualMAIN(*@items, :$sqlite, :%extras) {
	if %extras<beatprice>.defined {
		die "--beatprice option must be a positive number!"
			unless 	%extras<beatprice>.Num ~~ Num &&
							%extras<beatprice> > 0;

		$beatprice = %extras<beatprice>;
	}

	# Open statid data...
	$sq_dbh = openStaticDB($sqlite);

	my $sso;
	given (%extras<api> // 'esi').lc {
		when 'ec' | 'evecentral' {
			$api = WebService::EveOnline::EveCentral.new;
		}

		when 'esi' {
			$sso = WebService::EveOnline::SSO.new(
				:scopes(<
					esi-markets.structure_markets.v1
					esi-assets.read_assets.v1
					esi-assets.read_corporation_assets.v1
				>),
				:realm('ESI'),
				:section('priceCheck')
			);
			$sso.getToken;
			$api = WebService::EveOnline::ESI::Market.new(:$sso, :type<latest>);
		}
	}

	my $asset-api;
	if %extras<inv> {
		die "--inv option must be one of: char, corp or all."
			unless %extras<inv> eq <char corp all>.any;
		$asset-api = WebService::EveOnline::ESI::Assets.new(:$sso, :type<latest>)
	}
	# Process slurped options.
	%options<me> = %extras<me> * 0.01 if %extras<me>.defined;

	die "--minvol and --minper options cannot be used together"
		if %extras<minper>.defined && %extras<minvol>.defined;

	if %extras<minvol>.defined {
		die "--minvol must be an integer representing minimum order quantity"
			unless %extras<minvol> ~~ Int;
		%options<minvol> = %extras<minvol>;
	}

	if %extras<minper>.defined {
		die qq:to/DIE/
--minper must be a integer from 1 to 100 representing the minimum PERCENTAGE
  of each requested item. Any orders less than this value are not considered.
DIE
		unless %extras<minper> ~~ Int && 1 <= %extras<minper> <= 100;
	}
	%options<minper> = (%extras<minper> / 100) // 0.01;

	# Preload the entire item id/name database;
	# May want to rethink this if it takes too long.
	say "Fetching item data...";
	{
		my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
			SELECT typeID, typeName
			FROM invTypes
		STATEMENT

		$sth.execute();
		for @($sth.allrows) -> $r {
			%inv{ $r[0] } = $r[1];
		}
		$sth.finish;
	}

	# cw: We must now populate the manifest from the listed arguments.
	for @items -> $i {
		my @f = $i.split(':');
		my $count = 1;
		my $dd = False;

		if @f[* - 1].Int ~~ Int {
			$count = @f[* - 1];
		}
		my $item = getEveItem(@f[0]);

		# If type_name then do:
		#   1) Get item from database using name.
		#      a) If item does not exist, die.
		#		2) Check if item has a blueprint
		#   3) If --drilldown is not specified, STOP
		#   4) Get item BLUEPRINT from database
		#   5) Pass blueprint data to getIDs
		# EVENTUALLY
		#   - Allow type_name to take comma separated list, following above rules.
		#     I am TOO TIRED to do it now.

		# If type_id do:
		#   1) Get item from database using id
		#      a) If item does not exist, die.
		#   2) Go to type_name, step 2.

		fatal(
			"No item found matching {do given $i {
				when Int { "ID #{$i}" }
				when Str { "'{$i}'"   }
			}}\n"
		) unless $item.defined;

		# cw: Not as elegant as I had originally thought.
		if @f[1] {
			if @f[1] eq 'B' {
				$dd = True;
			} else {
				die "Unknown parameter specification '$1'"
					unless @f[1].Int ~~ Int && @f.elems == 2;
				$count = @f[1].Int if @f[1].Int ~~ Int;
			}
		}

		if $dd || %extras<drilldown> {
			getIDs($item<bpID>, $count);
		} else {
			%manifest{ $item<typeID> } //= {
				name  => %inv{ $item<typeID> },
				count => 0,
			};
			%manifest{ $item<typeID> }<count> += $count;
		}
	}

	# Process existing inventory, if specified.
	getAssets(%extras<inv>) if %extras<inv>.defined;

	retrieveMarketData;

	sub mq($a) {
		my $m = "{'=' x $a.chars}";
		say "{$m}\n{$a}\n{$m}";
	};

	my %cart = getShoppingCart;
	my $total = 0;
	my @leftovers = %manifest{
		%manifest.keys.grep({ %manifest{$_}<count> > 0 })
	};

	if %cart {
		# Yes, MONDAY... I cheated.
		mq("Shopping List");

		for %cart.keys.sort -> $k {
			say "$k:";
			for @(%cart{$k}) -> $o {
				# cw: A better way than writing this out as a string.
				#
				# NOTE: The need for Nil checks should not be needed here and will
				#       go away as soon as the problem is squashed.
				next unless [&&](
					$o<station>, $o<count>, $o<unit_price>, $o<subtotal>
				);

				(
					'',
					$o<station>.substr(0,40),
					$o<count>,
					commaize($o<unit_price>),
					commaize($o<subtotal>)
				).join("\t").say;

				$total += $o<subtotal>;
			}
		}
		mq("{ @leftovers ?? 'INCOMPLETE' !! 'TOTAL' } INVOICE: {commaize($total)} ISK");
		if $beatprice.defined {
			my $diff = $total - $beatprice;
			my $per = ($diff / $total) * 100;
			my $dir = $diff > 0 ?? 'more' !! 'less';
			(
				"Price is",
				commaize($diff.abs),
				"ISK ({ $per.round.fmt("%d") }%)",
				"{ $dir } than the specified price."
			).join(' ').say;
		}
	}

	if @leftovers {
		say "\n\nWARNING! -- Quantity requirements not met for the following items: ";
		for @leftovers -> $i {
			say "\t{ $i<name> }: { $i<count> }":
		}
	}
}

use nqp;
sub USAGE {
	  # cw: Don't know why the extra spacings are needed. Editor?
		say nqp::getlexcaller(q|$*USAGE|) ~ qq:to/USAGE/;
\n
Extras:

  --api         Choose which market API to use. Legitimate values are:
                              ESI - CCP's ESI
                              EC  - EveCentral

  --beatprice   Set the "price to beat", If specified, the program will
                compare the computed manifest price to this price and
                will display the difference.

  --drilldown   If this parameter is specified, then any blueprints in the
                item list will be added to the search manifest.

  --inv         Check inventory for necessary items. Legitimate values are:

      char - Check only your character's inventory
			corp - Check only your corporation's inventory
			       (Requires proper corporation access)
		  all  - Check all inventories that you have access to

  --minvol   Sets the minimum volume for each order. Default value is 1% of the
	           requested amount

	--minper   Sets the minimum volume (by percentage) of each order. Default
	           value is 1% of the requested amount.

	Shortcuts for item list:
	Adding :B to the end of the item implies you want a blueprint.
	Adding :<#> to the end of the item implies you want that number of items.

	So:
	   Typhoon:B:100 Zydrine:10000
   Implies that you want a manifest of enough materials for 100 Typhoons and
   an additional 10000 Zydrine

   Additionally, this will also work with type IDs, SO:
     644:B:100 39:10000
   Will accomplish the same thing.

   Please note that item names with embedded spaces must be surrounded by
   quotes.
USAGE
}

sub MAIN (*@items, Str :$sqlite, *%extras) {
  if !@items.elems {
		USAGE;
		exit;
	}
	actualMAIN(@items, :$sqlite, :%extras);
}
