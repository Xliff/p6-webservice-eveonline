use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Insurance {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/insurance/");
	}

	method getPrices(:$datasource) {
		self.requestByPrefix('prices', :$datasource);
	}

}
