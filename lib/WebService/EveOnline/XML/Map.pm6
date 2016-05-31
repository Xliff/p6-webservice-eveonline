use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Map {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/map/';

	method new(
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add = 'XML/Map',
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

	method facWarSystems {
		return self.makeRequest(
			"{PREFIX}FacWarSystems.xml.aspx"
		);
	}

	method jumps {
		return self.makeRequest(
			"{PREFIX}Jumps.xml.aspx"
		);
	}

	method kills {
		return self.makeRequest(
			"{PREFIX}Kills.xml.aspx"
		);
	}

	method sovereignty {
		return self.makeRequest(
			"{PREFIX}Sovereignty.xml.aspx"
		);	
	}

}