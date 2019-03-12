use v6.c;

use Method::Also;

use WebService::EveOnline::Utils;
use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Corporation {
  also is WebService::EveOnline::ESI::Base;

  has $!corporationID;
  has $.info;

  submethod BUILD {
    use WebService::EveOnline::ESI::Character;
    my $c = WebService::EveOnline::ESI::Character.new(sso => self.sso);
    $!corporationID = $c.corporation-id;
  }

  submethod TWEAK {
    self.appendPrefix("/{ self.type }/corporations/");
  }

  multi method new(:$sso) {
    self.bless(:$sso);
  }
  multi method new($sso) {
    self.bless(:$sso);
  }

  method !getCorpId($corpId?) {
    my $cid = $corpId // self.corporation_id;

    die "<corporationID> must be an integer" unless $cid.Int ~~ Int;

    $cid;
  }

  method corporation-id is also<corporation_id> {
    $!corporationID
  }

  method getInformation($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    my $i = self.requestByPrefix("{ $cid }/", :$datasource);
    $!info = $i<data>;
    $i;
  }

  method getAllianceHistory($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.requestByPrefix("{ $cid }/alliancehistory/");
  }

  method getAssets (:$filter, :$datasource) {
    die qq:to/DIE/
<filter> must be a code block, which can filter on one or a combination of
the following traits:
  is_singleton, item_id, location_flag, location_id, location_type, type_id
  or quantity
DIE
      unless $filter ~~ (Block, Routine, WhateverCode).any;

    self.checkScope('esi-assets.read_corporation_assets.v1');

    my $ret = self.requestByPrefix(
      "{ $!corporationID }/assets/", :$filter, :$datasource, :paged
    );
		$ret<data>     = arrayToHash($ret<data>, 'item_id');
		$ret<filtered> = arrayToHash($ret<filtered>, 'item_id') if $ret<filtered>:exists;
		$ret;
  }

  method getAssetLocations (@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');
    die "<item_ids> must be a list of integers"
      unless @item_ids.all() ~~ Int;

    self.postJSONByPrefix(
      "{ $!corporationID }/assets/locations/",
      :body(@item_ids),
      :$datasource,
    );
  }

  method getAssetNames(@item_ids, :$datasource) {
    self.checkScope('esi-assets.read_corporation_assets.v1');

    self.postJSONByPrefix(
      "{ $!corporationID }/assets/names/",
      :body(@item_ids),
      :$datasource
    );
  }

  method getBookmarks(:$datasource) {
    self.checkScope('esi-bookmarks.read_corporation_bookmarks.v1');
    self.requestByPrefix("{ $!corporationID }/bookmarks/", :$datasource);
  }

  method getBookmarkFolders(:$datasource) {
    self.checkScope('esi-bookmarks.read_corporation_bookmarks.v1');
    self.requestByPrefix("{ $!corporationID }/bookmarks/folders/", $datasource);
  }

  method getBlueprints(:$filter, :$datasource) {
    # cw: [Optional] add single page retrieval
    self.checkScope('esi-corporations.read_blueprints.v1');

    my $ret = self.requestByPrefix(
      "{ $!corporationID }/blueprints/", :$filter, :$datasource, :paged
    );
    $ret<data>     = arrayToHash($ret<data>, 'item_id');
		$ret<filtered> = arrayToHash($ret<filtered>, 'item_id') if $ret<filtered>:exists;
		$ret;
  }

  method getContacts(:$datasource) {
    self.checkScope('esi-corporations.read_contacts.v1');
    self.requestByPrefix("{ $!corporationID }/contacts/", :$datasource);
  }

  method getContactLabels(:$datasource) {
    self.checkScope('esi-corporations.read_contacts.v1');
    self.requestByPrefix("{ $!corporationID }/contacts/labels/", :$datasource);
  }

  method getContainerLogs(:$datasource) {
    # cw: [Optional] add single page retrieval
    self.checkScope('esi-corporations.read_container_logs.v1');
    self.requestByPrefix("{ $!corporationID }/containers/logs/", :$datasource);
  }

  method getContracts(:$datasource) {
		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $!corporationID }/contracts/");
	}

	method getContractBids($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $!corporationID }/contracts/{ $cid }/bids/", :$datasource);
	}

	method getContractItems($cid, :$datasource) {
		die "<contractID> must be an Integer" unless $cid ~~ Int;

		self.checkScope('esi-contracts.read_corporation_contracts.v1');
		self.requestByPrefix("{ $!corporationID }/contracts/{ $cid }/items/", :$datasource);
	}

  method getCustomsOffices(:$datasource) {
    self.checkScope('esi-planets.read_customs_offices.v1');
    self.requestByPrefix("{ $!corporationID }/customs_offices/", :$datasource);
  }

  method getDivisions(:$datasource) {
    self.checkScope('esi-corporations.read_divisions.v1');
    self.requestByPrefix("{ $!corporationID }/divisions/", :$datasource);
  }

  method getFacilities(:$datasource) {
    self.checkScope('esi-corporations.read_facilities.v1');
    self.requestByPrefix("{ $!corporationID }/facilities/", :$datasource);
  }

  method getIcon($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.requestByPrefix("{ $cid }/icons/", :$datasource);
  }

  method getRecentKillmails(:$datasource) {
    self.checkScope('esi-killmails.read_corporation_killmails.v1');
    self.requestByPrefix("{ $!corporationID }/killmails/recent/", $datasource);
  }

  method getIndustryJobs(:$datasource) {
    self.checkScope('esi-industry.read_corporation_jobs.v1');
    self.requestByPrefix("{ $!corporationID }/industry/jobs/", :$datasource);
  }

  method getMarketOrders(:$datasource) {
    self.checkScope('esi-markets.read_corporation_orders.v1');
    self.requestByPrefix("{ $!corporationID }/orders/", :$datasource);
  }

  method getMarketOrderHistory(:$datasource) {
    self.checkScope('esi-markets.read_corporation_orders.v1');
    self.requestByPrefix("{ $!corporationID }/orders/history/", :$datasource);
  }

  method getMedals(:$datasource) {
    self.checkScope('esi-corporations.read_medals.v1');
    self.requestByPrefix("{ $!corporationID }/medals/", :$datasource);
  }

  method getMedalsIssued(:$datasource) {
    self.checkScope('esi-corporations.read_medals.v1');
    self.requestByPrefix("{ $!corporationID }/medals/issued/", :$datasource);
  }

  method getMiningExtractions(:$datasource) {
    self.checkScope('esi-industry.read_corporation_mining.v1');
    self.requestByPrefix("{ $!corporationID }/mining/extractions/", :$datasource);
  }

  method getMiningObservers(:$datasource) {
    self.checkScope('esi-industry.read_corporation_mining.v1');
    self.requestByPrefix("{ $!corporationID }/mining/observers/", :$datasource);
  }

  method getMiningObserver($oid, :$datasource) {
    die "<observerID> must be an Integer." unless $oid ~~ Int;

    self.checkScope('esi-industry.read_corporation_mining.v1');
    self.requestByPrefix("{ $!corporationID }/mining/observers/{ $oid }/", :$datasource);
  }

  method getMembers(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $!corporationID }/members/", :$datasource);
  }

  method getMemberLimit(:$datasource) {
    self.checkScope('esi-corporations.track_members.v1');
    self.requestByPrefix("{ $!corporationID }/members/limit/", :$datasource);
  }

  method getMemberTitles(:$datasource) {
    self.checkScope('esi-corporations.read_titles.v1');
    self.requestByPrefix("{ $!corporationID }/members/titles/", :$datasource);
  }

  method getMemberTracking(:$datasource) {
    self.checkScope('esi-corporations.track_members.v1');
    self.requestByPrefix("{ $!corporationID }/members/membertracking/", :$datasource);
  }

  method getRoles(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $!corporationID }/roles/", :$datasource);
  }

  method getRoleHistory(:$datasource) {
    self.checkScope('esi-corporations.read_corporation_membership.v1');
    self.requestByPrefix("{ $!corporationID }/roles/history/", :$datasource);
  }

  method getShareHolders(:$datasource) {
    self.checkScope('esi-wallet.read_corporation_wallets.v1');
    self.requestByPrefix("{ $!corporationID }/shareholders/", :$datasource);
  }

  method getStandings(:$datasource) {
    self.checkScope('esi-corporations.read_standings.v1');
    self.requestByPrefix("{ $!corporationID }/standings/", :$datasource);
  }

  method getStarbases($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.checkScope('esi-corporations.read_starbases.v1');
    self.requestByPrefix("{ $cid }/starbases/", :$datasource);
  }

  method getStarbase($starbase_id, $corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.checkScope('esi-corporations.read_starbases.v1');
    self.requestByPrefix("{ $cid }/starbases/{ $starbase_id }/", :$datasource);
  }

  method getStructures($corpId?, :$datasource) {
    my $cid = self!getCorpId($corpId);
    self.checkScope('esi-corporations.read_structures.v1');
    self.requestByPrefix("{ $cid }/structures/", :$datasource);
  }

  method getTitles(:$datasource) {
    self.checkScope('esi-corporations.read_titles.v1');
    self.requestByPrefix("{ $!corporationID }/titles/", :$datasource);
  }

  method getNPCorps(:$datasource) {
    self.requestByPrefix("{ $!corporationID }/npccorps/", :$datasource);
  }

  method getWallet(:$datasource) {
    self.checkScope('esi-wallet.read_corporation_wallets.v1');
    self.requestByPrefix("{ $!corporationID }/wallet/", :$datasource);
  }

  method getWalletJournal($div_id, :$datasource) {
    die "<divisionID> must be an Integer." unless $div_id ~~ Int;

    self.checkScope('esi-wallet.read_corporation_wallets.v1');
    self.requestByPrefix("{ $!corporationID }/wallet/{ $div_id }/journal/", :$datasource);
  }

  method getWalletTransactions($div_id, :$datasource) {
    die "<divisionID> must be an Integer." unless $div_id ~~ Int;

    self.checkScope('esi-wallet.read_corporation_wallets.v1');
    self.requestByPrefix("{ $!corporationID }/wallet/{ $div_id }/transactions/", :$datasource);
  }

  method getWarfareStats(:$datasource) {
    self.checkScope('esi-corporations.read_fw_stats.v1');
    self.requestByPrefix("{ $!corporationID }/fw/stats/", :$datasource);
  }

}
