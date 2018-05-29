use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;


class WebService::EveOnline::ESI::Assets {
	also is WebService::EveOnline::ESI::Base;

	has $!character;
	has $!corporation;

	submethod BUILD(:$sso) {
		$!character = WebService::EveOnline::ESI::Character.new($sso);
		$!corporation = WebService::EveOnline::ESI::Corporation.new($sso);
	}

	method new($sso) {
		self.bless($sso);
	}

  method getCharacterAssets ($corporationID, :$datasource) {
		$!character.getCharacterAssets($corporationID, :$datasource);
	}

	method getCorporationAssets ($corporationID, :$datasource) {
		$!corporation.getCorporationsAssets($corporationID, :$datasource);
	}

	method getCharacterAssetLocations ($characterID, @item_ids, :$datasource) {
		$!character.getCorporateAseetLocations(
			$characterID, @item_ids, :$datasource
		);
	}

  method getCorporationAssetLocations ($corporationID, @item_ids, :$datasource) {
		$!corporation.getCorporateAseetLocations(
			$corporationID, @item_ids, :$datasource
		);
	}

	method getCharacterAssetNames($characterID, @item_ids, :$datasource) {
		$!character.getCharacterAssetNames(
			$characterID, @item_ids, :$datasource
		);
	}

	method getCorporationAssetNames($characterID, @item_ids, :$datasource) {
		$!character.getCorporationAssetNames(
			$characterID, @item_ids, :$datasource
		);
	}


}
