use v6.c;

class WebService::EveOnline::ESI::Corporation {
  also is WebService::EveONline::ESI::Base;

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/corporation/");
  }

  method getCorporationAssets ($corporationID, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<corporationID> must be an integer"
      unless $corporationID ~~ Int;

    self.requestByPrefix("{$corporationID}/assets/", :$datasource);
  }

  method getCorporationAssetLocations ($corporationID, @item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<corporationID> must be an integer"
      unless $corporationID ~~ Int;

    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    my %extras = (
      DATA => {
        item_ids => @item_ids.join(','),
      }
    );

    self.requestByPrefix(
      "{$corporationID}/assets/locations/", :$datasource,
      :method(RequestMethod::POST),
      |%extras
    );
  }

  method getCorporationAssetNames($corporationID, @item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<corporationID> must be an integer"
      unless $corporationID ~~ Int;

    my %extras = (
      DATA => {
        item_ids => @item_ids.join(','),
      }
    );

    self.requestByPrefix(
      "{$corporationID}/assets/names/", :$datasource,
      :method(RequestMethod::POST),
      |%extras
    );
  }


}
