use v6.c;

use WebService::EveOnline::CREST::Base;

class WebService::EveOnline::CREST::Eve {
	also is WebService::EveOnline::CREST::Base;

	method BUILD {
		$!request-prefix = "{ self.PREFIX{$.server} }";
	}

	method new(
		:$server,
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'CREST/Eve',
		:$cache_ttl = 300
	) {
		self.bless(
			:$server,
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_ttl
		);
	}

	method alliances {
		# 30 min cache
		self.makeRequest(
			"{ $.request-prefix }/alliances/",
			:cache_ttl(1800)
		);
	}

	method alliances(Int $id) {
		# 30 min cache
		self.makeRequest(
			"{ $.request-prefix }/alliances/{ $Id }/",
			:cache_ttl(1800)
		);
	}

	method tournaments {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/tournaments/",
			:cache_ttl(300)
		);
	}

	method tournament(Int $Id) {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/tournaments/{ $Id }/",
			:cache_ttl(300)
		);
	}

	method tournamentSeries($Id) {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/tournaments/{ $Id }/series/",
			:cache_ttl(300)
		);
	}

	method tournamentTeams($Id) {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/tournaments/teams/{ $Id }/",
			:cache_ttl(300)
		);
	}

	method tournamentTeamStats($tourId, $teamId) {
		self.makeRequest(
			"{ $.request-prefix }/tournaments/{ $tourId }/teams/{ $teamId }/",
			:cache_ttl(300)
		);
	}

	method tournamentTeamMembers($teamId) {
		self.makeRequest(
			"{ $.request-prefix }/tournaments/teams/{ $teamId }/members/",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesMatches($tId, $sId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/matches/",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesMatche($tId, $sId, $mId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/matches/{ $mId }",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesBans($tId, $sId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/bans/",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesPilotStats($tId, $sId, $mId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/matches/{ $mId }/pilotstats/",
			:cache_ttl(300)
		);
	}

	method bloodlines {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/bloodlines/",
			:cache_ttl(300)
		);
	}

	method races {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/races/",
			:cache_ttl(300)
		);
	}

	method dogmaAttributes {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/dogma/attributes/",
			:cache_ttl(3600)
		);
	}

	method dogmaAttribute(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/dogma/attributes/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method dogmaEffects {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/dogma/effects/",
			:cache_ttl(3600)
		);
	}

	method dogmaEffect(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/dogma/effects/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method incursions {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/incursions/",
			:cache_ttl(300)
		);
	}

	method industryFacilities {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/industry/facilities/",
			:cache_ttl(3600)
		);
	}

	method insurancePrices {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/insuranceprices/",
			:cache_ttl(3600)
		);
	}

	method inventoryTypes {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/types/",
			:cache_ttl(3600)
		);
	}

	method inventoryType(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/types/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method inventoryGroups {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/groups/",
			:cache_ttl(3600)
		);
	}

	method inventoryGroup(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/groups/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method inventoryCategories {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/categories/",
			:cache_ttl(3600)
		);
	}

	method inventoryCategory(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/inventory/categories/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method corporationLoyaltyPoints(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/corporations/{ $Id }/loyaltystore/",
			:cache_ttl(3600)
		);
	}

	method marketTypes {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/market/types/",
			:cache_ttl(300)
		);
	}

	method marketType(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/market/types/{ $Id }/",
			:cache_ttl(300)
		);
	}

	method marketPrices {
		# 23 hour cache
		self.makeRequest(
			"{ $.request-prefix }/market/prices/",
			:cache_ttl(82800)
		);
	}

	method marketGroups {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/market/groups/",
			:cache_ttl(300)
		);
	}

	method marketGroup(Int $Id) {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/market/groups/{ $Id }/",
			:cache_ttl(300)
		);
	}

	method marketSellOrders(Int $rId, Int $tId) {
		# 5 min cache
		my $oPrefix = "{ $.request-prefix }/market/{ $rId }/orders/sell";
		self.makeRequest(
			"{ $oPrefix }/{ $.request-prefix/inventory/types/{ $tId }/",
			:cache_ttl(300)
		);
	}

	method marketBuyOrders(Int $rId, Int $tId) {
		# 5 min cache
		my $oPrefix = "{ $.request-prefix }/market/{ $rId }/orders/buy";
		self.makeRequest(
			"{ $oPrefix }/{ $.request-prefix/inventory/types/{ $tId }/",
			:cache_ttl(300)
		);
	}

	method marketBulkOrder(Int $rId, Int $tId?) {
		# 5 min cache
		my $oPrefix = "{ $.request-prefix }/market/{ $rId }/orders";
		my $cUrl = $tId.defined ?? 
			"{ $.request-prefix/inventory/types/{ $tId }"
			!!
			"all";
		self.makeRequest(
			"{ $oPrefix }/{ $cUrl }/",
			:cache_ttl(300)
		);
	}

	method marketHistory(Int $rId, Int $tId) {
		# 30 min cache
		my $oPrefix = "{ $.request-prefix }/market/{ $rId }/history/";
		self.makeRequest(
			"{ $oPrefix }/{ $.request-prefix/inventory/types/{ $tId }/",
			:cache_ttl(1800)
		);
	}

	method npcCorps {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/corporations/mpccorps/",
			:cache_ttl(3600)
		);
	}

	method opportunityTasks {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/opportunities/tasks/",
			:cache_ttl(3600)
		);
	}

	method opportunityTask(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/opportunities/tasks/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method opportunityGroups {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/opportunities/groups/",
			:cache_ttl(3600)
		);
	}

	method opportunityGroup(Int $Id) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/opportunities/group/{ $Id }/",
			:cache_ttl(3600)
		);
	}

	method soverreigntyStructures {
		# 5 min cache
		self.makeRequest(
			"{ $.request-prefix }/sovereignty/structures/",
			:cache_ttl(300)
		);
	}

	method soverreigntyCampaigns {
		# 30 sec cache
		self.makeRequest(
			"{ $.request-prefix }/sovereignty/campaigns/",
			:cache_ttl(300)
		);
	}

	method wars {
		# 1 day cache
		self.makeRequest(
			"{ $.request-prefix }/wars/",
			:cache_ttl(86400)
		);
	}

	method war(Int $Id) {
		# 1 day cache
		self.makeRequest(
			"{ $.request-prefix }/wars/{ $Id }/",
			:cache_ttl(86400)
		);
	}

	method warKills(Int $Id) {
		# 1 day cache
		self.makeRequest(
			"{ $.request-prefix }/wars/{ $Id }/killmails/all",
			:cache_ttl(86400)
		);
	}

	method time {
		# 10 second cache
		self.makeRequest(
			"{ $.request-prefix }/time/",
			:cache_ttl(10)
		);
	}

}