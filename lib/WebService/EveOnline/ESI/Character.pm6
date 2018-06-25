use v6.c;

use JSON::Fast;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Character {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/characters/");
  }

	method getAllCharacterAssets($characterID?, :$datasource) {
		my $firstPage = self.getCharacterAssets;

		my $topPage = $firstPage<__cache__><pages>;
		my $assetList = $firstPage<data>;
		my $url = $firstPage<__cache__><url>;

		for 2..$topPage -> $p {
			my $a = 2500;
			sleep ($a + (^$a / 2).pick) / 1000;
			my $curURL = "$url?token={self.sso.tokenData<access_token>}\&page={$p}";
			my $cmd = "curl -s '$curURL'";
			say "C{$p}: {$cmd}";
			my $json = qqx{$cmd};
			# cw: Also write $json out to a file.
$json.say;
			#
			my $o = from-json($json);
			$assetList.push: $o;
		}

		$assetList;
	}

	method getCharacterAssets (Int :$page, :$datasource) {
    self.checkScope('esi-assets.read_assets.v1');

		# This may not be necessary after the move to CRO::Http
		my $url = "{ self.sso.characterID }/assets/?token=" ~ self.sso.tokenData<access_token>;
		$url ~= "&page={$page}" if $page;

    self.requestByPrefix($url, :$datasource);
  }

  method getCharacterAssetLocations (@item_ids, :$datasource) {
		my $cid = self.sso.characterID;
    self.checkScope('esi-assets.read_assets.v1');

    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    self.postBodyByPrefix(
			"{$cid}/assets/locations/", to-json(@item_ids), :$datasource
		);
  }

  method getCharacterAssetNames(@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_assets.v1');
		self.postBodyByPrefix(
			"{ self.sso.charachterID }/assets/names/",
			to-json(@item_ids),
			:$datasource
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
			unless $cid.Int ~~ Int;

		self.requestByPrefix($cid, :$datasource);
	}

	method getCharacterAgents(:$datasource) {
		self.checkScope('esi-characters.read_agents_research.v1');
		self.requestByPrefix("{ self.sso.characterID }/agents_research/", :$datasource);
	}

	method getBookmarks(:$datasource) {
		self.checkScope('esi-bookmarks.read_character_bookmarks.v1');
		self.requestByPrefix("{ self.sso.characterID }/bookmarks/", $datasource);
	}

	method getBookmarkFolders(:$datasource) {
		self.checkScope('esi-bookmarks.read_character_bookmarks.v1');
		self.requestByPrefix("{ self.sso.characterID }/bookmarks/folders/", :$datasource);
	}

	method getCharacterBlueprints(:$datasource) {
		self.checkScope('esi-characters.read_blueprints.v1');
		self.requestByPrefix("{ self.sso.characterID }/blueprints/", :$datasource);
	}

	method getCalendarEvents(:$datasource) {
		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix("{ self.sso.characterID }/calendar/");
	}

	method getCalendarEvent($eventid, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;

		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix("{ self.sso.characterID }/calendar/{ $eventid }/");
	}

	method putCalendarEvent($eveentid, $response, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;
		die "response> must be one of 'accepted', 'declined' or 'tentative'"
			unless $response eq <accepted declined tentative>.all();

		my $extras = (
			DATA => {
				response => $response,
			}
		);

		self.checkScope('esi-calendar.respond_calendar_events.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/calendar/{ $eventid }/",
			:method(RequestMethod::PUT),
			|%extras
		);
	}

	method getCaldarEventAttendees($eventid, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;

		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix("{ self.sso.characterID }/calendar/{ $eventid }/attendees/");
	}

	method getClones(:$datasource) {
		self.checkScope('esi-clones.read_clones.v1');
		self.requesdtByPrefix("{ self.sso.characterID }/clones/", $datasource);
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

	method getImplants(:$datasource) {
		self.checkScope('esi-clones.read_implants.v1');
		self.requesdtByPrefix("{ self.sso.characterID }/implants/");
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
