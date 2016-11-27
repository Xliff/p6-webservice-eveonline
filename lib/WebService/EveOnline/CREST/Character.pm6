use v6.c;

use WebService::EveOnline::Base;

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

	method character($characterId) {
		my $cid = $characterId // $sso.characterId;

		# cw: Note that Authorization will have to be handled by the
		#     CREST base class.
		makeRequest(
			"{ $.server-prefix }/{$cid}/"
		);
	}
}