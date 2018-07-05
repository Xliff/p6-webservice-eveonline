#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::ESI::Assets;

my (%inv, %manifest, %assets)
my ($asset-api, $sq_dbh);

my @valid-filters = <
	is_singleton
	item_id
	item_name
	item-name
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
	my @location-based = %filters<ADDITIONAL>;
	%filters<ADDITIONAL>:delete;

	my $sso = WebService::EveOnline::ESI::SSO.new(
		:scopes(<
		  esi-assets.read_assets.v1
		  esi-assets.read_corporation_assets.v1
		>),
	  :realm<ESI>,
	  :section<assetSearch>
	);

	# Add in :type, later.
	my $asset-api = WebService::EveOnline::ESI::Assets($sso);

	my %found-items = { char => [], corp => [] };
	for $searches<what> -> $w {
		@filtered = %filters.keys;

		my $grepSub = sub {
			for @filtered -> $k {
				return False unless %filters{$k}($_);
			}
			True;
		};

		given $w {
			when 'asset' {
				@filtered.keys .= grep(* ne @additional-bp-filters.all);

			  %found-items<char>.append: $asset-api.getCharacterAssets(:filter($grepSub))
					if $searches<where>.any eq <all char>.any;
				%found-items<corp>.append: $asset-api.getCorporationAssets(:filter($grepSub))
					if $searches<where>.any eq <all corp>.any;
			}

			when 'bp' {
				@found-items<char>.append: $asset-api.getCharacterBlueprints(:filter($grepSub))
					if $searches<where>.any eq <all char>.any;
				@found-items<corp>.append: $asset-api.getCorporationBluePrints(:filter($grepSub))
					if $searches<where>.any eq <all corp>.any;
			}
		}
	}

	# Implement location based post-processing, here.
	if +@location-based {
		sub arrayToHash($a) {
			$a.map({ $_<item_id> => $_ }).Hash
		}

		my %locations = { char => [], corp => [] };
		for <char corp> -> $c {
			%found-items{$c} = arrayToHash( %found-items{$_} );
			%locations{$c} = do given $c {
				when 'char' {
					arrayToHash( $asset-api.getCharacterAssetLocations(%found-items{$c}.keys) )
			  }
				when 'corp' {
					arrayToHash( $asset-api.getCorporationAssetLocations(%found-items{%c}.keys) )
				}
			}
			for %locations{$c}.keys -> $k {
				if %found-items{$c}{$k}:exists {
					%found-items{$c}{$k}<item_id>:delete;
					%found-items{$c}{$k}.append: $locations{$c}{$k}.pairs;
				}
			}

			# location data is now with the item. Now need to filter. Turns result back into an array.
			%found-items{$c} = %found-items{$c}.kv.grep({
				for @location-based -> $l {
					return False unless $l.value( $_.value );
				}
				return True;
			});
		}

	}

	@found-items;
}

sub showResults(@items) {
	# NYI
}

sub resolveItemNames(*@names) {
	my $sth = $sq_dbh.prepare(qq:to/STATEMENT/)
	  SELECT typeID
	  FROM invTypes
	  WHERE typeName IN (
			{ @names.map( "'{ * }'" ).join(',') }
	  )
	STATEMENT

	$sth.execute();
	$sth.allrows().map( *[0] );
}

