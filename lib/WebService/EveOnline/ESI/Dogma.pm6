use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Dogma {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/dogma/");
	}

	method getAttributes(:$datasource) {
		self.requestByPrefix('', :$datasource);
	}

	method getAttribute($id, :$datasource) {
		self.requestByPrefix($id, :$datasource);
	}

	method getEffects(:$datasource) {
		self.requestByPrefix('effects', :$datasource);
	}

	method getEffect($id, :$datasource) {
		self.requestByPrefix("effects/{ $id }", :$datasource);
	}

}
