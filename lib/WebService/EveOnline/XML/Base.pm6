use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Base is WebService::EveOnline::Base {
	#constant PREFIX = 'https://api.eveonline.com/eve/';

	has $.keyID;
	has $.vCode;

	submethod BUILD(
		:$keyID,
		:$vCode
	) {
		$!keyID = $keyID;
		$!vCode = $vCode;
	}

	setKeyID(Int $keyID) {
		$!keyID = $keyID;
	}

	setVCode(Str $vCode) {
		$!vCode = $vCode;
	}
}