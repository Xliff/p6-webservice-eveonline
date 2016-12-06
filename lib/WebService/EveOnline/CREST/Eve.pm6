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
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }/";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/matches/",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesMatche($tId, $sId, $mId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }/";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/matches/{ $mId }",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesBans($tId, $sId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }/";
		self.makeRequest(
			"{ $tPrefix }/series/{ $sId }/bans/",
			:cache_ttl(300)
		);
	}

	method tournamentSeriesPilotStats($tId, $sId, $mId) {
		my $tPrefix = "{ $.request-prefix }/tournaments/{ $tId }/";
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

}