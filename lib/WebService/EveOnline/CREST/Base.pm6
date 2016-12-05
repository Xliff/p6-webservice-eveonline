use v6.c;

use WebService::EveOnline::Base;
use WebService::EveOnline::Utils;

class WebService::EveOnline::CREST::Base {
	also is WebService::EveOnline::Base;

	has $.sso;
	has $.server;
	has $.request-prefix;

	constant PREFIX = {
		tq		=> 'https://crest-tq.eveonline.com',
		sisi	=> 'https://crest-sisi.eveonline.com'
	};

	submethod BUILD(:$sso, :$server) {
		$!sso = $sso;
		$!server = self.getServer($server);
	}

	method getServer($server) {
		given $server.lc { 
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
	}

	method checkScope($scope!) {
		die "'$scope' scope not specified for this token!"
			unless $.sso.scopes.grep(* eq $scope);
	}

	# cw: This needs to be folded into the global Base.
	#     
	multi method makeRequest(
		WebService::EveOnline::CREST::Base:U:
		$url
	) {
		makeRequestStatic($url);
	}

	multi method makeRequest(
		WebService::EveOnline::CREST::Base:D:
		$url, 
		:$method, 
		:$headers, 
		:$cache_ttl, 
		:$force
	) {
		$.sso.refreshToken 
			if $.sso.defined && DateTime.now > $.sso.expires;

		nextwith(
			$url, 
			:$method, 
			:header($.sso.getHeader.append($headers.pairs)),
			:$cache_ttl,
			:$force,
			:json
		);
	}
}