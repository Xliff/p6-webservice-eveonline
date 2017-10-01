use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Wars {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/wars/");
	}

	method get(:$datasource, :$max_war_id) {
		self.getWars(:$datasource, :$max_war_id);
	}
	method getWars(:$datasource, :$max_war_id) {
		die "<max_war_id> must be an integer!" unless $max_war_id ~~ Int;

		self.getRequestByPrefix('', :$datasource, :$max_war_id);
	}

	method getWar($id, :$datasource) {
		die "<id> must be an integer!" unless $id ~~ Int;

		self.getRequestByPrefix($id);
	}

	method getMails($id, :$datasource) {
		self.getKillMails($id, :$datasource);
	}
	method getKillMails($id, :$datasource) {
		self.getRequestByPrefix("{ $id }/killmails", :$datasource);
	}

}
