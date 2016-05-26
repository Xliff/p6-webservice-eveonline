use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Map {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/map/';

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