use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Incursions {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/industry/");
	}

	method getFAcilities(:$datasource) {
		self.requestByPrefix('facilities', :$datasource);
	}

	method getSystems(:$datasource) {
		self.requestByPrefix('systens', :$datasource)
	}

	# cw: --- TODO ---
	# character industry jobs will be a part of the Character object. The method
	# here would just be an alias. Method SHOULD be includes for completion.

}
