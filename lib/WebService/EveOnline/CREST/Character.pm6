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
		die "characterContactsRead scope not specified for this token!"
			unless $.sso.scopes.grep(* eq 'characterContactsRead')

		# 5 minute cache
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/contacts/"
		);
	}

	method fittings {
		# 15 minute cache
		die "characterFittingsRead scope not specified for this token!"
			unless $.sso.scopes.grep(* eq 'characterFittingsRead');
		
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/fittings/"
		);
	}

	# cw: POST and DELETE to be handled in their own methods.
	method fitting(Int $fittingID!) {
		# 15 minute cache
		die "Invalid fitting ID" unless $fittingID > 0;

		die "characterFittingsRead scope not specified for this token!"
			unless $.sso.scopes.grep(* eq 'characterFittingsRead');
			
		self.makeRequest(
			"{ $.server-prefix }/{$cid}/fitting/$fittingID/"
		);
	}
}