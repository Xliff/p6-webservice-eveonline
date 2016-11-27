use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::CREST::Base {
	also is WebService::EveOnline::Base;

	has $.sso;

	submethod BUILD(:$sso) {
		$!sso = $sso;
	}

	method makeRequest($url, :$headers) {
		nextwith(
			$url, 
			:method(POST), 
			:header($.sso.getHeader.append($headers.pairs))
		)
	}
}