sub MAIN(
	:$sqlite,
	:$corp,
	:$char,
	:$blueprints,
	:$bponly,
	*%filters
) {
	my @valid-options = (|@valid-filters, |@additional-bp-filters, |@additional-filters);

	my $search = {
		where => 'char',
		what  => [ 'asset' ]
	}
	$search<where> = 'corp' if $corp.defined && $corp;
	$search<where> = 'char' if $char.defined && $char;
	$search<where> = 'all'  if [&&]($corp.defined, $char.defined, $corp, $char);
	$search<what>.push: 'bp'   if $blueprints;
	$search<what> = [ 'bp' ]   if $bponly;

	if %filters.keys.all ne @valid-options.any {
		USAGE;
		exit;
	}

	my @filters;
	if %filters<location_flag>.defined {
		@location_flags = %filters<location_flag>.split(/,\s*/);
		die "Invalid location flag specified."
			unless @location_flags.all eq @valid-location-flags.any;
	}

	my @type_ids, @location_types, $ql;

	@type_ids = %filters<type_id>.split(/,\s*/);

	if %filters<item_name>.defined || %filters<item-name>.defined {
		$sq_dbh = openStaticDB($sqlite);
		@type_ids = resolveItemNames(
			|( %filters<item_names>.split(/,\s*/) ),
			|( %filters<item-names>.split(/,\s*/) )
		);
	}

	{
		my $checkQl = sub($f) {
			die "Invalid quantity specification."
				unless %filters<quantity> ~~ /^ (<[ > < = ]>?) (\d+) $/;
			[ ($/[0] // '='), $/[1] ];
		}

		if %filters<quantity>.defined {
			my $ql = $checkQl(%filters<quantity>);
			%filters.push: {
				quantity => { compareQuantity($_<quantity>, $ql) }
			};
		}

		if %filteres<runs>.defined {
			my $ql = $checkQl(%filters<runs>);
			%filters.push: {
				runs => { compareQuantity($_<runs> , $ql); }
			};
		}
	}

	%filters.push: {
		is_singleton => {
			$_<is_singleton>.Bool == %filters<is_singleton>.Bool
		}
	} if %filters<is_singleton>.defined;

	%filters.push: {
		item_id => {
			$_<item_id> == %filters<item_id>.split(/,\s*/).map( *.Int ).any
		}
	} if $filters<item_id>.defined;

	%filters.push: {
			type_id => { $_<type_id> == @type_ids.any }
	} if +@type_ids;

	%filters.push: {
		location_type => { $_<location_type> == @location_types.any }
	} if +@location_types;

	%filters.push: {
		location_flag => { $_<location_flag> = @location_flags.any }
	} if +@location_flags;

	# cw: XXX - TODO: This will need to be split up into asset location types.
	#     These searches may all need to be mutually exclusive as well.

	# system
	%filters<ADDITIONAL>.push: {
		system-ids => { checkLocation('systems', @systems, $_) }
	} if +@systems;

  # other
	%filters<ADDITIONAL>.push: {
		region-ids => { checkLocation('regions', @regions, $_) }
	} if +@regions;

	# station
	%filters<ADDITIONAL>.push: {
		stations   => { checkLocation('stations', @stations, $_) }
	} if +@stations;

	showResults( findItems(%filters, $search) );
}

use nqp;
sub USAGE {
	  # cw: Don't know why the extra spacings are needed. Editor?
		say nqp::getlexcaller(q|$*USAGE|) ~ qq:to/USAGE/;

SEARCH TYPES
	--corp					  Search corporation assets
	--char						Search character assets [default]

ASSET FILTERS
	--is_singleton
	--item_id					Comma separated list of item_ids
	--location_flag
	--location_id			Numeric location ID
	--location_type
	--type_id					Comma separated list of type_ids
	--quantity				Match the number of items in a stack. Quantity logic can be
	                  specified by the following methods:
                      >[num] - At least #num items in stack
											<[num] - No more than #num items in stack
											=[num] - Exactly #num items in stack
											[num]  - Same as above.
										Where [num] is a numeric value.

	--blueprints 			Add blueprints into search results
	--bponly          ONLY search for blueprints

	--item-name
	--item_name 			Comma separated list of item names, if any argument includes
                    spaces, surround the entire argument in quotes.

BLUEPRINT FILTERS
	--name            Name of Blueprint
	--is-copy         If blueprint is a copy
	--is-original     If blueprint is original
	--runs            Matches number of runs left on a blueprint. Uses quantity
	                  logic matching. See --quantity.

SEARCH TYPES
	--systems         Comma separated list of system names. If any system name
	                  has a space, the entire list must be quoted.
	--system-ids      Comma separated list of system IDs

	-OR-

	--regions         Comma separated list of region names. If any region name
	                  has a space, the entire list must be quoted.
	--region-ids 			Comma separated list of region ids

	-OR-

	--station-ids     Comma separated list of station ID
USAGE

}
