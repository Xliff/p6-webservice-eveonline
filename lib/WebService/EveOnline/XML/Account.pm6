use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::XML::Account {
	also is WebService::EveOnline::Base;

	constant PREFIX = 'https://api.eveonline.com/account/';

	has $.keyID;
	has $.vCode;

	submethod BUILD(
		:$keyID,
		:$vCode;
	) {
		$!keyID = $keyID;
		$!vCode = $vCode;
	}

	method new(
		:$keyID,
		:$vCode,
		:$user_agent
	) {
		die "Account calls require that the <keyID> is defined"
			unless $keyID.defined;

		die "Account calls requires that the <vCode> is defined"
			unless $vCode.defined;

		#callwith(:$user_agent);
		self.bless(:$keyID, :$vCode);
	}

	method makeRequest($url) {
		nextwith("$url?keyID={$.keyID}\&vCode={$.vCode}");
	}

	method accountStatus {
		return self.makeRequest(
			"{PREFIX}AccountStatus.xml.aspx"
		);
	}

	method apiKeyInfo {
		return self.makeRequest(
			"{PREFIX}APIKeyInfo.xml.aspx"
		);
	}

	method characters {
		return self.makeRequest(
			"{PREFIX}Characters.xml.aspx"
		);
	}
}