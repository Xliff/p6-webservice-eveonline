use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;


class WebService::EveOnline::ESI::Assets {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character.new( :sso(self.sso) );
		$!corp-api = WebService::EveOnline::ESI::Corporation.new( :sso(self.sso) );
	}

	method new($sso) {
		die "A valid SSO object passed as a parameter to new() is required."
			unless $sso ~~ ::('WebService::EveOnline::SSO');
		self.bless(:$sso);
	}

	method character-id {
		self.sso.characterID;
	}

	method corporation-id {
		$!corp-api.corporation-id;
	}

  method getCharacterAssets (:$filter, :$datasource) {
		$!char-api.getAssets(:$filter, :$datasource);
	}

	method getCorporationAssets (:$filter, :$datasource) {
		$!corp-api.getAssets(:$filter, :$datasource);
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

	# THESE ARE CONVENIENCE FUNCTIONS, BECAUSE BLUEPRINTS *ARE* ASSETS!
	method getCharacterBlueprints(:$datasource) {
		$!char-api.getBlueprints(:$datasource);
	}

	method getCorporationBlueprints(:$datasource) {
		$!corp-api.getBlueprints(:$datasource);
	}

}
