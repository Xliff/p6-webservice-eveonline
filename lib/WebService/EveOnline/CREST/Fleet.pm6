use v6.c;

class WebService::EveOnline::CREST::Fleet {
	also is WebService::EveOnline::CREST::Base;

  has $.fleet_route;

	method BUILD(:$fleet_route) {
    # cw: Tease apart $!fleet route to extract server?
    $!fleet_route = $fleet_route;
		$!request-prefix = "{ self.PREFIX{$.server} }";
	}

	method new(
    $fleet_route,
    $sso,
		:$server,
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'CREST/Fleet',
		:$cache_ttl = 300
	) {
    die "Must have an authorized Fleet Access token!"
      unless
    $sso ~~ WebService::EveOnline::SSO && $sso.tokenData.defined;

		self.bless(
      :$fleet_route,
      :$sso,
			:$server,
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_ttl
		);
	}

  method fleet {
    checkScope('fleetRead');

    self.makeRequest($.fleet_route);
  }

  method fleetMembers {
    checkScope('fleetRead');

    self.makeRequest("{ $.fleet_route }/members/");
  }

  method fleetMember(Int $Id) {
    checkScope('fleetRead');

    self.makeRequest("{ $.fleet_route }/members/{ $Id }/");
  }

  method fleetWings {
    checkScope('fleetRead');

    self.makeRequest("{ $.fleet_route }/wings/");
  }

  method fleetWing($Id) {
    checkScope('fleetRead');

    self.makeRequest("{ $.fleet_route }/wings/{ $Id }/");
  }

  method fleetSquads($wId) {
    checkScope('fleetRead');

    self.makeRequest("{ $.fleet_route }/wings/{ $Id }/squads/");
  }

}
