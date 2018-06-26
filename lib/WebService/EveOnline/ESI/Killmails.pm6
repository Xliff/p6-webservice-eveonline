use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Insurance {
	also is WebService::EveOnline::ESI::Base;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
		$!corp-api = WebService::EveOnline::ESI::Corporation.new(self.sso);
	}

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/killmails/");
	}

	method new(:$sso) {
		self.bless(:$sso);
	}

	method character-id {
		self.sso.characterID;
	}

	method corporation-id {
		$!corp-api.corporation-id;
	}

	method get($id, $hash, :$datasource) {
		self.getKillMail($id, $hash, :$datasource) {
	}

	method getKillMail($id, $hash, :$datasource) {
		self.requestByPrefix("{ $id }/{ $hash }/", :$datasource, :$language);
	}

	method getCharacterRecentKillmails(:$datasource) {
		die "Object not instantiated with SSO object, please provide one to use this method."
			unless self.sso.defined;

		$!char-api.getRecentKillmails(:$datasource);
	}

	method getCorporationRecentKillmails(:$datasource) {
		die "Object not instantiated with SSO object, please provide one to use this method."
			unless self.sso.defined;

		$!corp-api.getRecentKillmails(:$datasource);
	}

}
