use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::API {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/api/';

	method new(
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'XML/API',
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

	method callList {
		return self.makeRequest(
			"{PREFIX}CallList.xml.aspx"
		);
	}

}