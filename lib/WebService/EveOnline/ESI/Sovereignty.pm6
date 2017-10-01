use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Sovereignty {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/sovereignty/");
	}

	method getCampaigns(:$datasource) {
		self.getRequestByPrefix('campaigns', :$datasource);
	}

	method getMap(:$datasource) {
		self.getRequestByPrefix('map', :$datasource);
	}

	method getStructures(:$datasource) {
		self.getRequestByPrefix('structures', :$datasource);
	}

}
