use v6.c;

use JSON::Fast;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Character {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/characters/");
  }

	method getCharacterAssets ($characterID?, :$datasource) {
		my $cid = self.sso.characterID;

		$cid.say;

    self.checkScope('esi-assets.read_assets.v1');
    die "<characterID> must be an integer"
      unless $cid ~~ Int;

    self.requestByPrefix("{$cid}/assets/", :$datasource);
  }

  method getCharacterAssetLocations (@item_ids, :$datasource) {
		my $cid = self.sso.characterID;
    self.checkScope('esi-assets.read_assets.v1');
    die "<characterID> must be an integer"
      unless $cid.Int ~~ Int;

    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    self.postBodyByPrefix(
			"{$cid}/assets/locations/", to-json(@item_ids), :$datasource
		);
  }

  method getCharacterAssetNames(@item_ids, $characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
    self.checkScope('esi-assets.read_assets.v1');
    die "<characterID> must be an integer"
      unless $cid ~~ Int;

			self.postBodyByPrefix(
				"{$cid}/assets/names/", to-json(@item_ids), :$datasource
			);
  }

	method getCharacterAffiliation(@characters, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characters.all() ~~ Int;

		self.postBodyByPrefix(
			'affiliation/', to-json(@characters), :$datasource
		);
	}

	method getCharacterNames(@characterIDs, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.all() ~~ Int;

		my %extras = (
			character_ids => @characterIDs.join(','),
		);

		self.requestByPrefix('names/', :$datasource, |%extras);
	}

	method getCharacter($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix($cid, :$datasource);
	}

	method getCharacterAgents($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_agents_research.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/agents_research/", :$datasource);
	}

	method getCharacterBlueprints($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_blueprints.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/blueprints/", :$datasource);
	}

	method getChracterCorporationHistory($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/corporationhistory/", :$datasource);
	}

	method getCharacterCSPA(@characterIDs, :$datasource) {
		my $cid = self.sso.characterID;
		self.checkScope('esi-characters.read_contacts.v1');
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.all() ~~ Int;

		self.postBodyByPrefix(
			"{$cid}/cspa/", to-json(@characterIDs), :$datasource
		);
	}

	method getCharacterFatigue($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_fatigue.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/fatigue/", :$datasource);
	}

	method getCharacterMedals($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_medals.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/medals/", :$datasource);
	}

	method getCharacterNotifications($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_notifications.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/notifications/", :$datasource);
	}

	method getCharacterNotificationContracts($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_notifications.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/notifications/contracts/", :$datasource);
	}

	method getCharacterPortrait($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/portrait/", :$datasource);
	}

	method getCharacterRoles($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_corporation_roles.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/roles/", :$datasource);
	}

	method getCharacterStandings($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_standings.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/standings/", :$datasource);
	}

	method getCharacterStats($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characterstats.read.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/stats/", :$datasource);
	}

	method getCharacterTitles($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		self.checkScope('esi-characters.read_titles.v1');
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{$cid}/titles/", :$datasource);
	}

}
