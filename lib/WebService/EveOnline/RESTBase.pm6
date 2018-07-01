use v6.c;

use HTTP::Request;
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
		#sisi	=> 'https://crest-sisi.eveonline.com',
		dev   => 'https://esi-dev.tech.ccp.is',
		#esi   => 'https://esi.tech.ccp.is'
		esi		=> 'https://esi.evetech.net',
	};

	submethod BUILD(
		:$sso, :$server,
	) {
		$!sso = $sso;
		$!server = self.getServer($server // 'esi');
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
				'dev'
			}

			when 'dev' {
				'dev';
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
		my $page = 1;
		my $curURL = $url;
		loop {
			my $data;

			my $newHeaders = $.sso.getHeader;
			$newHeaders.append($headers.pairs);

			$data = callwith(
				$curURL,
				:$method,
				:headers($newHeaders),
				:$cache_ttl,
				:$force,
				:json
			);

			#say "U{$page}: $curURL";

			# cw: Do we limit paged data? If so, how?
			$retVal //= $data;

			# This will no longer work due to the switch from CREST to ESI
			#if $data<next>.defined && $data<items>.defined {
			#	$retVal<items>.push($data<items>);
			#}

			# Eve STAGGER interface - Requires pagination and not a simple call
			# dependent on values within the response. The loop will need to be
			# rethought.
			#

			given self.last-response {
				when HTTP::Response {
					#say "LAST: {$_.is-success} / {$_.code}";
					my @maxPageVals = $_.field('X-Pages').values;
					my $maxPage;
					if @maxPageVals.elems == 1 {
						$data<__cache__><pages> = $maxPage = @maxPageVals[0];
						$data<__cache__><url> = $curURL;
						$curURL = Nil;
					} elsif @maxPageVals.elems > 1 {
						say "X-Pages values: " ~ @maxPageVals.gist;
						die "WTF?! X-Pages is not supposed to have more than one value!";
					}

					#if $page < $maxPage.Int {
						# This is dumb.
					#	$retVal<data>.push: $data<data>;
					#	$page++;
					#	$curURL = $url ~ "\&page={$page}";
					#}
				}
			}

			last if !$curURL;
		}

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

	method getPrefix {
		$!request-prefix;
	}

	method postBody($url, $content, :$content-type, :$bin = False) {
		my ($request, $response);
		my $postclient = HTTP::UserAgent.new(
			:max_redirects(0),
			:useragent(self.useragent)
		);

		#say "ESI-P: $url";

		$!sso.refreshToken;
		my %header = $!sso.getHeader;
		%header<Content-Type> = $content-type // 'application/json';
		try {
			$request = HTTP::Request.new(POST => $url, |%header);
			$request.add-content($content);
			$response = $postclient.request($request, :$bin);
			CATCH {
				when X::HTTP::Response {
					$response = .response;
				}
			}
		}

		$response;
	}

	method post($url, *%extras) {
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
