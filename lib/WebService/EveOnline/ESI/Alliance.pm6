use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Alliance {
	also is WebService::EveOnline::ESI::Base;

	has $!alliance_id;
	has $!datasource;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/alliances/");
	}

	submethod BUILD(:$datasource) {
    use WebService::EveOnline::ESI::Corporation;
    my $corp = WebService::EveOnline::ESI::Corporation.new(self.sso);
		$!datasource = $datasource;
		my $i = $corp.getInformation(:datasource($!datasource));
    $!alliance_id = $i<alliance_id>;
  }

	method character-id {
		self.sso.characterID;
	}

	method corporation-id {
		$!corp-api.corporationID;
	}

	method alliance-id {
		$!alliance_id;
	}

	method !getAllianceParam($id?) {
    my $aid = $id // $!alliance_id;

    die "<allianceID> must be an integer" unless $aid.Int ~~ Int;

    $aid;
  }

	method getAlliance($id?, :$datasource) {
		my $aid = self!getAllianceParam($id);
		self.requestByPrefix($aid, :$datasource);
	}

	method getAlliances(:$datasource) {
		self.requestByPrefix('', :$datasource);
	}

	method getContacts(:$datasource) {
		self.checkScope('esi-alliances.read_contacts.v1');
		self.requestByPrefix("{ $!alliance_id }/contacts/", :$datasource);
	}

	method getContactLabels(:$datasource) {
		self.checkScope('esi-alliances.read_contacts.v1');
		self.requestByPrefix("{ $!alliance_id }/contacts/labels/", :$datasource);
	}

	method getCorporations($id?, :$datasource) {
		my $aid = self!getAllianceParam($id);
		self.requestByPrefix("{ $aid }/corporations/", :$datasource);
	}

	method getIcons($id?, :$datasource) {
		my $aid = self!getAllianceParam($id);
		self.requestByPrefix("{ $aid }/icons/", :$datasource);
	}

	multi method getNames($ids, :$datasource) {
		nextwith($ids.Array, :$datasource);
	}

	multi method getNames(@ids, :$datasource) {
		die "<allianceIDs> must all be a list of Integer" unless @ids.all() ~~ Int;
		# TODO - This looks like it should be a request body. Insure that assumption
		#        is correct.
		my %args<alliance_ids> = @ids.join(',');
		self.requestbyPrefix('names', :$datasource, |%args);
	}

}
