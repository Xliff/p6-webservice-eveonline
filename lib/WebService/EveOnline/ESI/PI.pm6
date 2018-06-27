use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;
use WebService::EveOnline::ESI::Universe;

class WebService::EveOnline::ESI::PI {
  has $!char-api;
  has $!corp-api;
  has $!uni-api;

  submethod BUILD {
    if self.sso.defined {
      $!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
      $!corp-api = WebSerivce::EveOnline::ESI::Character.new(self.sso);
      $!uni-api = WebService::EveOnline::ESI::Universe.new;
    }
  }

  method getCharacterPlanets(:$datasource) {
    die "No authorization has been provided for this method."
      unless self.sso.defined;

    $!char-api.getPlanets(:$datasource);
  }

  method getCharacterPlanet($pid, :$datasource) {
    die "No authorization has been provided for this method."
      unless self.sso.defined;

    $!char-api.getPlanet($pid, :$datasource);
  }

  method getCorporationCustomsOffices(:$datasource) {
    die "No authorization has been provided for this method."
      unless self.sso.defined;

    $!corp-api.getCustomsOffices(:$datasource);
  }

  method getUniverseSchematics($sid, :$datasource) {
    $!uni-api.getSchematics($sid, :$datasource);
  }

}
