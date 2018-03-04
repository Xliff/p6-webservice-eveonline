use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Market {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/markets/");
  }

  method marketGroups(:$datasource) {
    self.requestByPrefix('groups', :$datasource);
  }

  method marketGroup($id, :$datasource, :$language) {
    self.requestByPrefix("groups/$id", :$datasource, :$language);
  }

  method marketPrices(:$datasource) {
    self.requestByPrefix('prices', :$datasource);
  }

  method marketStructureOrders($id, :$datasource) {
		self.checkScope('esi-markets.structure_markets.v1');
    self.requestByPrefix("structures/$id", :$datasource);
  }

  method marketRegionHistory($id, :$datasource, Int :$type_id) {
    self.requestByPrefix("$id/history", :$datasource, :$type_id);
  }

  method marketRegionOrders($id, :$datasource, Str :$order_type, Int :$type_id) {
		die "<order_type> must be one of 'all', 'sell' or 'buy'"
			unless $order_type eq <all sell buy>.any;

    self.requestByPrefix("$id/orders", :$datasource, :$type_id, :$order_type);
  }

  method matketRegionTypes($id, :$datasource) {
    self.requestByPrefix("$id/types", :$datasource);
  }

	#method marketCharacterOrders, NYI -- to be implemented in ::ESI::Character object.

}
