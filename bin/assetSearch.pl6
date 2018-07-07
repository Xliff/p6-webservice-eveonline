#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::SSO;
use WebService::EveOnline::Utils;
use WebService::EveOnline::Data::Misc;
use WebService::EveOnline::ESI::Assets;

my (%inv, %manifest, %assets, $asset-api);

my @valid-filters = <
	is_singleton
	item_id
	item_name
	location_flag
	location_id
	location_type
	quantity
	type_id
>;

my @additional-bp-filters = <
	material_efficiency
	time_efficiency
	runs
>;

my @additional-filters = <
  systems
  system-ids
  regions
  region-ids
  station-ids
>;

my @aliases = <item-name name names te me>;

sub compareQuantity($num, $l) {
	do given $l[0] {
		when '=' { $num == $l[1]; }
		when '>' { $num  > $l[1]; }
		when '<' { $num  < $l[1]; }
	}
}

sub checkLocation($t, @list, $i) {
	my @loc = do given $t {
		when 'systems' | 'regions' {
			@list.grep({
				[&&](
					$i<xMin> <= $_<x> <= $i<xMax>,
					$i<yMin> <= $_<y> <= $i<yMax>,
					$i<zMin> <= $_<z> <= $i<zMax>
				);
			});
		}

		when 'stations' {
			@list.grep({
				[&&](
					$_<x> == $i<x>,
					$_<y> == $i<y>,
					$_<z> == $i<z>
				)
			});
		}
	}
	return False unless +@loc;
	$_<location> = $i;
	True;
}

sub findItems(%filters, $searches) {
	my @location-based = %filters<ADDITIONAL>.flat;
	%filters<ADDITIONAL>:delete;

	my $sso = WebService::EveOnline::SSO.new(
		:scopes(<
		  esi-assets.read_assets.v1
		  esi-assets.read_corporation_assets.v1
			esi-corporations.read_blueprints.v1
			esi-characters.read_blueprints.v1
		>),
	  :realm<ESI>,
	  :section<assetSearch>
	);

	# Add in :type, later.
	my $asset-api = WebService::EveOnline::ESI::Assets.new($sso);

	my %found-items = ( char => [], corp => [] );
	my @filtered = %filters.keys;
	for $searches<what>.List -> $w {
		my $grepSub = sub (*@a) {
			for @filtered -> $k {
				return False unless %filters{$k}(@a[0]);
			}
			True;
		};

		given $w {
			when 'asset' {
				@filtered .= grep(* ne @additional-bp-filters.all);

			  %found-items<char>.append: $asset-api.getCharacterAssets(
					:filter($grepSub)
				) if $searches<where>.any eq <all char>.any;
				%found-items<corp>.append: $asset-api.getCorporationAssets(
					:filter($grepSub)
				) if $searches<where>.any eq <all corp>.any;
			}

			when 'bp' {
				%found-items<char>.append: $asset-api.getCharacterBlueprints(
					:filter($grepSub)
				) if $searches<where>.any eq <all char>.any;
				%found-items<corp>.append: $asset-api.getCorporationBlueprints(
					:filter($grepSub)
				) if $searches<where>.any eq <all corp>.any;
			}
		}
	}

	# Implement location based post-processing, here.
	@location-based.gist.say;
	if +@location-based {
		my %locations = ( char => [], corp => [] );
		for <char corp> -> $c {
			%found-items{$c} = arrayToHash( %found-items{$_}, 'item_id' );
			%locations{$c} = do given $c {
				when 'char' {
					arrayToHash(
						$asset-api.getCharacterAssetLocations(%found-items{$c}.keys.Array),
						'item_id'
					)
			  }
				when 'corp' {
					arrayToHash(
						$asset-api.getCorporationAssetLocations(%found-items{$c}.keys.Array),
						'item_id'
					)
				}
			}
			for %locations{$c}.keys -> $k {
				if %found-items{$c}{$k}:exists {
					%found-items{$c}{$k}<item_id>:delete;
					%found-items{$c}{$k}.append: %locations{$c}{$k}.pairs;
				}
			}

			# location data is now with the item. Now need to filter. Turns result back into an array.
			# Note that location-based searching uses inverse logic than asset-based.
			%found-items{$c} = %found-items{$c}.kv.grep({
				for @location-based -> $l {
					return True if $l.value( $_.value );
				}
				False;
			});
		}
	}

	%found-items;
}

sub showResults(%items) {
	%items.gist.say;
}

sub resolveItemNames(*@names) {
	my $sql = qq:to/STATEMENT/;
	  SELECT typeID
	  FROM invTypes
	  WHERE typeName IN (
			{ @names.map({ "'{ $_ }'" }).join(',') }
	  )
	STATEMENT

	my $sth = $sq_dbh.prepare($sql);
	$sth.execute();
	$sth.allrows().flat;
}

