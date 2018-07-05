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

sub compareQuantity($num, $l) {
	do given $l[0] {
		when '=' { $num == $l[1]; }
		when '>' { $num  > $l[1]; }
		when '<' { $num  < $l[1]; }
	}
}

sub findItems(%filters, $searches) {
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

	my @found-items;
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

				  @found-items.append: $asset-api.getCharacterAssets(:filter($grepSub))
						if $searches<where>.any eq <all char>.any;
					@found-items.append: $asset-api.getCorporationAssets(:filter($grepSub))
						if $searches<where>.any eq <all corp>.any;
				}

				when 'bp' {
					@found-items.append: $asset-api.getCharacterBlueprints(:filter($grepSub))
						if $searches<where>.any eq <all char>.any;
					@found-items.append: $asset-api.getCorporationBluePrints(:filter($grepSub))
						if $searches<where>.any eq <all corp>.any;
				}
			}
		}
	}

	# Implement location based post-processing, here.

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

sub MAIN(:$sqlite, :$corp, :$char, :$blueprints, :$bponly, *%filters) {
	my $search = {
		where => 'char',
		what  => [ 'asset' ]
	}
	$search<where> = 'corp' if $corp.defined && $corp;
	$search<where> = 'char' if $char.defined && $char;
	$search<where> = 'all'  if [&&]($corp.defined, $char.defined, $corp, $char);

	$search<what>.push: 'bp'   if $blueprints;
	$search<what> = [ 'bp' ]   if $bponly;

	my @filters;

	if %filters.keys.all ne @valid-filters.any {
		USAGE;
		exit;
	}

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
			|( %filters<item_names>.split(/\s*/) ),
			|( %filters<item-names>.split(/\s*/) )
		);
	}

	{
		my $checkQl = sub($f) {
			die "Invalid quantity specification."
				unless %filters<quantity> ~~ /^ (<[ > < = ]>?) (\d+) $/;
			 [ $/[0] // '=', $/[1] ];
		}

		if %filters<quantity>.defined {
			my $ql = $checkQl(%filters<quantity>);
			@filters.push: {
				quantity => { compareQuantity($_<quantity>, $ql) }
			};
		}

		if %filteres<runs>.defined {
			my $ql = $checkQl(%filters<runs>);
			@filters.push: {
				runs => { compareQuantity($_<runs> , $ql); }
			};
		}
	}

	@filters.push: {
		is_singleton => {
			$_<is_singleton>.Bool == %filters<is_singleton>.Bool
		}
	} if %filters<is_singleton>.defined;

	@filters.push: {
		item_id => {
			$_<item_id> == %filters<item_id>.split(/,\s*/).map( *.Int ).any
		}
	} if $filters<item_id>.defined;

	@filters.push: {
			type_id => { $_<type_id> == @type_ids.any }
	} if +@type_ids;

	@filters.push: {
		location_type => { $_<location_type> == @location_types.any }
	} if +@location_types;

	@filters.push: {
		location_flag => { $_<location_flag> = @location_flags.any }
	} if +@location_flags;

	showResults( findItems(@filters, $search) );
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
USAGE
}
