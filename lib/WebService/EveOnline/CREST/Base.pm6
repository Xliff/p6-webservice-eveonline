use v6.c;

use HTTP::UserAgent;
use JSON::Fast;
use WebService::EveOnline::Base;

class WebService::EveOnline::CREST::Base {
	also is WebService::EveOnline::Base;

	has $.sso;

	constant PREFIX = {
		tq		=> 'https://crest-tq.eveonline.com',
		sisi	=> 'https://crest-sisi.eveonline.com'
	};

	submethod BUILD(:$sso) {
		$!sso = $sso;
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

	multi method makeRequest(
		WebService::EveOnline::CREST::Base:U:
		$url
	) {
		# cw: Eventually to go behind a DEBUG flag.
		say "Requesting: $url";
		
		my $response = HTTP::UserAgent.new.get($url);

		die "Request failed with unexpected error."
			unless $response ~~ HTTP::Response && $response.is-success;
			
		from-json($response.content);
	}

	multi method makeRequest(
		WebService::EveOnline::CREST::Base:D:
		$url, 
		:$method, 
		:$headers, 
		:$cache_ttl, 
		:$force
	) {
		$.sso.refreshToken if DateTime.now > $.sso.expires;

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