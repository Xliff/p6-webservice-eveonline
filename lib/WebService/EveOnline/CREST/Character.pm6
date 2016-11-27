use v6.c;

use WebService::EveOnline::CREST::Base;

class WebService::EveOnline::CREST::Character {
	also is WebService::EveOnline::CREST::Base;

	constant PREFIX = (
		tq		=> 'https://crest-tq.eveonline.com/characters',
		sisi	=> 'https://crest-sisi.eveonline.com/characters'
	);

	has $.server;
	has $.request-prefix;

	method BUILD(:$server) {
		$!server = do given $server.lc { 
			when 'tq' || 'tranquility' || 'tranq' || 't' {
				'tq';
			}

			when 'sisi' || 'singularity' || 'sing' || 's' {
				'sisi'
			}

			default {
				die "Unknown CREST server passed as argument."
			}
		}

		$!request-prefix = "{ PREFIX{$.server} }/{ $.sso.CharacterId }";
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

		# cw: Note that CREST calls, the cache time can vary. 
		#     This will need to be an enhancement made to 
		#     WebService::EveOnline::Base.
		# 
		# 	  For now, we use the more common time of 5 minutes and
		#     let the server handle things. 
		# 
		#     -YYY- Should rate limiting be handled by the consumer? Would
		#     make life easier if we passed the buck on that.
		self.bless(
			:$sso, 
			:$server,
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add = 'CREST/Character',
			:$cache_ttl
		);
	}

	method character(:$force) {
		# 5 minute cache.
		self.makeRequest(
			$.request-prefix,
			:$force
		);
	}

	method contacts(:$force) {
		self.checkScope('characterContactsRead');

		# 5 minute cache
		self.makeRequest(
			"{ $.request-prefix }/contacts/",
			:$force
		);
	}

	# cw: This is the only endpoint where $force may be necessary 
	#     since it supports POST write endpoint (which hasn't
	#     been implemented, yet.
	#
	#     Consider removing :$force from other methods unless
	#     they need it.
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
	method opportunities(:$force) {
		# 1 hour cache
		self.checkScope('characterOpportunitiesRead');
		
		self.makeRequest(
			"{ $.request-prefix }/opportunities/",	
			:cache_ttl(3600),
			:$force
		);
	}

	# cw: POST endpoint for waypoints to be handled later.
	#     Especially since the documentation is completely lacking!
	method setWaypoints(:$force) {
		# cw: REALLY should be an exception.
		die "Not yet implemented.";
	}

	method location(:$force) {
		# 5 second cache
		self.checkScope('characterLocationRead');

		self.makeRequest(
			"{ $.request-prefix }/location/",
			:$force
		);
	}

	# cw: After looking at the methods below, they REALLY belong somewhere
	#     else -- but I am going by the Eve provided docs and 
	#     they are NOT reliable.
	#
	#	  All of these are UI methods and require a POST with a properly
	#     formed JSON body.

	# cw: Open Window endpoint to be handled, later.
	method openMarket($typeID, :$force) {
		my $tid = $typeID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";
	}

	method openContract($contractID, :$force) {
		my $cid = $contractID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";	
	}

	method openOwner($ownerID, $ownerType, :$force) {
		my $oid = $ownerID // 0;
		#self.checkScope('remoteClientUI');

		die "Not yet implemented.";	
	}

}