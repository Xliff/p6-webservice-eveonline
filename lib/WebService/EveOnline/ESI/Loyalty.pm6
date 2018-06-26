use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;

class WebService::EveOnline::ESI::Loyalty {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character(self.sso)
			if self.sso.defined;
	}

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/loyalty/");
	}

	method character-id {
		sso.characterID
	}

	method getCharacterLoyaltyPoints(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		$!char-api.getLoyaltyPoints(:$datasource);
	}

	method getOffers($id, :$datasource) {
		die "<corporationID> must be an Integer" unless $id ~~ Int;
		self.requestByPrefix("stores/{ $id }/offers/", :$datasource);
	}

}
