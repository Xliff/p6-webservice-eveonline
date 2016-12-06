use v6.c;

use WebService::EveOnline::CREST::Base;

class WebService::EveOnline::CREST::Map {
	also is WebService::EveOnline::CREST::Base;

	method BUILD {
		$!request-prefix = "{ self.PREFIX{$.server} }";
	}

	method new(
		:$server,
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'CREST/Map',
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

	# cw: Data retrieval will need to account for some classes 
	#     may not need an SSO!!

	method constellations {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/constellations/",
			:cache_ttl(3600)
		);
	}

	method constellation(Int $constellationId) {
		# 1 hour cache

		# Constellation IDs for K-space start above 20000000, 
		# and IDs for W-space start above 21000000.
		self.makeRequest(
			"{ $.request-prefix }/constellations/{ $constellationId }/",
			:cache_ttl(3600)
		);
	}

	method planets {
		# 1 hour cache

		# Not Yet Implemented
		#
		#self.makeRequest(
		#	"{ $.request-prefix }/planets/",
		#	:cache_ttl(3600)
		#);

		{
			error => "Not Yet Implemented"
		}
	}

	method planet(Int $planetId) {
		# 1 hour cache

		# Constellation IDs for K-space start above 20000000, 
		# and IDs for W-space start above 21000000.
		self.makeRequest(
			"{ $.request-prefix }/planets/{ $planetId }/",
			:cache_ttl(3600)
		);
	}

	method solarsystems {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/solarsystems/",
			:cache_ttl(3600)
		);
	}

	method solarsystem(Int $solarsystemId) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/solarsystems/{ $solarsystemId }",
			:cache_ttl(3600)
		);
	}

	method regions {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/regions/",
			:cache_ttl(3600)
		);
	}

	method region(Int $regionId) {
		# 1 hour cache

		# Region IDs for K-space start above 10000000, 
		# and IDs for W-space start above 11000000.
		self.makeRequest(
			"{ $.request-prefix }/regions/{ $regionId }",
			:cache_ttl(3600)
		);
	}

	method stargate(Int $stargateId) {
		# 1 hour cache
		self.makeRequest(
			"{ $.request-prefix }/stargate/{ $stargateId }",
			:cache_ttl(3600)
		);
	}

	method station(Int $stationId) {
		# 5 minute cache
		self.makeRequest(
			"{ $.request-prefix }/station/{ $stationId }",
			:cache_ttl(300)
		);
	}

}
