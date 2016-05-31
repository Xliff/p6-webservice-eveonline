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
	my @methods = (
		assetList
		blueprints
		bookmarks
		contactList
		containerLog
		contractBids
		contractItems
		contracts
		customsOffices
		facilities
		facWarStats
		industryJobs
		industryJobsHistory
		killMails
		locations
		medals
		memberMedals
		memberSecurity
		memberSecurityLog
		outpostList
		outpostServiceDetail
		shareholders
		standings
		starbaseList
		titles
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
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'XML/Corporation',
		:$cache_key = 'cachedUntil'
	) {
		my $date_interp = sub (Str $dt) {
			my $mdt = $dt.subst(' ', 'T');

			return DateTime.new($mdt);
		};

		self.bless(
			:$keyID, 
			:$vCode, 
			:$characterID, 
			:$corporationID, 
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_key,
			:cache_date_interp($date_interp)
		);
	}

	method makeRequest($url) {
		my $u = $url;

		$u ~= ($u ~~ /\?/) ?? '&' !! '?';
		$u ~= "keyID={$.keyID}\&vCode={$.vCode}";

		#say "U: $u";
	
		nextwith($u);
	}

	multi method accountBalance(
		Int :$characterID!,
		Int :$LIMITED = 0
	) {
		die "Optional <LIMITED> parameter can only be 0 or 1"
			unless $LIMITED == 0 or $LIMITED == 1;

		my $url = "{PREFIX}AccountBalance.xml.aspx?characterID={$characterID}";
			
		return $LIMITED == 0 ??
			self.makeRequest($url)
			!!
			WebService::EveOnline::Base.makeRequest($url);
	}
	multi method accountBalance($characterID, $LIMITED) {
		return self.accountBalance(:$characterID, :$LIMITED);
	}

	multi method corporationSheet(
		Int :$characterID!,
		Int :$LIMITED = 0
	) {
		die "Optional <LIMITED> parameter can only be 0 or 1"
			unless $LIMITED == 0 or $LIMITED == 1;

		my $url = "{PREFIX}CorporationSheet.xml.aspx?characterID={$characterID}";
			
		return $LIMITED == 0 ??
			self.makeRequest($url)
			!!
			self.WebService::EveOnline::Base::makeRequest($url);
	}
	multi method corporationSheet($characterID, $LIMITED) {
		return self.corporationSheet(:$characterID, :$LIMITED);
	}

	multi method marketOrders(
		Int :$characterID!,
		Int :$orderID
	) {
		my $url = "{PREFIX}MarketOrders.xml.aspx?characterID={$characterID}";

		$url ~= "&orderID={$orderID}" if $orderID.defined;

		return self.makeRequest($url);
	}
	multi method marketOrders($characterID, $orderID) {
		return self.marketOrders($:characterID, :$orderID);
	}


	method memberTracking(Int $extended = 0) {
		die "<extended> parameter must be 0 or 1" 
			unless $extended == 0 || $extended == 1;

		return self.makeRequest(
			"{PREFIX}MemberTracking.xml.aspx?extended={$extended}"
		);
	}

	method starbaseDetail(Int $itemID!) {
		return self.makeRequest(
			"{PREFIX}StarbaseDetail.xml.aspx?itemID={$itemID}"
		);
	}

	method walletJournal(
		Int :$accountKey = 1000,
		Int :$fromID,
		Int :$rowCount
	) {
		my $url = "{PREFIX}WalletJournal.xml.aspx?accountKey={$accountKey}";

		$url ~= "\&fromID={$fromID}" if $fromID.defined;
		$url ~= "\&rowCount={$rowCount}" if $rowCount.defined;

		return self.makeRequest($url);
	}

	method walletTransactions(
		Int :$accountKey = 1000,
		Int :$fromID,
		Int :$rowCount
	) {
		my $url = "{PREFIX}WalletTransactions.xml.aspx?accountKey={$accountKey}";

		$url ~= "\&fromID={$fromID}" if $fromID.defined;
		$url ~= "\&rowCount={$rowCount}" if $rowCount.defined;

		return self.makeRequest($url);
	}


	
	method FALLBACK($name, |c) {
		die "Method $name not found"
			unless @methods.grep({$_ eq $name});

		return self.makeRequest(
			"{PREFIX}{$name.tc}.xml.aspx",
		)
	}
}