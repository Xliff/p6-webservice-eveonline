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

  method getCharacterAssets ($characterID?, :$datasource) {
		$!char-api.getCharacterAssets($characterID, :$datasource);
	}

	method getCorporationAssets ($corporationID?, :$datasource) {
		my $cid = $corporationID // $!corpID;
		$!corp-api.getCorporationsAssets($cid, :$datasource);
	}

	method getCharacterAssetLocations (@item_ids, $characterID?, :$datasource) {
		$!char-api.getCorporateAseetLocations(
			$characterID, @item_ids, :$datasource
		);
	}

  method getCorporationAssetLocations (@item_ids, $corporationID?, :$datasource) {
		$!corp-api.getCorporateAseetLocations(
			$corporationID, @item_ids, :$datasource
		);
	}

	method getCharacterAssetNames(@item_ids, $characterID?, :$datasource) {
		$!char-api.getCharacterAssetNames(
			$characterID, @item_ids, :$datasource
		);
	}

	method getCorporationAssetNames(@item_ids, $corporationID?, :$datasource) {
		$!char-api.getCorporationAssetNames(
			$corporationID, @item_ids, :$datasource
		);
	}

}
