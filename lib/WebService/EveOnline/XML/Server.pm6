use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Server {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/map/';

	method serverStatus {
		return self.makeRequest(
			"{PREFIX}ServerStatus.xml.aspx"
		);
	}

}