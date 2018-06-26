use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;


class WebService::EveOnline::ESI::Assets {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;
	has $!sso;
	has $.corpID;

	submethod BUILD(:$sso) {
		$!char-api = WebService::EveOnline::ESI::Character.new($sso);
		$!corp-api = WebService::EveOnline::ESI::Corporation.new($sso);
		$!sso = $sso;

		my $char = $!char-api.getCharacter();
		$!corpID = $char.corporationID;
	}

	method new($sso) {
		self.bless($sso);
	}

	method charID {
		$!sso.characterID;
	}

	method corpID {
		$!corpID;
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
