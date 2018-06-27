use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Opportunities {
	also is WebService::EveOnline::ESI::Base;

	has $!char-api;

	submethod BUILD {
		$!char-api = WebService::EveOnline::ESI::Character.new(self.sso);
	}

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/opportunities/");
	}

	method new(:$sso) {
		self.bless(:$sso);
	}

	method getCharacterOpportunities(:$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

	  $!char-api.getOpportunities(:$datasource);
	}

	method getGroups(:$datasource) {
		self.requestByPrefix("groups/", :$datasource);
	}

	method getGroup($id, :$datasource) {
		self.requestByPrefix("groups/{ $id }", :$datasource);
	}

	method getTasks(:$datasource) {
		self.requestByPrefix("tasks/", :$datasource);
	}

	method getTask($id, $datasource) {
		self.requestByPrefix("task/{ $id }", :$datasource);
	}

}
