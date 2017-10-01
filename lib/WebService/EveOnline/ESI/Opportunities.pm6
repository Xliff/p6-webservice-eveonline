use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Opportunities {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/opportunities/");
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

	# cw: --- TODO ---
	# getCharOpportinities - Alias to getCharacterOpportunities
	# getCharcterOpportunities - Alias to Character object.
	
}
