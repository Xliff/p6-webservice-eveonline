use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Corporation {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/corp/';

	has $.keyID;
	has $.vCode;
	has $.characterID;
	has $.corporationID;

	# cw: For now, the consuming application will need to worry about caching, 
	#     however some unified method of cache control should be implemented.
	#
	#     Probably WebService::EveOnline::Static::Cache.

	# cw: Validation structure for FALLBACK.
	# cw: -XXX- will need some kind of mechanism to handle varying parameters.
	#     since methods will vary between needing $.characterID, $.corporationID
	#     or neither............................................................................
	# cw: -YYY- methods still need validation.
	my @methods = <
		accountBalance
		assetList
		blueprints
		bookmarks
		contactList
		containerLog
		contractBids
		contractItems
		contracts
		corporationSheet
		customsOffices
		facilities
		facWarStats
		industryJobs
		industryJobsHistory
		killMails
		locations
		marketOrders
		medals
		memberMedals
		memberSecurity
		memberSecurityLog
		memberTracking
		outpostList
		outpostServiceDetail
		shareholders
		standings
		starbaseDetail
		starbaseList
		titles
		walletJournal
		walletTransactions
	>;

	submethod BUILD(
		:$keyID,
		:$vCode,
		:$characterID,
		:$corporationID
	) {
		$!keyID = $keyID;
		$!vCode = $vCode;
		$!characterID = $characterID;
		$!corporationID = $corporationID;
	}

	method new(
		:$keyID,
		:$vCode,
		:$characterID,
		:$corporationID,
		:$user_agent
	) {
		die "Character calls require that the <characterID> is defined"
			unless $characterID.defined;

		self.bless(
			:$keyID, :$vCode, :$characterID, :$corporationID, :$user_agent
		);
	}

	method makeRequest($url) {
		my $u = $url;

		$u ~= ($u ~~ /\?/) ?? '&' !! '?';
		$u ~= "keyID={$.keyID}\&vCode={$.vCode}";

		#say "U: $u";
	
		nextwith($u);
	}
	
	method FALLBACK($name, |c) {
		die "Method $name not found"
			unless @methods.grep({$_ eq $name});

		return self.makeRequest(
			"{PREFIX}{$name.tc}.xml.aspx",
		)
	}
}