use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Incursions {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/incursions/");
	}

	method list(:$datasource) {
		self.getIncursions(:$datasource);
	}
	method getIncursions(:$datasource) {
		self.requestByPrefix('', :$datasource)
	}

}
