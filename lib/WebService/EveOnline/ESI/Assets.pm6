use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;


class WebService::EveOnline::ESI::Assets {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;
	has $.corpID;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
		$!corp-api = WebService::EveOnline::ESI::Corporation.new(self.sso);
	}

	method new($sso) {
		die "A valid SSO object passed as a parameter to new() is required."
			unless $sso ~~ WebService::EveOnline::SSO;
		self.bless(:$sso);
	}

	method character-id {
		self.sso.characterID;
	}

	method corporation-id {
		$!corp-api.corporation-id;
	}

  method getCharacterAssets (:$datasource) {
		$!char-api.getAssets(:$datasource);
	}

	method getCorporationAssets (:$datasource) {
		$!corp-api.getAssets($cid, :$datasource);
	}

	method getCharacterAssetLocations (@item_ids, :$datasource) {
		$!char-api.getAssetLocations(@item_ids, :$datasource);
	}

  method getCorporationAssetLocations (@item_ids, :$datasource) {
		$!corp-api.getAssetLocations(@item_ids, :$datasource);
	}

	method getCharacterAssetNames(@item_ids, :$datasource) {
		$!char-api.getAssetNames(@item_ids, :$datasource);
	}

	method getCorporationAssetNames(@item_ids, $corporationID?, :$datasource) {
		$!char-api.getAssetNames(@item_ids, :$datasource);
	}

}
