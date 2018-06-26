use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Market {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;

	submethod BUILD {
		if self.sso.defined {
			$!char-api = WebService::EveOnline::ESI::Character(self.sso);
			$!corp-api = WebService::EveOnline::ESI::Corporation(self.sso);
		}
	}

  submethod TWEAK {
    self.appendPrefix("{ self.type }/markets/");
  }

	method new(:$sso) {
		self.bless(:$sso);
	}

	method character-id {
		self.sso.defined ?? self.sso.characterID !! Nil;
	}

	method corporation-id {
		self.sso.defined ?? $corp-api.corporation-id !! Nil;
	}

	method getCharacterOrders(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		$!char-api.getMarketOrders(:$datasource);
	}

	method getCharacterOrderHistory(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		$!char-api.getMarketOrdersHistory(:$datasource);
	}

	method getCorporationOrders(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		$!corp-api.getMarketOrders(:$datasource);
	}

	method getCorporationOrderHistory(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		$!corp-api.getMarketOrderHistory(:$datasource);
	}

  method getGroups(:$datasource) {
    self.requestByPrefix('groups/', :$datasource);
  }

  method getGroup($id, :$datasource, :$language) {
    self.requestByPrefix("groups/$id/", :$datasource, :$language);
  }

  method getPrices(:$datasource) {
    self.requestByPrefix('prices/', :$datasource);
  }

  method getStructureOrders($id, :$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		self.checkScope('esi-markets.structure_markets.v1');
    self.requestByPrefix("structures/$id/", :$datasource);
  }

  method getRegionHistory($id, :$datasource, Int :$type_id) {
    self.requestByPrefix("$id/history/", :$datasource, :$type_id);
  }

  method getRegionOrders($id, :$datasource, Str :$order_type, Int :$type_id) {
		die "<order_type> must be one of 'all', 'sell' or 'buy'"
			unless $order_type eq <all sell buy>.any;

    self.requestByPrefix("$id/orders/", :$datasource, :$type_id, :$order_type);
  }

  method getRegionTypes($id, :$datasource) {
    self.requestByPrefix("$id/types/", :$datasource);
  }

}
