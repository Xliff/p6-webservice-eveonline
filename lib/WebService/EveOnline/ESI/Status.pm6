use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Status {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/status/");
	}

	method get(:$datasource) {
		self.getStatus(:$datasource);
	}
	method getStatus(:$datasource) {
		self.getRequestByPrefix('', :$datasource);
	}
	
}
