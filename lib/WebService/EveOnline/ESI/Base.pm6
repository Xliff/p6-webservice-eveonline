use v6.c;

use HTTP::Request;

use WebService::EveOnline::Base;
use WebService::EveOnline::RESTBase;
use WebService::EveOnline::Utils;

class WebService::EveOnline::ESI::Base {
	also is WebService::EveOnline::RESTBase;

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
		if ($latest, $legacy, $dev).any {
    	die "Must specify server type as one of :legacy, :latest or :dev"
      	unless [^^]($latest, $legacy, $dev);
		}

    my $type = do {
      when $latest { "latest"; }
      when $legacy { "legacy"; }
      when $dev    { "dev";    }
      default      { "latest"; }
    };

    self.new($sso, $type, :$useragent);
  }

	method type {
		$!type;
	}

	method !buildUrl ($prefix, :$datasource, :%args) {
		my $url = "{ $.request-prefix }{ $prefix }";
		my $nf = 0;

		$url ~= '/' unless $url.substr(* - 1) eq '/';

		if $datasource.defined {
			# cw: It would be better if this were not a set of literals, but we
			#     can come back and revisit, later.
			die "Invalid datasource!"
				unless $datasource eq <latest legacy dev>.any;
    	$url ~= "?datasource={$datasource}";
			$nf = 1;
		}
		for %args.keys -> $k {
			$url ~= "{ $nf ?? '&' !! '?' }{ $k }={ %args{$k} }" if %args{$k};
			$nf = 1 unless $nf;
		}

		#say "U: $url";

		$url;
	}

	method postBodyByPrefix($prefix, $content, :$datasource, *%args) {
		my $url = self!buildUrl($prefix, :$datasource, :%args);

		self.postBody($url, $content);
	}

  method requestByPrefix(
		$prefix,
		:$datasource,
		:$method = RequestMethod::GET,
		:%args
	) {
		my $url = self!buildUrl($prefix, :$datasource, :%args);

		#say "ESI-U [{$method}]: $url";

		do given $method {
			when RequestMethod::GET {
		    self.makeRequest($url, :$method);
			}

			when RequestMethod::POST {
				#HTTP::Request.new(POST => $url, |%header);
			}
		}
  }

}
