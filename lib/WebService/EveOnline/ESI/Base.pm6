use v6.c;

#use HTTP::Request;

use WebService::EveOnline::Base;
use WebService::EveOnline::RESTBase;
use WebService::EveOnline::Utils;

class WebService::EveOnline::ESI::Base {
	also is WebService::EveOnline::RESTBase;

  has $!type;

  submethod BUILD(:$type = 'latest') {
    $!type = $type;
  }

  method new($sso, :$type, :$useragent) {
    die "Invalid server parameter. Must be one of 'legacy', 'latest', or 'dev'"
      unless $type eq <latest legacy dev>.any;

    self.bless(
      :$sso,
      :$type,
      :cache_ttl(300),
      :cache_prefix_add<ESI>,
      :cache_key<header:expires>,
			:$useragent
    );
  }

	method type {
		$!type;
	}

	method !buildUrl ($prefix, :$datasource, :%args) {
		my $url = "{ $.request-prefix }{ $prefix }";
		my $nf = 0;

		#$url ~= '/' unless $url.substr(* - 1) eq '/';

		if $datasource.defined {
			# cw: It would be better if this were not a set of literals, but we
			#     can come back and revisit, later.
			die "Invalid datasource!"
				unless $datasource eq <latest legacy dev>.any;
    	$url ~= "?datasource={$datasource}";
			$nf = 1;
		}
		for %args.keys -> $k {
			$url ~= "?{ $k }={ %args{$k} }" if %args{$k};
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
		:$paged,
		:$filter,
		:$ua,
		:%args
	) {
		my $url = self!buildUrl($prefix, :$datasource, :%args);

		#say "ESI-U [{$method}]: $url";

		do given $method {
			when RequestMethod::GET | RequestMethod::DELETE {
		    ($paged // False) ??
					self.makePagedRequest($url, :$filter, :$method)
					!!
					self.makeRequest($url, :$method, :$ua);
			}

			default {
				# Switch to proper alternative request for PUT and POST
				Nil;
			}
		}
  }

}