sub resolveRegionNames(@names, @regions) {
	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
	  SELECT s.*
	  FROM SolSystems s
		INNER JOIN Regions r ON r.regionID = s.regionID
	  WHERE
			r.regionName IN (
				{ @names.map( "'{ * }'" ).join(',') }
		  )
			OR
			r.regionID in (
			  { @regions.join(',') }
			)
	STATEMENT

	$sth.execute();
	arrayToHash(
		$sth.allrows(:array-of-hash),
		'solarSystemID'
	);
}

sub resolveSystemNames(@names) {
	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/);
	  SELECT *
	  FROM SolSystems
	  WHERE solarSystemName IN (
			{ @names.map( "'{ * }'" ).join(',') }
	  )
	STATEMENT

	$sth.execute();
	arrayToHash(
		$sth.allrows(:array-of-hash),
		'solarSystemID'
	);
}

sub MAIN(
	:$sqlite,
	:$corp,
	:$char,
	:$blueprints,
	:$bp,
	:$bponly,
	*%extras
) {
	my regex c { ',' \s* };

	my @valid-options = (
		|@valid-filters,
		|@additional-bp-filters,
		|@additional-filters,
		|@aliases
	);

	my $search = {
		where => 'char',
		what  => [ 'asset' ]
	};
	$search<where> = 'corp' if $corp.defined && $corp;
	$search<where> = 'char' if $char.defined && $char;
	$search<where> = 'all'  if [&&]($corp.defined, $char.defined, $corp, $char);

	# cw: Would blueprints without a filter be a useful option?
	#     (Probably for newbies, but....)
	$search<what>.push: 'bp'   if $blueprints || $bp;
	$search<what> = [ 'bp' ]   if $bponly;

	if
		! +%extras
		||
		%extras.keys.all ne @valid-options.any
	{
		USAGE;
		exit;
	}

	my (%filters, @location_flags, @systems, @regions);
	my (@type_ids, @location_types, @names, $ql);

	if %extras<location_flag>.defined {
		@location_flags = %extras<location_flag>.split(/<c>/);
		die "Invalid location flag specified."
			unless @location_flags.all eq @valid-location-flags.any;
	}

	if %extras<location_type>.defined {
		@location_types = %extras<location_type>.split(/<c>/);
		die "Invalid value for --location_type\n"
		 	unless @location_types.all eq @valid-location-types.any;
	}

	@type_ids = %extras<type_id>.split(/<c>/) if %extras<type_id>.defined;
	if [||] (
		%extras<item_name>.defined,
		%extras<item-name>.defined,
		%extras<names>.defined,
		%extras<name>.defined;
	) {
		$sq_dbh = openStaticDB($sqlite);

		# There is a lot of work being done, here.
		@type_ids.append: resolveItemNames(
			(
				|( %extras<item_name> // () ).split(/<c>/),
				|( %extras<item-name> // () ).split(/<c>/),
				|( %extras<names>     // () ).split(/<c>/),
				|( %extras<name>      // () ).split(/<c>/)
			).unique.grep( *.chars )
		);
	}

	@systems.append: %extras<system_ids>.split(/<c>/) if %extras<system_id>.defined;
	@systems.append: %extras<system-ids>.split(/<c>/) if %extras<system-id>.defined;
	@systems.append: resolveSystemNames(
		|( %extras<systems>.split(/<c>/) )
	) if %extras<systems>.defined;

	# Even though it is a system-based search, we still need this to be separate
	# for error-checking purposes.
	@regions.append: %extras<region_ids>.split(/<c>/) if %extras<region_ids>.defined;
	@regions.append: %extras<region-ids>.split(/<c>/) if %extras<region-ids>.defined;
	@regions.append: resolveRegionNames(
		%extras<regions>.split(/<c>/),
		@systems
	) if %extras<regions>.defined;

	my @stations;
	@stations.append: %extras<station-ids>.split(/<c>/) if %extras<station-ids>.defined;
	@stations.append: %extras<station_ids>.split(/<c>/) if %extras<station_ids>.defined;

	{
		my $checkQl = sub {
			die "Invalid quantity specification for $^a."
				unless $^b ~~ /^ (<[ > < = ]>?) (\d+) $/;
			[ ($/[0] // '='), $/[1] ];
		}

		if %extras<quantity>.defined {
			my $ql = $checkQl('--quantity', %extras<quantity>);
			%filters.push: {
				quantity => { compareQuantity($_<quantity>, $ql) }
			};
		}

		if %extras<runs>.defined {
			my $ql = $checkQl('--runs', %extras<runs>);
			%filters.push: {
				runs => { compareQuantity($_<runs> , $ql); }
			};
		}

		if %extras<te>.defined {
			my $ql = $checkQl('--te', %extras<te>);
			%filters.push: {
				time_efficiency => { compareQuantity($_<te> , $ql); }
			};
		}

		if %extras<time_efficiency>.defined {
			my $ql = $checkQl('--time_efficiency', %extras<time_efficiency>);
			%filters.push: {
				time_efficiency => { compareQuantity($_<time_efficiency> , $ql); }
			};
		}

		if %extras<me>.defined {
			my $ql = $checkQl('--me', %extras<me>);
			%filters.push: {
				material_efficiency => { compareQuantity($_<me> , $ql); }
			};
		}

		if %extras<material_efficiency>.defined {
			my $ql = $checkQl('--material_efficiency', %extras<material_efficiency>);
			%filters.push: {
				material_efficiency => { compareQuantity($_<material_efficiency> , $ql); }
			};
		}
	}

	if %extras<is_singleton>.defined {
		die "Invalid value for --is_singleton.\n"
			unless %extras<is_singleton>.Str.lc eq <1 0 true false>.any;

		%filters.push: {
			is_singleton => {
				$_<is_singleton>.Bool == %extras<is_singleton>.Bool
			}
		}
	}

	if %extras<item_id>.defined {
		die "Invalid value for --item_id\n"
			unless %extras<item_id> ~~ Int;

		%filters.push: {
			item_id => {
				$_<item_id> == %extras<item_id>.split(/<c>/).map( *.Int ).any
			}
		}
	}

	%filters.push: {
		type_id => { $_<type_id> == @type_ids.any }
	} if +@type_ids;

	%filters.push: {
		location_type => { $_<location_type> eq @location_types.any }
	} if +@location_types;

	%filters.push: {
		location_flag => { $_<location_flag> eq @location_flags.any }
	} if +@location_flags;

	if %extras<is-original>.defined || %extras<is-copy>.defined {
		die "Cannot specify --is-original or --is-copy at the same time."
			if %extras<is-original>.defined && %extras<is-copy>.defined;

		die "Invalid value for --is-original.\n"
			unless
				%extras<is-original>.defined &&
				%extras<is-original>.Str.lc eq <1 0 true false>;

		die "Invalid value for --is-copy.\n"
			unless
				%extras<is-copy>.defined &&
				%extras<is-copy>.Str.lc eq <1 0 true false>;

		%filters.push: {
			is-original => {
			  (%extras<is-original> // !%extras<is-copy>) ??
					($_<quantity> == -1)
					!!
					($_<quantity> == -2)
			}
		};
	}

	my @loc-search = (+@systems, +@regions, +@stations);
	die "Too many location based searches specified. Please choose a single type of location search."
		unless @loc-search.one || @loc-search.none;

	# system
	%filters<ADDITIONAL> = [];
	%filters<ADDITIONAL>.push: {
		system-ids => { checkLocation('systems', @systems, $_) }
	} if +@systems;

  # region => list of systems
	%filters<ADDITIONAL>.push: {
		region-ids => { checkLocation('regions', @regions, $_) }
	} if +@regions;

	# station
	%filters<ADDITIONAL>.push: {
		stations  => { checkLocation('stations', @stations, $_) }
	} if +@stations;

	#DEBUG#
	%filters.gist.say;

	showResults( findItems(%filters, $search) );
}

use nqp;
sub USAGE {
	  # cw: Don't know why the extra spacings are needed. Editor?
		say nqp::getlexcaller(q|$*USAGE|) ~ qq:to/USAGE/;


REQUIRED
  --sqlite         Location of static data file. Program will attempt to
                   autodetect this file, but if it is not named one of:
                      ./Eve_Static.sqlite3
                      ./data/Eve_Static.sqlite3
                      ../data/Eve_Static.sqlite3
                    Then the file can be specified using this option.

SEARCH TYPES
  --corp            Search corporation assets
  --char            Search character assets [default]

	--bp
  --blueprints      Add blueprints into search results
  --bponly          ONLY search for blueprints

EXTRA OPTIONS

  ASSET FILTERS
    --is_singleton
    --item_id         Comma separated list of item_ids
    --location_flag
    --location_id     Numeric location ID
    --location_type
    --type_id         Comma separated list of type_ids
    --quantity        Match the number of items in a stack. Quantity logic can be
                      specified by the following methods:
                        >[num] - At least #num items in stack
                        <[num] - No more than #num items in stack
                        =[num] - Exactly #num items in stack
                        [num]  - Same as above.
                      Where [num] is a numeric value.

    --name(s)
    --item-name
    --item_name       Comma separated list of item names, if any argument includes
                      spaces, surround the entire argument in quotes.

  BLUEPRINT FILTERS
    --is-copy         If blueprint is a copy
    --is-original     If blueprint is original
    --runs            Matches number of runs left on a blueprint. Uses quantity
                      logic matching. See --quantity.
		--te							Matches Time Efficiency. Also uses quantity logic,
                      See --quantity. (Can also be specified as
											--time_efficiency)
		--me              Matches Material Efficiency. Also uses quantity logic,
                      See --quantity. (Can also be specified as
											--material_efficiency)

  LOCATION-BASED SEARCH TYPES [Select only ONE type]:
    --systems         Comma separated list of system names. If any system name
                      has a space, the entire list must be quoted.
    --system_ids
    --system-ids      Comma separated list of system IDs

    -OR-

    --regions         Comma separated list of region names. If any region name
                      has a space, the entire list must be quoted.
    --region_ids
    --region-ids      Comma separated list of region ids

    -OR-

    --station-ids     Comma separated list of station ID
USAGE

}
