use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Server {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/server/';

	method new(
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'XML/Server',
		:$cache_key = 'cachedUntil'
	) {
		my $date_interp = sub (Str $dt) {
			my $mdt = $dt.subst(' ', 'T');

			return DateTime.new($mdt);
		};

		self.bless(
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_key,
			:cache_date_interp($date_interp)
		);
	}

	method serverStatus {
		return self.makeRequest(
			"{PREFIX}ServerStatus.xml.aspx"
		);
	}

}