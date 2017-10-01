use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Alliance {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/alliances/");
	}

	method getAlliances(:$datasource) {
		self.requestByPrefix('', :$datasource);
	}

	multi method getAllianceNames($id, :$datasource) {
		nextwith($id.Array, :$datasource);
	}

	multi method getAllianceNames(@ids, :$datasource) {
		my %args<alliance_ids> = @ids.join(',');
		self.requestbyPrefix('names', :$datasource, |%args);
	}

	method getAlliance($id, :$datasource) {
		self.requestByPrefix($id, :$datasource);
	}

	method getAllianceCorporations($id, :$datasource) {
		self.requestByPrefix("{ $id }/corporations/", :$datasource);
	}

	method getAllianceIcons($id, :$datasource) {
		self.requestByPrefix("{ $id }/icons/", :$datasource);
	}

}
