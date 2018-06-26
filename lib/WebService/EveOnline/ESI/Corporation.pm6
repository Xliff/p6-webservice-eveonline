use v6.c;

use WebService::EveOnline::ESI::Base;
use WebService::EveOnline::ESI::Character;

class WebService::EveOnline::ESI::Corporation {
  also is WebService::EveOnline::ESI::Base;

  has $.corporationID;

  submethod BUILD {
    use WebService::EveOnline::ESI::Character;
    my $char = WebService::EveOnline::ESI::Character.new(self.sso);
    $!corporationID = $char.corporationID;
  }

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/corporations/");
  }

  method !getCorpParam($cid?) {
    my $cid = $corpId // $.corporationID;

    die "<corporationID> must be an integer" unless $cid.Int ~~ Int;

    $cid;
  }

  method corporation-id {
    $!corporationID;
  }

  method getInformation($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.requestByPrefix($cid, :$datasource);
  }

  method getAllianceHistory($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.requestByPrefix("{ $cid }/alliancehistory/");
  }

  method getAssets (:$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    self.requestByPrefix("{ $!corporationID }/assets/", :$datasource);
  }

  method getAssetLocations (@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    self.postByPrefix(
      "{ $!corporationID }/assets/locations/",
      to-json(@item_ids),
      :$datasource,
    );
  }

  method getAssetNames(@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');

    self.postByPrefix(
      "{ $!corporationID }/assets/names/",
      to-json(@item_ids),
      :$datasource
    );
  }

  method getBookmarks(:$datasource) {
    self.checkScope('esi-bookmarks.read_corporation_bookmarks.v1');
    self.requestByPrefix("{ $.corporationID }/bookmarks/", :$datasource);
  }

  method getBookmarkFolders(:$datasource) {
    self.checkScope('esi-bookmarks.read_corporation_bookmarks.v1');
    self.requestByPrefix("{ $.corporationID }/bookmarks/folders/", $datasource);
  }

  method getBlueprints {
    # cw: [Optional] add single page retrieval
    self.checkScope('esi-corporations.read_blueprints.v1');
    self.requestByPrefix("{ $.corporationID }/blueprints/", :$datasource);
  }

  method getContacts(:$datasource) {
    elf.checkScope('esi-corporations.read_contacts.v1');
    self.requestByPrefix("{ $.corporationID }/contacts/", :$datasousrce);
  }

  method getContactLabels(:$datasource) {
    elf.checkScope('esi-corporations.read_contacts.v1');
    self.requestByPrefix("{ $.corporationID }/contacts/labels/", :$datasousrce);
  }

  method getContainerLogs(:$datasource) {
    # cw: [Optional] add single page retrieval
    self.checkScope('esi-corporations.read_container_logs.v1');
    self.requestByPrefix("{ $.corporationID }/containers/logs/", :$datasousrce);
  }

  method getContracts(:$datasource) {
		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $.corporationID }/contracts/");
	}

	method getContractBids($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $.corporationID }/contracts/{ $cid }/bids/");
	}

	method getContractItems($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $.corporationID }/contracts/{ $cid }/items/");
	}

  method getDivisions(:$datasource) {
    self.checkScope('esi-corporations.read_divisions.v1');
    self.requestByPrefix("{ $.corporationID }/divisions/", :$datasousrce);
  }

  method getFacilities(:$datasource) {
    self.checkScope('esi-corporations.read_facilities.v1');
    self.requestByPrefix("{ $.corporationID }/facilities/", $datasource);
  }

  method getIcon($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.requestByPrefix("{ $cid }/icons/", :$datasousrce);
  }

  method getMedals(:$datasource) {
    self.checkScope('esi-corporations.read_medals.v1');
    self.requestByPrefix("{ $.corporationID }/medals/", :$datasource);
  }

  method getMedalsIssued(:$datasource) {
    self.checkScope('esi-corporations.read_medals.v1');
    self.requestByPrefix("{ $.corporationID }/medals/issued/", :$datasource);
  }

  method getMembers(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $.corporationID }/members/", :$datasource);
  }

  method getMemberLimit(:$datasource) {
    self.checkScope('esi-corporations.track_members.v1');
    self.requestByPrefix("{ $.corporationID }/members/limit/", :$datasource);
  }

  method getMemberTitles(:$datasource) {
    self.checkScope('esi-corporations.read_titles.v1');
    self.requestByPrefix("{ $.corporationID }/members/titles/", :$datasource);
  }

  method getMemberTracking(:$datasource) {
    self.checkScope('esi-corporations.track_members.v1');
    self.requestByPrefix("{ $.corporationID }/members/membertracking/", :$datasource);
  }

  method getRoles(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $.corporationID }/roles/", :$datasousrce);
  }

  method getRoleHistory(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $.corporationID }/roles/history/", :$datasousrce);
  }

  method getShareHolders(:$datasource) {
    self.checkScope('esi-wallet.read_corporation_wallets.v1');
    self.requestByPrefix("{ $.corporationID }/shareholders/", :$datasousrce);
  }

  method getStandings(:$datasource) {
    self.checkScope('esi-corporations.read_standings.v1');
    self.requestByPrefix("{ $.corporationID }/standings/", :$datasousrce);
  }

  method getStarbases(:$datasource) {
    self.checkScope('esi-corporations.read_starbases.v1');
    self.requestByPrefix("{ $.corporationID }/starbases/", :$datasousrce);
  }

  method getStarbases($starbase_id, :$datasource) {
    self.checkScope('esi-corporations.read_starbases.v1');
    self.requestByPrefix("{ $.corporationID }/starbases/{ $starbase_id }", :$datasource);
  }

  method getStructures(:$datasource) {
    self.checkScope('esi-corporations.read_structures.v1');
    self.requestByPrefix("{ $.corporationID }/structures/", :$datasousrce);
  }

  method getTitles(:$datasource) {
    self.checkScope('esi-corporations.read_titles.v1');
    self.requestByPrefix("{ $.corporationID }/titles/", :$datasousrce);
  }

  method getNPCorps(:$datasource) {
    self.requestByPrefix("{ $.corporationID }/npccorps/", :$datasource);
  }

  method getWarfareStats(:$datasource) {
    self.checkScope('esi-corporations.read_fw_stats.v1');
    self.requestByPrefix("{ $.corporationID }/fw/stats/", :$datasource);
  }

}
