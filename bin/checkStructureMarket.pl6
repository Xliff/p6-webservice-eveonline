#!/usr/bin/perl6

use v6.c;

use DBIish;

use WebService::EveOnline::EveCentral;

my $sq_dbh;
my %market;
my %options;
my %items;

my @sell;
my @vol;
my @buy;

my @buy_max_vol;
my @buy_max_isk;
my @sell_max_vol;
my @sell_max_isk;

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

# Print error without backtrace.
sub fatal($msg) {
	note($msg);
	exit;
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

# cw: This also marked for reuse.
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

sub getIDs {
	print "Fetching Citadel/Complex data...";
	my $sth = $sq_dbh.prepare(q:to/STATEMENT/);
		SELECT typeID, typeName FROM invTypes
		WHERE
			typeName LIKE '%M-Set%'
			AND
			typeName NOT LIKE '%II%'
			AND
			typeName NOT LIKE '%Blueprint%'
	STATEMENT

	$sth.execute;
	for @( $sth.allrows ) -> $r {
		%items{ $r[1] } = $r[0];
		%items<_BYID_>{$r[0]} = $r[1];
	}
	$sth.finish;

	print "{ %items.keys.grep({ $_ ne '_BYID_' }).elems } items found.\n";

	fatal("ERROR! - No structure items found. Please check that you are using the right static data file.")
		unless %items;
}

# cw: For reuse, pass a list of typeIDs and return what is now %market.
sub retrieveMarketStats {
	my $ec = WebService::EveOnline::EveCentral.new;

	say "Retrieving market statistics:";
	for %items<_BYID_>.keys -> $typeID {
		say "\t{ %items<_BYID_>{$typeID} }...";
		# cw: For now, only use Jita. To do all hubs would require multiple calls.
		#	       Jita - 60003760

		# cw: Why doesn't this work?
		#my $md = $ec.marketStat(:$typeID, :useSystem(60003760));
		my $md = $ec.marketStat(:$typeID);

		next unless $md;
		%market{ $typeID }<buy>  = $md<marketstat><type><buy>;
		%market{ $typeID }<sell> = $md<marketstat><type><sell>;
		%market{ $typeID }<all>  = $md<marketstat><type><all>;

		# Place identifier into some place usable.
		%market{ $typeID }<buy><typeid> = $typeID;
		%market{ $typeID }<sell><typeid> = $typeID;
		%market{ $typeID }<all><typeid> = $typeID;

		@buy.push: %market{ $typeID }<buy>;
		@sell.push: %market{ $typeID }<sell>;
	}

	@buy_max_isk  =  @buy.sort({    $^b<max>.Num <=> $^a<max>.Num    }).list;
	@buy_max_vol  =  @buy.sort({ $^b<volume>.Num <=> $^a<volume>.Num }).list;
	@sell_max_isk = @sell.sort({    $^b<max>.Num <=> $^a<max>.Num    }).list;
	@sell_max_vol = @sell.sort({ $^b<volume>.Num <=> $^a<volume>.Num }).list;
}


sub MAIN($sqlite, :%extras) {
	openStaticDB($sqlite);
	getIDs;
	retrieveMarketStats;

	say qq:to/FORMAT/;

Maximum seller price:
        { %items<_BYID_>{ @sell_max_isk[0]<typeid> } }: \${ commaize(@sell_max_isk[0]<max>) } x { @sell_max_isk[0]<volume> }
        Est: \${ commaize(@sell_max_isk[0]<max> * @sell_max_isk[0]<volume>) }
FORMAT

	say qq:to/FORMAT/ if @sell_max_vol[0]<typeid> != @sell_max_isk[0]<typeid>;
Maximum seller volume:
        { %items<_BYID_>{ @sell_max_vol[0]<typeid> } }: \${ commaize(@sell_max_vol[0]<max>) } x { @sell_max_vol[0]<volume> }
        Est: \${ commaize(@sell_max_vol[0]<max> * @sell_max_vol[0]<volume>) }
FORMAT

	say qq:to/FORMAT/;
Maximum buyer price:
        { %items<_BYID_>{ @buy_max_isk[0]<typeid> } }: \${ commaize(@buy_max_isk[0]<max>) } x { @buy_max_isk[0]<volume> }
        Est: \${ commaize(@buy_max_isk[0]<max> * @buy_max_vol[0]<volume>) }
FORMAT

	say qq:to/FORMAT/ if @buy_max_vol[0]<typeid> != @buy_max_isk[0]<typeid>;
Maximum buyer volume:
        { %items<_BYID_>{ @buy_max_vol[0]<typeid> } }: \${ commaize(@buy_max_vol[0]<max>) } x { @buy_max_vol[0]<volume> }
        Est: \${ commaize(@buy_max_vol[0]<max> * @buy_max_vol[0]<volume>) }
FORMAT

}
