use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;
use WebService::EveOnline::ESI::Corporation;

class WebService::EveOnline::ESI::Wallet {
  also is WebService::EveOnline::ESI::Base;
  
  has $!char-api;
  has $!corp-api;

  submethod BUILD {
    $!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
    $!corp-api = WebSerivce::EveOnline::ESI::Character.new(self.sso);
  }

  method new($sso) {
    die "A valid SSO object must be used to complete this instantiation."
      unless $sso ~~ WebService::EveOnline::SSO::Base;

    self.bless(:$sso);
  }

  method character-id {
    self.sso.characterID;
  }

  method corporation-id {
    $!corp-api.corporation-id;
  }

  method getCharacterWallet(:$datasource) {
    $!char-api.getWallet(:$datasource);
  }

  method getCharacterWalletJournal(:$datasource) {
    $!char-api.getWalletJournal(:$datasource);
  }

  method getCharacterWalletTransactions(:$datasource) {
    $!char-api.getWalletTransactions(:$datasource);
  }

  method getCorporationWallet(:$datasource) {
    $!corp-api.getWallet(:$datasource);
  }

  method getCorporationWalletJournal($div_id, :$datasource) {
    $!corp-api.getWalletJournal($div_id, :$datasource);
  }

  method getCorporationWalletTransactions($div_id, :$datasource) {
    $!corp-api.getWalletTransactions($div_id, :$datasource);
  }

}
