use v6.c;

use HTTP::UserAgent;
use JSON::Fast;
use WebService::EveOnline::RESTBase;
use WebService::EveOnline::Utils;

class WebService::EveOnline::ESI::Base {
	also is WebService::EveOnline::RESTBase;

  # cw: May need to move these methods into an ESI Base class.
  # =
  has $!type;

  submethod BUILD(:$type) {
    $!type = $type;
  }

  multi method new($sso, $type, :$useragent) {
    die "Invalid server parameter. Must be one of 'legacy', 'latest', or 'dev'"
      unless $type eq <latest legacy dev>.any;

    self.bless(
      :$sso,
      :server("esi"),
      :$type,
      :cache_ttl(300),
      :cache_prefix_add("ESI"),
      :cache_key('header:expires'),
			:$useragent
    );
  }

  multi method new($sso, :$latest, :$legacy, :$dev, :$useragent) {
    die "Must specify server type as one of :legacy, :latest or :dev"
      unless [^^]($latest, $legacy, $dev);

    my $type = do {
      when $latest { "latest"; }
      when $legacy { "legacy"; }
      when $dev    { "dev";    }
      default      { "latest"; }
    };

    self.new($sso, $type, :$useragent);
  }

  method requestByPrefix($prefix, :$datasource, *%args) {
    my $url = "{ $.request-prefix }{ $prefix }";
		my $nf = 0;

		$url ~= '/' unless $url.substr([*-1]) eq '/';
		if $datasource.defined {
    	$url ~= "?datasource={$datasource}";
			$nf = 1;
		}
		for %args.keys -> $k {
			$url ~= "{ $nf ?? '&' !! '?' }{ $k }={ %args{$k} }" if $%args{$k};
			$nf = 1 unless $nf;
		}

    #say "U: $url";

    self.makeRequest($url);
  }

	method post($url, :$datasource, *%extras) {
		my $postclient = HTTP::UserAgent.new;
			:max_redirects(0),
			:useragent(self.useragent)
		);

		my (@form_data, $content-type);
		given %extras{ENCODING}.lc {
			when 'json' {
				$content-type = 'application/json';
				for %extras.keys -> $k {
					next if $k eq $k.uc;
					@form_data.push: to_json(%extra{$k});
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
		{
			$response = $postclient.post(
				$url,
				:form_data($form_data.join('&'))
				|%header
			);

			CATCH X::HTTP::Response {
				$response = .response;
			}
		}

		$response;
	}

}
