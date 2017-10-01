use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::FactionWarfare {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/fw/");
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
