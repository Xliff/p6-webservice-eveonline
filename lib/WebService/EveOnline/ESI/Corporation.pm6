use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Corporation {
  also is WebService::EveOnline::ESI::Base;

  has $.corporationID;

  submethod BUILD {
    use WebService::EveOnline::ESI::Character;
    my $char = WebService::EveOnline::ESI::Character.new(self.sso);
    $!corporationID = $char.corporationID;
  }

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/corporation/");
  }

  method getCorporationAssets (:$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    self.requestByPrefix("{$!corporationID}/assets/", :$datasource);
  }

  method getCorporationAssetLocations (@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    my %extras = (
      DATA => {
        item_ids => @item_ids.join(','),
      }
    );

    self.requestByPrefix(
      "{$!corporationID}/assets/locations/", :$datasource,
      :method(RequestMethod::POST),
      |%extras
    );
  }

  method getCorporationAssetNames(@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');

    my %extras = (
      DATA => {
        item_ids => @item_ids.join(','),
      }
    );

    self.requestByPrefix(
      "{$!corporationID}/assets/names/", :$datasource,
      :method(RequestMethod::POST),
      |%extras
    );
  }


}
