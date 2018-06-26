use v6.c;

use WebService::EveOnline::ESI::Base;

use WebService::EveOnline::ESI::Alliance;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;


class WebService::EveOnline::ESI::Contracts {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;
	has $!corp-api;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
		$!corp-api = WebService::EveOnline::ESI::Corporation.new(self.sso);
	}

	method new($sso) {
		self.bless(:$sso);
	}

	method chararacter-id {
		$!char-api.characterID;
	}

	method corporation-id {
		$!corp-api.corporationID;
	}

	method getCharacterContracts(:$datasource) {
		$!char-api.getContracts(:$datasource);
	}

	method getCharacterContractBids($cid, :$datasource) {
		$!char-api.getContractBids($cid, :$datasource);
	}

	method getCharacterContractItems($cid, :$datasource) {
		$!corp-api.getContractItems($cid, :$datasource);
	}

	method getCorporationContracts(:$datasource) {
		$!corp-api.getContracts(:$datasource);
	}

	method getCorporationContractBids($cid, :$datasource) {
		$!corp-api.getContractBids($cid, :$datasource);
	}

	method getCorporationContractItems($cid, :$datasource) {
		$!char-api.getContractItems($cid, :$datasource);
	}
}
