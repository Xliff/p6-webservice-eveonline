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
    self.appendPrefix("{ $!type }/markets/");
  }

  multi method new($sso, $type) {
    die "Invalid server parameter. Must be one of 'legacy', 'latest', or 'dev'"
      unless $type eq <latest legacy dev>.any;

    self.bless(
      :$sso,
      :server("esi"),
      :$type,
      :cache_ttl(300),
      :cache_prefix_add("ESI"),
      :cache_key('header:expires')
    );
  }

  multi method new($sso, :$latest, :$legacy, :$dev) {
    die "Must specify server type as one of :legacy, :latest or :dev"
      unless [^^]($latest, $legacy, $dev);

    my $type = do {
      when $latest { "latest"; }
      when $legacy { "legacy"; }
      when $dev    { "dev";    }
      default      { "latest"; }
    };

    self.new($sso, $type);
  }

  method requestByPrefix($prefix, :$datasource) {
    my $url = "{ $.request-prefix }{ $prefix }";
    $url ~= "?datasource={$datasource}" if $datasource.defined;

    say "U: $url";

    self.makeRequest($url);
  }
  # =
  # cw: END of potential ESI Base class methods.


  method marketGroups(:$datasource) {
    self.requestByPrefix('groups/', :$datasource);
  }

  method marketGroup($id, :$datasource) {
    self.requestByPrefix("groups/$id/", :$datasource);
  }

  method marketPrices(:$datasource) {
    self.requestByPrefix('prices/', :$datasource);
  }

  method marketStructures($id, :$datasource) {
    self.requestByPrefix("structures/$id/", :$datasource);
  }

  method marketRegionHistory($id, :$datasource) {
    self.requestByPrefix("$id/history/", :$datasource);
  }

  method marketRegionOrders($id, :$datasource) {
    self.requestByPrefix("$id/orders/", :$datasource);
  }

  method matketRegionTypes($id, :$datasource) {
    self.requestByPrefix("$id/types/", :$datasource);
  }

}
