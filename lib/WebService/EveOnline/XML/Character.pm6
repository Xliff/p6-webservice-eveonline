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
	my @methods = <
		accountBalance
		assetList
		blueprints
		bookmarks
		calendarEventAttendees
		characterSheet
		chatChannels
		contactList
		contactNotifications
		contractBids
		contractItems
		contracts
		facWarStats
		industryJobs
		industryJobsHistory
		killLog
		killMails
		locations
		mailBodies
		mailingLists
		mailMessages
		marketOrders
		medals
		notifications
		notificationTexts
		planetaryColonies
		planetaryLinks
		planetaryPins
		planetaryRoutes
		research
		skillInTraining
		skillQueue
		standings
		upcomingCalendarEvents
		walletJournal
		walletTransactions
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

	method assetList(:$flat = 0) {
		return self.makeRequest(
			"{PREFIX}AssetList.xml.aspx?{$flat}",
		);
	}
	
	method FALLBACK($name, |c) {
		die "Method $name not found"
			unless @methods.grep({$_ eq $name});

		return self.makeRequest(
			"{PREFIX}{$name.tc}.xml.aspx",
		)
	}
}