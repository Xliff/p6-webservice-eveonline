use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Insurance {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/killmails/");
	}

	method get($id, $hash, :$datasource) {
		self.getKillMail($id, $hash, :$datasource) {
	}

	method getKillMail($id, $hash, :$datasource) {
		self.requestByPrefix("{ $id }/{ $hash }", :$datasource, :$language);
	}

	# method getCorpMails - Alias to getCorporationMails.
	# method geCorporationMails - Alias to Corporation Object
	# method getCharMails - Alias to getCharMails
	# method getCharacterMails - Alias to Character Object

}
