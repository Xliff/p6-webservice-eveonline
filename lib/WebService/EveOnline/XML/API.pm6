use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::API {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/map/';

	method callList {
		return self.makeRequest(
			"{PREFIX}CallList.xml.aspx"
		);
	}

}