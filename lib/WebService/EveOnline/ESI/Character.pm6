use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Character {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/characters/");
  }

	method getCaracterAffiliation(@characterIDs, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.all() ~~ Int;

		my %extras = (
			characters => @characterIDs.join(','),
		);

		# cw: XXX - THIS IS A POST REQUEST
#		self.requestByPrefix('affiliation', :$datasource, |%extras);
	}

	method getCharacterNames(@characterIDs, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.all() ~~ Int;

		my %extras = (
			character_ids => @characterIDs.join(','),
		);

		self.requestByPrefix('names', :$datasource, |%extras);
	}

	method getCharacter($characterID, :$datasource) {
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix($characterID, :$datasource);
	}

	method getCharacterAgents($characterID, :$datasource) {
		self.checkScope('esi-characters.read_agents_research.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/agents_research/", :$datasource);
	}

	method getCharacterBlueprints($characterID, :$datasource) {
		self.checkScope('esi-characters.read_blueprints.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/blueprints/", :$datasource);
	}

	method getChracterCorporationHistory($characterID, :$datasource) {
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/corporationhistory/", :$datasource);
	}

	method getCaracterCSPA(@characterIDs, :$datasource) {
		self.checkScope('esi-characters.read_contacts.v1');
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.all() ~~ Int;

		my %extras = (
			characters => @characterIDs.join(','),
		);

		# cw: XXX - THIS IS A POST REQUEST
#		self.requestByPrefix('cspa', :$datasource, |%extras);
	}

	method getCharacterFatigue($characterID, :$datasource) {
		self.checkScope('esi-characters.read_fatigue.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/fatigue/", :$datasource);
	}

	method getCharacterMedals($characterID, :$datasource) {
		self.checkScope('esi-characters.read_medals.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/medals/", :$datasource);
	}

	method getCharacterNotifications($characterID, :$datasource) {
		self.checkScope('esi-characters.read_notifications.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/notifications/", :$datasource);
	}

	method getCharacterNotificationContracts($characterID, :$datasource) {
		self.checkScope('esi-characters.read_notifications.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/notifications/contracts/", :$datasource);
	}

	method getCharacterPortrait($characterID, :$datasource) {
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/portrait/", :$datasource);
	}

	method getCharacterRoles($characterID, :$datasource) {
		self.checkScope('esi-characters.read_corporation_roles.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/roles/", :$datasource);
	}

	method getCharacterStandings($characterID, :$datasource) {
		self.checkScope('esi-characters.read_standings.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/standings/", :$datasource);
	}

	method getCharacterStats($characterID, :$datasource) {
		self.checkScope('esi-characterstats.read.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/stats/", :$datasource);
	}

	method getCharacterTitles($characterID, :$datasource) {
		self.checkScope('esi-characters.read_titles.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$characterID}/titles/", :$datasource);
	}


}
