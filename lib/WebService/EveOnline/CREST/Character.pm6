use v6.c;

use WebService::EveOnline::CREST::Base;

class WebService::EveOnline::CREST::Character {
	also is WebService::EveOnline::CREST::Base;

	constant PREFIX = (
		tq		=> 'https://crest-tq.eveonline.com/characters',
		sisi	=> 'https://crest-sisi.eveonline.com/characters'
	);

	has $.server;
	has $.server-prefix;

	method BUILD(:$sso, :$server) {
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

		$!server-prefix = PREFIX{$.server};
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

	method character {
		# 5 minute cache.
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/"
		);
	}

	method contacts {
		self.checkScope('characterContactsRead')

		# 5 minute cache
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/contacts/"
		);
	}

	method fittings {
		# 15 minute cache
		self.checkScope('characterFittingsRead');

		self.makeRequest(
			"{ $.server-prefix }/{$cid}/fittings/"
		);
	}

	# cw: POST and DELETE to be handled in their own methods.
	method fitting(Int $fittingID!) {
		# 15 minute cache
		die "Invalid fitting ID" unless $fittingID > 0;

		self.checkScope('characterFittingsRead');
			
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/fitting/$fittingID/"
		);
	}

	# cw: The documents are hopeless for this endpoint.
	method opportunities {
		# 1 hour cache
		self.checkScope('characterOpportunitiesRead');
		
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/opportunities/"	
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
			"{ $.server-prefix }/{$cid}/location/"
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