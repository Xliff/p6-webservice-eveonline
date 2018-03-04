use v6.c;

use HTTP::UserAgent;
use JSON::Fast;
use WebService::EveOnline::Base;
use WebService::EveOnline::Utils;

class WebService::EveOnline::RESTBase {
	also is WebService::EveOnline::Base;

	has $.sso;
	has $.server;
	has $.request-prefix;

	constant PREFIX = {
		tq		=> 'https://crest-tq.eveonline.com',
		sisi	=> 'https://crest-sisi.eveonline.com',
		esi   => 'https://esi.tech.ccp.is'
	};

	submethod BUILD(
		:$sso, :$server,
	) {
		$!sso = $sso;
		$!server = self.getServer($server);
		$!request-prefix = "{ PREFIX{$!server} }";
	}

	submethod TWEAK {
		self.setCacheNameFunc( -> $u {
				my $p = PREFIX{self.server};
				my $mu = $u;

				$mu ~~ s/^ "{ $p }/" //;
				$mu = $mu.subst('/', '_', :g);
				$mu = $mu.subst('&', '_', :g);
				$mu = $mu.subst('?', '_', :g);
				$mu = $mu.chop if $mu.substr(*-1) eq '_';
				$mu;
		});
	}

	method getServer($server) {
		given $server.lc {
			when 'tq' | 'tranquility' | 'tranq' | 't' {
				'tq';
			}

			when 'sisi' | 'singularity' | 'sing' | 's' {
				'sisi'
			}

			when 'esi' | 'e' {
				'esi'
			}

			default {
				die "Unknown CREST server passed as argument."
			}
		}
	}

	method checkScope($scope!) {
		# cw: For descendants where SSO is OPTIONAL, otherwise this check
		#     would go in new().
		die "No SSO object defined in this session"
			unless $.sso.defined;

		die "'$scope' scope not specified for this token!"
			unless $.sso.scopes.grep(* eq $scope);
	}

	# cw: This needs to be folded into the global Base.
	#
	multi method makeRequest(
		WebService::EveOnline::RESTBase:U:
		$url
	) {
		makeRequestStatic($url);
	}

	# cw: Determine if paged requests have a universal handling method.
	#     then see the best way to interface it. Do we allow for
	#     random page access? If so, how?
	#
	#		So far it looks like basic handling is as follows:
	#			if results have a "next" key:
	#				request the page associated with the "next" value
	#				push "items" data into existing "items" array
	#
	multi method makeRequest(
		WebService::EveOnline::RESTBase:D:
		$url,
		:$method,
		:$headers,
		:$cache_ttl,
		:$force
	) {
		$.sso.refreshToken if $.sso.defined && DateTime.now > $.sso.expires;

		my $retVal;
		loop {
			my $data;

			$data = callwith(
				$data<next><href> // $data<next> // $url,
				:$method,
				:header($.sso.getHeader.append($headers.pairs)),
				:$cache_ttl,
				:$force,
				:json
			);

			# cw: Do we limit paged data? If so, how?
			if !$retVal.defined {
				$retVal = $data;
			} else {
				if $data<next>.defined && $data<items>.defined {
					$retVal<items>.push($data<items>);
				}
			}
			last unless $data && $data<next>.defined;
		}
		# cw: If paged, do we need items related to paging?
		# $retVal.delete('pageCount');
		# $retVal.delete('pageCount_str');
		$retVal;
	}

	method sso {
		$!sso;
	}

	method server {
		$!server;
	}

	method appendPrefix($append) {
		$!request-prefix ~= $append;
	}

	method setPrefix($prefix) {
		$!request-prefix = $prefix;
	}

	method post($url, :$datasource, *%extras) {
		my $postclient = HTTP::UserAgent.new(
			:max_redirects(0),
			:useragent(self.useragent)
		);

		my (@form_data, $content-type);
		given %extras<ENCODING>.lc {
			when 'json' {
				$content-type = 'application/json';
				for %extras.keys -> $k {
					next if $k eq $k.uc;
					# cw: XXX -- need key/value, here.
					@form_data.push: to-json(%extras{$k});
				}
			}

			when 'xml' {
				$content-type = 'application/xml';
				for %extras.keys -> $k {
					next if $k eq $k.uc;
					# cw ---TODO--- @form_data: to_xml(%extra{$k});
				}
			}
		}

		my $response;
		$!sso.refreshToken;
		my %header = $!sso.getHeader;
		%header<Content-Type> = $content-type;
		try {
			$response = $postclient.post(
				$url,
				:form_data(@form_data.join('&')),
				|%header
			);

			CATCH {
				when X::HTTP::Response {
					$response = .response;
				}
			}
		}

		$response;
	}

}
