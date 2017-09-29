use v6.c;

use WebService::EveOnline::RESTBase;
use WebService::EveOnline::Utils;

class WebService::EveOnline::ESI::Market {
	also is WebService::EveOnline::RESTBase;

  # cw: May need to move these methods into an ESI Base class.
  # =
  has $!type;

  submethod BUILD(:$type) {
    $!type = $type;
  }

  submethod TWEAK {
    self.appendPrefix("/{ $!type }/markets/");
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
  # =
  # cw: END of potential ESI Base class methods.


  method marketGroups(:$datasource) {
    self.requestByPrefix('groups/', :$datasource);
  }

  method marketGroup($id, :$datasource, :$language) {
    self.requestByPrefix("groups/$id/", :$datasource, :$language);
  }

  method marketPrices(:$datasource) {
    self.requestByPrefix('prices/', :$datasource);
  }

  method marketStructures($id, :$datasource) {
    self.requestByPrefix("structures/$id/", :$datasource);
  }

  method marketRegionHistory($id, :$datasource, Int :$type_id) {
    self.requestByPrefix("$id/history/", :$datasource, :$type_id);
  }

  method marketRegionOrders($id, :$datasource, Int :$type_id) {
    self.requestByPrefix("$id/orders/", :$datasource, :$type_id);
  }

  method matketRegionTypes($id, :$datasource) {
    self.requestByPrefix("$id/types/", :$datasource);
  }

}
