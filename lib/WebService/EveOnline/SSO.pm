use v6.c;

class WebService::EveOnline::SSO {
	use Base64;
	use DateTime::Parse;
	use HTML::Parser::XML;
	use HTTP::UserAgent;
	use HTTP::Cookies;
	use XML;

	use WebService::EveOnline::Utils;

	has $.postclient;
	has $.client;
	has %.privateData;

	submethod BUILD {
		$!client = HTTP::UserAgent.new(
			:max-redirects(5), :useragent<WebService::Eve v0.0.1 (rakudo)>
		);

		$postclient = HTTP::UserAgent.new(
			:max-redirects(0), 
			:useragent<WebService::Eve v0.0.1 (rakudo)>
		);

		self!getPrivateData;
	}

	method !getPrivateData {
		# Override this to implement custom data retrieval method.
		if ".privateData".IO.e {
		my $contents = ".privateData".IO.slurp;
		for $contents ~~ m:g/(\w+) \s* '=' \s* (\S+)/ -> $m {
			%!privateData{$m[0].Str} = $m[1].Str;
		}
	}

	method !getState {
		# Override to implement custom state value generation.
		'variable' ~ (^999).pick;
	}
	
	method getToken is export {
		my $state;

		# cw: Should throw an exception, instead.
		die "Missing required private parameters"
			unless 
				%.privateData<client_id>.defined &&
				%.privateData<secret_id>.defined &&
				%.privateData<username>.defined  &&
				%.privateData<password>.defined;

		my $redir = %privteData<redirect_uri> // 'http://localhost:8888/';
		my $p = prepParams([
			#[ 'ReturnUrl', 	'/oauth/authorize' ],
			[ 'response_type', 	'code' 					 ],
			[ 'redirect_uri', 	$redir 					 ],
			[ 'client_id', 		%privateData<client_id>  ],
			[ 'scope', 			'characterFittingsRead'  ],
			[ 'state',  		($state = self!getState) ]
		]);

		my $prefix = "https://login.eveonline.com/";
		my $url = "{ $prefix }oauth/authorize?{ $p }";
		my $response;
		my $content;
	}

}