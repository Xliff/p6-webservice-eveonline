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

  method getChracterAssets($type_ids) {
		$!character.getAssets($type_ids);
	}

	method getCorporationAssets($type_ids) {
		$!corporation.getAssets($type_ids);
	}

}
