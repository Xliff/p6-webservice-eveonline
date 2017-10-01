use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Loyalty {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/loyalty/");
	}

	method getOffers($id, :$datasource) {
		self.requestByPrefix("stors/{ $id }/offers", :$datasource);
	}

	# cw: --- TODO ---
	# getPoints - Alias to getCharacterPoints
	# getCharcterPoints - Alias to Character object.
}
