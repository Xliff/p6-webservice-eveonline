use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Base is WebService::EveOnline::Base {
	constant PREFIX = 'https://api.eveonline.com/eve/';

	has $.characterID;
	has $.vCode;
	has $.prefix;

	submethod BUILD(
		:$keyID,
		:$vCode
	) {
		$!keyID = $keyID;
		$!vCode = $vCode;
		$!prefix = PREFIX;
	}	

	
}