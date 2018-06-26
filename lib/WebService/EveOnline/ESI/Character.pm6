use v6.c;

use JSON::Fast;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Character {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/characters/");
  }

	method character-id {
		self.sso.characterID;
	}

	method addContacts(@contacts, :$datasource) {
		die "<contacts> must be a list of Integers"
			unless @contact_ids.map( *.Int ).all() ~~ Int;

		self.checkScope('esi-characters.write_contacts.v1');
		self.postBodyByPrefix(
			"{ self.sso.characterID }/contacts/",
			to-json(@contacts),
			:$datasource
		);
	}

	method addFitting(%fitting, :$datasource) {
		die qq:to/DIE/;
<fitting> must contain the following items:
		description: A description of the fittings [Str]
		items: A list containing fitting items [Array].
			Fitting items [Hash] must consist of:
				flag: The fitting flag (hi, med, lo, drone, cargo, etc) [Int]
				quantity: The number of item_ids [Int]
				type_id: Type associated with the item [Int]
		name: The name of the fitting [Str]
		ship_type_id: The type_id associated with the ship this fitting is for. [Int]
DIE
			unless
				(%fitting<description> && %fitting<description> ~~ Str)
				||
				(%fitting<items> && % %fitting<items> ~~ Array && %fitting<items>.all ~~ Hash)
				||
				(%fitting<name> && %fitting<name> ~~ Str)
				||
				(%fitting<ship_type_id> && %fitting<ship_type_id> ~~ Int);

		self.postBodyByPrefix(
			"{ self.sso.characterID }/fittings/",
			to-json(%fitting),
			:$datasource
		);
	}

	method deleteContacts(@contacts, :$datasource) {
		die "<contacts> must be an array of Integers"
			unless @contacts.map( *.Int ).all() ~~ Int;

		self.checkScope('esi-characters.write_contacts.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/contacts/"
			:method(RequestMethod::DELETE),
			:contact_ids( @contacts.join(',') ),
			:$datasource
		);
	}

	method deletaFitting($fitting_id, :$datasource) {
		die "<fittingID> must be an Integer" ~~ Int;
		self.checkScope('esi-fittings.write_fittings.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/fittings/{ $fitting_id }/",
			:method(RequestMethod::DELETE,
			:$datasource
		);
	}

	method editContacts(@contacts, $changes, :$datasource) {
		die "<contacts> must be a list of Integers"
			unless @contacts.map( *.Int ).all() ~~ Int;
		die qq:to/DIE/;
	<changes> must have at least one of the following keys set:
	    label_ids: List of labels to add to the contact.
			standing: Real number from -10 to 10
			watched: 1 or 0
	DIE
			unless
				( $changes<label_ids> && $changes<label_ids>.map( *.Int ).all() ~~ Int )
				||
				( $changes<standing> && -10 < $changes<standing> < 10 )
				||
				( $changes<watched> && $changes<watched> == (1, 0).any() );

		self.putByPrefix(
			"{ self.sso.characterID }/contacts/",
			to-json(@contacts),
			:$datasource,
			|$changes.Hash
		);
	}

	method getAllAssets($characterID?, :$datasource) {
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
#$json.say;
			#
			my $o = from-json($json);
			$assetList.push: $o;
		}

		$assetList;
	}

	method getAgents(:$datasource) {
		self.checkScope('esi-characters.read_agents_research.v1');
		self.requestByPrefix("{ self.sso.characterID }/agents_research/", :$datasource);
	}

	method getAffiliation(@characters, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characters.all() ~~ Int;

		self.postBodyByPrefix(
			'affiliation/', to-json(@characters), :$datasource
		);
	}

	method getAssets (Int :$page = 1, :$datasource) {
		self.checkScope('esi-assets.read_assets.v1');

		# This may not be necessary after the move to CRO::Http
		my $url = "{ self.sso.characterID }/assets/?token=" ~ self.sso.tokenData<access_token>;
		$url ~= "&page={$page}" if $page;

		self.requestByPrefix($url, :$datasource);
	}

	method getAssetLocations (@item_ids, :$datasource) {
		my $cid = self.sso.characterID;
		self.checkScope('esi-assets.read_assets.v1');

		die "<item_ids> must be a list of integers"
			unless @item_ids.all() ~~ Int;

		self.postBodyByPrefix(
			"{$cid}/assets/locations/", to-json(@item_ids), :$datasource
		);
	}

	method getAssetNames(@item_ids, :$datasource) {
		self.checkScope('esi-assets.read_assets.v1');
		self.postBodyByPrefix(
			"{ self.sso.charachterID }/assets/names/",
			to-json(@item_ids),
			:$datasource
		);
	}

	method getBookmarks(:$datasource) {
		self.checkScope('esi-bookmarks.read_character_bookmarks.v1');
		self.requestByPrefix("{ self.sso.characterID }/bookmarks/", $datasource);
	}

	method getBookmarkFolders(:$datasource) {
		self.checkScope('esi-bookmarks.read_character_bookmarks.v1');
		self.requestByPrefix("{ self.sso.characterID }/bookmarks/folders/", :$datasource);
	}

	method getBlueprints(:$datasource) {
		self.checkScope('esi-characters.read_blueprints.v1');
		self.requestByPrefix("{ self.sso.characterID }/blueprints/", :$datasource);
	}

	method getCalendarEvents(:$datasource) {
		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix("{ self.sso.characterID }/calendar/", :$datasource);
	}

	method getCalendarEvent($eventid, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;

		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/calendar/{ $eventid }/",
			:$datasource
		);
	}

	method putCalendarEvent($eveentid, $response, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;
		die "<response> must be one of 'accepted', 'declined' or 'tentative'"
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
			:$datasource,
			|%extras
		);
	}

	method getCalendarEventAttendees($eventid, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;

		self.checkScope('esi-calendar.read_calendar_events.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/calendar/{ $eventid }/attendees/",
			:$datasource
		);
	}

	method getClones(:$datasource) {
		self.checkScope('esi-clones.read_clones.v1');
		self.requestByPrefix("{ self.sso.characterID }/clones/", :$datasource);
	}

	method getContacts(:$datasource) {
		self.checkScope('esi-characters.read_contacts.v1');
		self.requestByPrefix("{ self.sso.characterID }/contacts/", :$datasource);
	}

	method getContactLabels(:$datasource) {
		self.checkScope('esi-characters.read_contacts.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/contacts/labels/",
			:$datasource
		);
	}

	method getContracts(:$datasource) {
		self.checkScope('esi-contracts.read_character_contracts.v1');
		self.requestByPrefix("{ self.sso.characterID }/contracts/");
	}

	method getContractBids($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_character_contracts.v1');
		self.requestByPrefix("{ self.sso.characterID }/contracts/{ $cid }/bids/");
	}

	method getContractItems($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_character_contracts.v1');
		self.requestByPrefix("{ self.sso.characterID }/contracts/{ $cid }/items/");
	}

	method getCorporationHistory($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{ $cid }/corporationhistory/", :$datasource);
	}

	method getCSPA(@characterIDs, :$datasource) {
		my $cid = self.sso.characterID;
		self.checkScope('esi-characters.read_contacts.v1');
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.map( *.Int ).all() ~~ Int;

		self.postBodyByPrefix(
			"{ $cid }/cspa/", to-json(@characterIDs), :$datasource
		);
	}

	method getFatigue(:$datasource) {
		self.checkScope('esi-characters.read_fatigue.v1');
		self.requestByPrefix("{ self.sso.characterID }/fatigue/", :$datasource);
	}

	method getFittings(:$datasource) {
		self.checkScope('esi-fittings.read_fittings.v1');
		self.requestByPrefix("{ self.sso.characterID }/fittings/", :$datasource);
	}

	method getFleet(:$datasource) {
		self.checkScope('esi-fleets.read_fleet.v1');
		self.requestByPrefix("{ self.sso.characterID }/fleet/", $datasource);
	}

	method getInformation($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $cid.Int ~~ Int;

		self.requestByPrefix($cid, :$datasource);
	}

	method getImplants(:$datasource) {
		self.checkScope('esi-clones.read_implants.v1');
		self.requestByPrefix("{ self.sso.characterID }/implants/", $datasource);
	}

	method getIndustryJobs(:$datasource) {
		self.checkScope('esi-industry.read_character_jobs.v1');
		self.requestByPrefix("{ self.sso.characterID }/industry/jobs/", $datasource);
	}

	method getLocation(:$datasource) {
		self.checkScope('esi-location.read_location.v1');
		self.requestByPrefix("{ self.sso.characterID }/location/", $datasource);
	}

	method getLoyaltyPoints(:$datasource) {
		self.checkScope('esi-characters.read_loyalty.v1');
		self.requestByPrefix("{ self.sso.characterID }/loyalty/points/", :$datasource);
	}

	method getMedals(:$datasource) {
		self.checkScope('esi-characters.read_medals.v1');
		self.requestByPrefix("{ self.sso.characterID }/medals/", :$datasource);
	}

	method getMining(:$datasource) {
		self.checkScope('esi-industry.read_character_mining.v1');
		self.requestByPrefix("{ self.sso.characterID }/mining/", :$datasource);
	}

	method getNames(@characterIDs, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.map( *.Int ).all() ~~ Int;

		my %extras = (
			character_ids => @characterIDs.join(','),
		);

		self.requestByPrefix('names/', :$datasource, |%extras);
	}

	method getNotifications(:$datasource) {
		self.checkScope('esi-characters.read_notifications.v1');
		self.requestByPrefix("{ self.sso.characterID }/notifications/", :$datasource);
	}

	method getNotificationContracts(:$datasource) {
		self.checkScope('esi-characters.read_notifications.v1');
		self.requestByPrefix("{ self.sso.characterID }/notifications/contracts/", :$datasource);
	}

	method getOnlineInformation(:$datasource) {
		self.checkScope('esi-location.read_online.v1');
		self.requestByPrefix("{ self.sso.characterID }/online/", :$datasource);
	}

	method getPortrait($characterID?, :$datasource) {
		my $cid = $characterID // self.sso.characterID;
		die "<characterID> must be an integer"
			unless $characterID ~~ Int;

		self.requestByPrefix("{ $cid }/portrait/", :$datasource);
	}

	method getRecentKillmails(:$datasource) {
		self.checkScope('esi-killmails.read_killmails.v1');
		self.requestByPrefix("{ self.sso.characterID }/killmails/recent/", :$datasource);
	}

	method getRoles(:$datasource) {
		self.checkScope('esi-characters.read_corporation_roles.v1');
		self.requestByPrefix("{ $cid }/roles/", :$datasource);
	}

	method getShipInformation(:$datasource) {
		self.checkScope('esi-location.read_ship_type.v1');
		self.requestByPrefix("{ self.sso.characterID }/ship/", :$datasource);
	}

	method getStandings(:$datasource) {
		self.checkScope('esi-characters.read_standings.v1');
		self.requestByPrefix("{ self.sso.characterID }/standings/", :$datasource);
	}

	method getStats(:$datasource) {
		self.checkScope('esi-characterstats.read.v1');
		self.requestByPrefix("{ self.sso.characterID }/stats/", :$datasource);
	}

	method getTitles(:$datasource) {
		self.checkScope('esi-characters.read_titles.v1');
		self.requestByPrefix("{ self.sso.characterID }/titles/", :$datasource);
	}

	method getWarfareStats(:$datasource) {
		self.checkScope('esi-characters.read_fw_stats.v1');
		# XXX - Needs a self.request because this prefix has changed.
		self.requestByPrefix("{ self.sso.characterID }/fw/stats/", :$datasource);
	}

}
