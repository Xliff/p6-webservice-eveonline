use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::FactionWarfare {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;

	submethod BUILD {
		if self.sso.defined(
			$!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
			$!corp-api = WebService::EveOnline::ESI::Corporation.new(self.sso);
		}
	}

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/fw/");
	}

	method getCharacterWarfareStats(:$datasource) {
		die "Object must be instantiated with a valid <sso> token"
			unless self.sso.defined;

		$!char-api.getWarfareStats(:$datasource);
	}

	method getCorporationWarfareStats(:$datasource) {
		die "Object must be instantiated with a valid <sso> token"
			unless self.sso.defined;

		$!corp-api.getWarfareStats(:$datasource);
	}

	method getLeaderboards(:$datasource) {
		self.requestByPrefix('leaderboards', :$datasource);
	}

	method getLeaderChars(:$datasource) {
		self.getLeaderboardCharacters(:$datasource);
	}
	method getLeaderboardCharacters(:$datasource) {
		self.requestByPrefix('leaderboards/characters/', :$datasource);
	}

	method getLeaderCorps(:$datasource) {
		self.getLeaderboardCorporations(:$datasource);
	}
	method getLeaderboardCorporations(:$datasource) {
		self.requestByPrefix('leaderboards/corporations/', :$datasource);
	}

	method getStats(:$datasource) {
		self.requestByPrefix('stats', :$datasource);
	}

	method getSystems(:$datasource) {
		self.requestByPrefix('systems', :$datasource);
	}

	method getWars(:$datasource) {
		self.requestByPrefix('wars', :$datasource);
	}

}
