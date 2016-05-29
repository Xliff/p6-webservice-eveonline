use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Character {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/char/';

	has $.keyID;
	has $.vCode;
	has $.characterID;

	# cw: For now, the consuming application will need to worry about caching, 
	#     however some unified method of cache control should be implemented.
	#
	#     Probably WebService::EveOnline::Static::Cache.

	# cw: Validation structure for FALLBACK.
	my @fallBackMethods = <
		accountBalance
		blueprints
		bookmarks
		characterSheet
		chatChannels
		contactList
		contactNotifications
		contractBids
		contractItems
		facWarStats
		industryJobs
		industryJobsHistory
		killLog
		killMails
		mailingLists
		mailMessages
		medals
		notifications
		planetaryColonies
		research
		skillInTraining
		skillQueue
		standings
		upcomingCalendarEvents
	>;

	submethod BUILD(
		:$keyID,
		:$vCode,
		:$characterID
	) {
		$!keyID = $keyID;
		$!vCode = $vCode;
		$!characterID = $characterID;
	}

	method new(
		:$keyID,
		:$vCode,
		:$characterID,
		:$user_agent
	) {
		die "Character calls require that the <characterID> is defined"
			unless $characterID.defined;

		self.bless(:$keyID, :$vCode, :$characterID, :$user_agent);
	}

	method makeRequest($url) {
		my $u = $url;

		$u ~= ($u ~~ /\?/) ?? '&' !! '?';
		$u ~= "keyID={$.keyID}\&vCode={$.vCode}\&characterID={$.characterID}";

		#say "U: $u";
	
		nextwith($u);
	}

	method assetList(Int $flat = 0) {
		die "<flat> parameter must be 0 or 1"
			unless $flat == 0 || $flat == 1;

		return self.makeRequest(
			"{PREFIX}AssetList.xml.aspx?flat={$flat}"
		);
	}

	method calendarEventAttendees(@eventIDs) {
		die "<eventIDs> list must not contain non-integers" 
			if @eventIDs.first({$_.Int !~~ Int});

		# cw: API docs don't specify how @eventIDs is to be sent, so assuming 
		#     comma separated list.
		return self.makeRequest(
			"{PREFIX}AssetList.xml.aspx?eventIDs={@eventIDs.join(',')}"
		);
	}
	multi method calendarEventAttendees(Int $eventID) {
		return self.calendarEventAttendees($eventID.list);
	}

	method contractItems(Int $contractID) {
		return self.makeRequest(
			"{PREFIX}ContractItems.xml.aspx?contractID={$contractID}"
		);	
	}

	method contracts(Int $contractID?) {
		my $url = "{PREFIX}Contracts.xml.aspx";

		$url != "?contractID={$contractID}" if $contractID.defined;

		return self.makeRequest($url);
	}

	method locations(Int @typeIDs) {
		die "<typeIDs> list must not contain non-integers"
			if @typeIDs.first({$_.Int !~~ Int});

		# cw: API docs don't specify how @eventIDs is to be sent, so assuming 
		#     comma separated list.
		return self.makeRequest(
			"{PREFIX}Locations.xml.aspx?IDs={@typeIDs.join(',')}"
		);
	}
	multi method locations(Int $typeID) {
		return self.calendarEventAttendees($typeID.list);
	}

	method mailBodies(@IDs) {
		die "<IDs> list must not contain non-integers"
			if @IDs.first({$_.Int !~~ Int});

		# cw: API docs don't specify how @eventIDs is to be sent, so assuming 
		#     comma separated list.
		return self.makeRequest(
			"{PREFIX}MailBodies.xml.aspx?IDs={@IDs.join(',')}"
		);
	}
	multi method mailBodies(Int $ID) {
		return self.mailBodies($ID.list);
	}

	method marketOrders(Int $orderID?) {
		my $url = "{PREFIX}MarketOrders.xml.aspx";

		$url != "?orderID={$contractID}" if $orderID.defined;

		return self.makeRequest($url);
	}

	method notificationTexts(@IDs) {
		die "<IDs> list must not contain non-integers"
			if @IDs.first({$_.Int !~~ Int});

		# cw: API docs don't specify how @eventIDs is to be sent, so assuming 
		#     comma separated list.
		return self.makeRequest(
			"{PREFIX}NotificationTexts.xml.aspx?IDs={@IDs.join(',')}"
		);
	}
	multi method notificationTexts(Int $ID) {
		return self.notificationTexts($ID.list);
	}

	method planetaryLinks($planetID!) {		
		return self.makeRequest(
			"{PREFIX}PlanetaryLinks.xml.aspx?planetID={$planetID}"
		);
	}

	method planetaryPins(Int $planetID!) {		
		return self.makeRequest(
			"{PREFIX}PlanetaryPins.xml.aspx?planetID={$planetID}"
		);
	}

	method planetaryRoutes(Int $planetID!) {		
		return self.makeRequest(
			"{PREFIX}PlanetaryRoutes.xml.aspx?planetID={$planetID}"
		);
	}

	method walletJournal(
		Int :$accountKey = 1000,
		Int :$fromID,
		Int :$rowCount
	) {
		my $url = "{PREFIX}WalletJournal.xml.aspx?accountKey={$accountKey}";

		$url ~= "\&fromID={$fromID}" if $fromID.defined;
		$url ~= "\&rowCount={$rowCount}" if $rowCount.defined;

		return self.makeRequest($url);
	}

	method walletTransactions(
		Int :$accountKey = 1000,
		Int :$fromID,
		Int :$rowCount
	) {
		my $url = "{PREFIX}WalletTransactions.xml.aspx?accountKey={$accountKey}";

		$url ~= "\&fromID={$fromID}" if $fromID.defined;
		$url ~= "\&rowCount={$rowCount}" if $rowCount.defined;

		return self.makeRequest($url);
	}

	method FALLBACK($name, |c) {
		die "Method $name not found"
			unless @fallBackMethods.grep({$_ eq $name});

		return self.makeRequest(
			"{PREFIX}{$name.tc}.xml.aspx",
		)
	}
}