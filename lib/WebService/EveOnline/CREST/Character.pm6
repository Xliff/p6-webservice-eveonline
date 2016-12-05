use v6.c;

use WebService::EveOnline::CREST::Base;

class WebService::EveOnline::CREST::Character {
	also is WebService::EveOnline::CREST::Base;

	method BUILD {
		$!request-prefix = 
			"{ self.PREFIX{$.server} }/characters/{ $.sso.CharacterId }";
	}

	method new(
		$sso, 
		:$server,
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'CREST/Character',
		:$cache_ttl = 300
	) {
		die "Must pass WebService::EveOnline::SSO object as first parameter"
			unless $sso.defined && $sso ~~ WebService::EveOnline::SSO;

		# cw: 
		#     -YYY- Should rate limiting be handled by the consumer? Would
		#     make life easier if we passed the buck on that.
		self.bless(
			:$sso, 
			:$server,
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_ttl
		);
	}

	# Public character data request can be handled without instantiating.
	multi method character(
		WebService::EveOnline::CREST::Character:U: 
		Str $server!,
		Int $characterId!
	) {
		die "Invalid character ID." unless $characterId > 0;

		my $p = WebService::EveOnline::CREST::Base::PREFIX{
			WebService::EveOnline::CREST::Base.getServer($server)
		};

		self.makeRequest("{ $p }/characters/$characterId/");
	}

	multi method character(WebService::EveOnline::CREST::Character:D:) {
		# 5 minute cache.
		self.makeRequest(
			"{ $.request-prefix }/"
		);
	}

	method loyaltyPoints {
		# Unknown cache, since not documented.
		self.makeRequest(
			"{ $.request-prefix }/loyaltypoints/"
		);
	}

	method contacts {
		self.checkScope('characterContactsRead');

		# 5 minute cache
		self.makeRequest(
			"{ $.request-prefix }/contacts/"
		);
	}

	# cw: This is the only endpoint where $force may be necessary 
	#     since it supports POST write endpoint (which hasn't
	#     been implemented, yet.
	method fittings(:$force) {
		# 15 minute cache
		self.checkScope('characterFittingsRead');

		self.makeRequest(
			"{ $.request-prefix }/fittings/",
			:cache_ttl(900),
			:$force
		);
	}

	# cw: POST and DELETE to be handled in their own methods.
	method fitting(Int $fittingID!, :$force) {
		# 15 minute cache
		die "Invalid fitting ID" unless $fittingID > 0;

		self.checkScope('characterFittingsRead');
			
		self.makeRequest(
			"{ $.request-prefix }/fitting/$fittingID/"
			:cache_ttl(900),
			:$force
		);
	}

	# cw: The documents are hopeless for this endpoint.
	method opportunities {
		# 1 hour cache
		self.checkScope('characterOpportunitiesRead');
		
		self.makeRequest(
			"{ $.request-prefix }/opportunities/",	
			:cache_ttl(3600)
		);
	}

	# cw: POST endpoint for waypoints to be handled later.
	#     Especially since the documentation is completely lacking!
	method setWaypoints {
		# cw: REALLY should be an exception.
		die "Not yet implemented.";
	}

	method location {
		# 5 second cache
		self.checkScope('characterLocationRead');

		self.makeRequest(
			"{ $.request-prefix }/location/"
		);
	}

	# cw: After looking at the methods below, they REALLY belong somewhere
	#     else -- but I am going by the Eve provided docs and 
	#     they are NOT reliable.
	#
	#	  All of these are UI methods and require a POST with a properly
	#     formed JSON body.

	# cw: Open Window endpoint to be handled, later.
	method openMarket($typeID) {
		my $tid = $typeID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";
	}

	method openContract($contractID) {
		my $cid = $contractID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";	
	}

	method openOwner($ownerID, $ownerType) {
		my $oid = $ownerID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";	
	}

}