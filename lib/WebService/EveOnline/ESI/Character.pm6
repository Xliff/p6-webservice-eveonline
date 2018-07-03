use v6.c;

use JSON::Fast;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Character {
	also is WebService::EveOnline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/characters/");
  }

	method new(:$sso) {
		self.bless(:$sso);
	}

	method character-id {
		self.sso.characterID;
	}

	method corporation-id {
		self.getInformation()<corporation_id>;
	}

	method addContacts(@contacts, :$datasource) {
		die '<contacts> must be a list of Integers'
			unless @contacts.map( *.Int ).all() ~~ Int;

		self.checkScope('esi-characters.write_contacts.v1');
		self.postBodyByPrefix(
			"{ self.sso.characterID }/contacts/",
			to-json(@contacts),
			:$datasource
		);
	}

	multi method addFitting($fitting, :$datasource) {
		die "<fitting> must be a Hash" unless $fitting ~~ Hash;
		nextwith($fitting.Hash, :$datasource);
	}

	multi method addFitting(%fitting, :$datasource) {
		die qq:to/DIE/
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
				( %fitting<description> && %fitting<description> ~~ Str )
				||
				( %fitting<items> && %fitting<items> ~~ Array && %fitting<items>.all ~~ Hash )
				||
				( %fitting<name> && %fitting<name> ~~ Str )
				||
				( %fitting<ship_type_id> && %fitting<ship_type_id> ~~ Int );

		self.postBodyByPrefix(
			"{ self.sso.characterID }/fittings/",
			to-json(%fitting),
			:$datasource
		);
	}

	multi method addMailLabel($label, :$datasource) {
		die "<mailLabel> must be a Hash" unless $label ~~ Hash;
		nextwith($label.Hash, :$datasource);
	}

	multi method addMailLabel(%label, :$datasource) {
		die qq:to/DIE/
<mailLabel> must be a Hash containing the following items:
		color: An HTML color code string
		name: A string containing the name of the new label
DIE
			unless [&&](
				%label<color>.defined,
				%label<color> ~~ Str,
				%label<name>.defined,
				%label<name> ~~ Str
			);

		self.checkScope('esi-mail.organize_mail.v1');
		self.postBodyByPrefix(
			"{ self.sso.characterID }/mail/labels/",
			to-json(%label),
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

	method deletFitting($fitting_id, :$datasource) {
		die "<fittingID> must be an Integer" unless $fitting_id ~~ Int;
		self.checkScope('esi-fittings.write_fittings.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/fittings/{ $fitting_id }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method deleteMail($mid, :$datasource) {
		die "<mailID> must be an Integer" unless $mid ~~ Int;
		self.checkScope('esi-mail.organize_mail.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/mail/{ $mid }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method deleteMailLabel($lid, :$datasource) {
		die "<mailLabelID> must be an Integer" unless $lid ~~ Int;
		self.checkScope('esi-mail.organize_mail.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/mail/label/{ $lid }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method editContacts(@contacts, $changes, :$datasource) {
		die "<contacts> must be a list of Integers"
			unless @contacts.map( *.Int ).all() ~~ Int;
		die qq:to/DIE/
	<changes> must have at least one of the following keys set:
	    label_ids: List of labels to add to the contact.
			standing: Real number from -10 to 10
			watched: 1 or 0; True or False
	DIE
			unless
				( $changes<label_ids> && $changes<label_ids>.map( *.Int ).all() ~~ Int )
				||
				( $changes<standing> && -10 < $changes<standing> < 10 )
				||
				( $changes<watched> && $changes<watched> == (1, 0, True, False).any() )
				||
				( $changes<watched> && $changes<watched> ~~ m:i/'True'|'False'/ );

		my %usedChanges = $changes.clone;
		%usedChanges<watched> = %usedChanges.Bool.Str.lc;

		self.putByPrefix(
			"{ self.sso.characterID }/contacts/",
			to-json(@contacts),
			:$datasource,
			|%usedChanges
		);
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

	method getAssets (:$filter, :$datasource) {
		die qq:to/DIE/
<filter> must be a code block, which can filter on one or a combination of
the following traits:
	is_singleton, item_id, location_flag, location_id, location_type, type_id
	or quantity
DIE
			unless $filter ~~ (Block, Routine, WhateverCode).any;

		self.checkScope('esi-assets.read_assets.v1');

		# Hold this until we know if :$pages will stick around.
		my $url = "{ self.sso.characterID }/assets/";

		self.requestByPrefix($url, :$filter, :$datasource, :paged);
	}

	method getAssetLocations (@item_ids, :$datasource) {
		my $cid = self.sso.characterID;
		self.checkScope('esi-assets.read_assets.v1');

		die "<item_ids> must be a list of integers" unless @item_ids.all() ~~ Int;

		self.postBodyByPrefix(
			"{ $cid }/assets/locations/", to-json(@item_ids), :$datasource
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

	method getAttributes(:$datasource) {
		self.checkScope('esi-skills.read_skills.v1');
		self.requestByPrefix("{ self.sso.characterID }/attributes/", :$datasource);
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

	method putCalendarEvent($eventid, $response, :$datasource) {
		die "<eventID> must be an integer" unless $eventid ~~ Int;
		die "<response> must be one of 'accepted', 'declined' or 'tentative'"
			unless $response eq <accepted declined tentative>.all();

		self.checkScope('esi-calendar.respond_calendar_events.v1');
		self.putBodyByPrefix(
			"{ self.sso.characterID }/calendar/{ $eventid }/",
			to-json({ response => $response });
			:$datasource,
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
		die "<characterID> must be an integer" unless $cid.Int ~~ Int;

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

	method getMarketOrders(:$datasource) {
		self.checkScope('esi-markets.read_character_orders.v1');
		self.requestByPrefix("{ self.sso.characterID }/orders/", :$datasource);
	}

	method getMarketOrderHistory(:$datasource) {
		self.checkScope('esi-markets.read_character_orders.v1');
		self.requestByPrefix("{ self.sso.characterID }/orders/history/", :$datasource);
	}

	method getMedals(:$datasource) {
		self.checkScope('esi-characters.read_medals.v1');
		self.requestByPrefix("{ self.sso.characterID }/medals/", :$datasource);
	}

	method getMailHeaders(:$datasource) {
		self.checkScope('esi-mail.read_mail.v1');
		self.requestByPrefix("{ self.sso.characterID }/mail/", :$datasource);
	}

	method getMail($mid, :$datasource) {
		die "<mailID> must be an Integer." unless $mid ~~ Int;
		self.checkScope('esi-mail.read_mail.v1');
		self.requestByPrefix("{ self.sso.characterID }/mail/{ $mid }/", :$datasource);
	}

	method getMailLabels(:$datasource) {
		self.checkScope('esi-mail.read_mail.v1');
		self.requestByPrefix("{ self.sso.characterID }/mail/labels/", :$datasource);
	}

	method getMailLists(:$datasource) {
		self.checkScope('esi-mail.read_mail.v1');
		self.requestByPrefix("{ self.sso.characterID }/mail/lists/", :$datasource);
	}

	method getMining(:$datasource) {
		self.checkScope('esi-industry.read_character_mining.v1');
		self.requestByPrefix("{ self.sso.characterID }/mining/", :$datasource);
	}

	method getNames(@characterIDs, :$datasource) {
		die "<characterIDs> must be a list of integers"
			unless @characterIDs.map( *.Int ).all() ~~ Int;

		self.requestByPrefix(
			'names/',
			:$datasource,
			:character_ids( @characterIDs.join(',') )
		);
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

	method getOpportunities(:$datasource) {
		self.checkScope('esi-characters.read_opportunities.v1');
		self.requestByPrefix("{ self.sso.characterID }/opportunities/", :$datasource);
	}

	method getPlanet($pid, :$datasource) {
		die "<planetID> must be an Integer" unless $pid ~~ Int;
		self.checkScope('esi-planets.manage_planets.v1');
		self.requestByPrefix("{ self.sso.characterID }/planets/{ $pid }/", :$datasource);
	}

	method getPlanets(:$datasource) {
		self.checkScope('esi-planets.manage_planets.v1');
		self.requestByPrefix("{ self.sso.characterID }/planets/", :$datasource);
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
		self.requestByPrefix("{ self.sso.characterID }/roles/", :$datasource);
	}

	method getShipInformation(:$datasource) {
		self.checkScope('esi-location.read_ship_type.v1');
		self.requestByPrefix("{ self.sso.characterID }/ship/", :$datasource);
	}

	method getSkills(:$datasource) {
		self.checkScope('esi-skills.read_skillqueue.v1');
		self.requestByPrefix("{ self.sso.characterID }/skillqueue/", :$datasource);
	}

	method getSkillQueue(:$datasource) {
		self.checkScope('esi-skills.read_skills.v1');
		self.requestByPrefix("{ self.sso.characterID }/skills/", :$datasource);
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

	method getWallet(:$datasource) {
		self.checkScope('esi-wallet.read_character_wallet.v1');
		self.requestByPrefix("{ self.sso.characterID }/wallet/", :$datasource);
	}

	method getWalletJournal(:$datasource) {
		self.checkScope('esi-wallet.read_character_wallet.v1');
		self.requestByPrefix("{ self.sso.characterID }/wallet/journal/", :$datasource);
	}

	method getWalletTransactions(:$datasource) {
		self.checkScope('esi-wallet.read_character_wallet.v1');
		self.requestByPrefix("{ self.sso.characterID }/wallet/transactions/", :$datasource);
	}

	method getWarfareStats(:$datasource) {
		self.checkScope('esi-characters.read_fw_stats.v1');
		self.requestByPrefix("{ self.sso.characterID }/fw/stats/", :$datasource);
	}

	method search($search, @categories, :$strict, :$datasource) {
		my @val_cats = <
			agent alliance character constellation corporation faction
			inventory_type region solar_system station structure
		>;

		die qq:to/DIE/
<categories> must be a list of one of the following strings:
	{ @val_cats.join("\n\  ") }
DIE
		unless @categories.all() eq @val_cats.any();

		self.checkScope('esi-search.search_structures.v1');
		self.requestByPrefix(
			"{ self.sso.characterID }/search/",
			:categories( @categories.join(',') )
			:strict($strict.Bool.Str.lc),
			:$datasource
		);
	}

	multi method sendMail($mail-data, :$datasource) {
		die "<mailData> must be a Hash" unless $mail-data ~~ Hash;
		nextwith($mail-data.Hash, :$datasource);
	}

	multi method sendMail(%mail-data, :$datasource) {
		# cw: Consider breaking this up into separate checks. For now, this works:
		die qq:to/DIE/
<mailData> must be a has containing the following elements:
	approved_cost: Amount of CSPA fee for mail
	body: String contianing body of message
	recipients: A list containing recipient data:
		recipient_id: An ID number
		recipient_type: A string containing one of:
		 'alliance',
		 'character',
		 'corporation'
		 or
		 'alliance'
	subject: A string containing the contents of the subject line.
DIE
			unless [&&](
				%mail-data ~~ Hash,
				%mail-data<approved_cost>,
				%mail-data<approved_cost> ~~ Int,
				%mail-data<body> ~~ Str,
				%mail-data<recipients> ~~ Array,
				%mail-data<recipients>.all() ~~ Hash,
				%mail-data<subject> ~~ Str
			);

		self.checkScope('esi-mail.send_mail.v1');
		self.postBodyByPrefix(
			"{ self.sso.characterID }/mail/",
			to-json(%mail-data),
			:$datasource
		);
	}

	multi method updateMail($mid, $updates, :$datasource) {
		die "<updates> must be a Hash" unless $updates ~~ Hash;
		nextwith($mid, $updates.Hash, :$datasource);
	}

	multi method updateMail($mid, %updates, :$datasource) {
		die "<mailID> must be an Integer." unless $mid ~~ Int;

		die qq:to/DIE/
<updates> must be a hash containing the following items:
	labels: A list of IDs representing the labels to be assigned to the message
	read: A boolean value. A true value marks the message as being read.
DIE
			unless [&&](
				%updates<labels>.map( *.Int ).all() ~~ Int,
				%updates<read>.Bool ~~ Bool
			);

		my %usedUpdates = %updates.clone;
		%usedUpdates<read> = %updates<read>.Bool.Str.lc;

		self.putByPrefix(
			"{ self.sso.characterID }/mail/{ $mid }/",
			to-json(%usedUpdates),
			:$datasource,
		);
	}

}
