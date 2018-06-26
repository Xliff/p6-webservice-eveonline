use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Incursions {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;

	submethod BUILD(:$sso) {
		if $sso.defined {
			$!char-api = WebService::EveOnline::ESI::Character.new($sso);
			$!corp-api = WebService::EveOnline::ESI::Corporation.new($sso);
		}
	}

	method character-id {
		self.sso.defined ?? self.sso.characterID !! Nil;
	}

	method corporation-id {
		self.sso.defined ?? $!corp-api.corporation-id !! Nil;
	}

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/industry/");
	}

	method getCharacterIndustryJobs(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!char-api.getIndustryJobs(:$datasource);
	}

	method getCorporationIndustryJobs(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!corp-api.getIndustryJobs(:$datasource);
	}

	method getCharacterMining(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!char-api.getMining(:$datasource);
	}

	method getCorporationMiningExtractions(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!corp-api.getMiningExtractions(:$datasource);
	}

	method getCorporationMiningObservers(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!corp-api.getMiningObservers(:$datasource);
	}

	method getCorporationMiningObserver($oid, :$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;
		$!corp-api.getMiningObserver($oid, :$datasource);
	}

	method getFacilities(:$datasource) {
		self.requestByPrefix('facilities', :$datasource);
	}

	method getSystems(:$datasource) {
		self.requestByPrefix('systens', :$datasource)
	}

}
