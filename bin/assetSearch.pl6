#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::ESI::Assets;

my (%inv, %manifest, %assets)
my ($asset-api, $sq_dbh);

sub compareQuantity($num, $l) {
	do given $l[0] {
		when '=' { $num == $l[1]; }
		when '>' { $num  > $l[1]; }
		when '<' { $num  < $l[1]; }
	}
}

sub MAIN(:$sqlite, *%filters) {
	my @filters;
	my @valid-filters = <
		blueprints
		bponly
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

	if %filters.keys.all ne @valid-filters.any {
		USAGE;
		exit;
	}

	if %filters<location_flag>.defined {
		@location_flags = %filters<location_flag>.split(/,\s*/);
		die "Invalid location flag specified."
			unless @location_flags.all eq @valid-location-flags.any;
	}

	# cw: XXX - TODO resolve item_names to type IDs.
	my @type_ids, @location_types, $ql;

	@type_ids = %filters<type_id>.split(/,\s*/);

	if %filters<item_name>.defined || %filters<item-name>.defined {
		$sq_dbh = openStaticDB($sqlite);
		resolveItemNames(%filters<item_names>, %filters<item-names>);
	}

	if %filters<quantity>.defined {
		die "Invalid quantity specification."
			unless %filters<quantity> ~~ /^ (<[ > < = ]>?) (\d+) $/;
		$ql = [ $/[0] // '=', $/[1] ];

		@filters.push: { compareQuantity($_<quantity>, $ql) }
	}

	@filters.push: { $_<is_singleton>.Bool == %filters<is_singleton>.Bool }
		if %filters<is_singleton>.defined;

	@filters.push: {
		$_<item_id> == %filters<item_id>.split(/,\s*/).map( *.Int ).any
	} if $filters<item_id>.defined;

	@filters.push: { $_<type_id> == @type_ids.any } if +@type_ids;
	@filters.push: { $_<location_type> == @location_types.any } if +@location_types;
	@filters.push: { $_<location_flag> = @location_flags.any } if +@location_flags;

	findItems(@filters);
}

use nqp;
sub USAGE {
	  # cw: Don't know why the extra spacings are needed. Editor?
		say nqp::getlexcaller(q|$*USAGE|) ~ qq:to/USAGE/;

FILTERS
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
USAGE
}
