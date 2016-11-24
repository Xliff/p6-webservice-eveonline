use v6.c;

class WebService::EveOnline::SSO {
	use Base64;
	use DateTime::Parse;
	use HTML::Parser::XML;
	use HTTP::UserAgent;
	use HTTP::Cookies;
	use JSON::Fast;
	use XML;

	use WebService::EveOnline::Utils;

	has $!postclient;
	has $!client;
	has $!xmlDoc;
	has %!fieldsInForm;
	has %.privateData;
	has $.tokenData;

	submethod BUILD {
		$!client = HTTP::UserAgent.new(
			:max-redirects(5), :useragent<WebService::Eve v0.0.1 (rakudo)>
		);

		$!postclient = HTTP::UserAgent.new(
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

	method !handleLogin {
		my @forms = $xmldoc.elements(:TAG<form>, :RECURSE(100));
		my $form_data = {
		 	ClientIdentifier 	=> %.privateData<client_id>,
		 	UserName 			=> %.privateData<username>,
		 	Password			=> %.privateData<password>,
		 	RememberMe			=> 'false'
		};

		my $formUrl = @forms[0]<action>;
		unless $formUrl ~~ /^ 'http' s? '://' / {
			# cw: Will more than likely work for EVE, but NOT a real solution.
			$formUrl = "{ $prefix }{ $formUrl }";
		}

		try {
			# cw: This doesn't seem to follow the same pattern as the last 
			#     request. There may not be an exception, here.
			CATCH {
				when X::HTTP::Response { .resume }
			}

			$response = $!postclient.post($formUrl, $form_data);
			# cw: We've rolled our own until a fix can be made for HTTP::UserAgent
			#     Probably has to do with early expiration or parsing in 
			#     HTTP::Cookies.
			my @cookies = getCookies($response);
			
			# cw: This will be a redirect, but it needs to be a GET, not
			#     a POST.
			for @cookies -> $c {
				# cw: Wrap in a DEBUG.
				#say "Cookie { $c.name } expires '{ $c.expires }'";

				$!client.cookies.push-cookie($c);
				$!postclient.cookies.push-cookie($c);
			}
			
			# cw: Not optimal, but this should generally work for the servers
			#     we connect to.
			$url = $response.header.field('Location');
			unless $url ~~ /^^ 'https://' / {
				# cw: MUST be HTTPS at this point.
				$url = "{ $prefix }{ $url }"
			}

			# cw: -YYY-
			#     At this point, if URL has "/Account/LogOn" in it, then we've 
			#     failed the authorization phase and should throw an exception.
		}

		try {
			CATCH {
				when X::HTTP::NoResponse {
					$response = .response;
				}
			}

			$response = $client.get($url);

			die "HTTP request to '$url' failed!" unless $response.is-success;

			$content = $response.content;
		}

		my @cookies = getCookies($response);
		for @cookies -> $c {
			$!client.cookies.push-cookie($c);
			$!postclient.cookies.push-cookie($c);
		}
		$!xmldoc = HTML::Parser::XML.new.parse($content);
		@fields = $xmldoc.elements(:TAG<input>, :RECURSE<100>); 
		@sel = $xmldoc.elements(:TAG<select>, :RECURSE<100>);

		%!fieldsInForm = ();
		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

		$response;
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

		$response = $client.get($url);
		# cw: Should throw an exception, instead.
		die "HTTP request to '$url' failed!" unless $response.is-success;	
		$content = $response.content;

		my $tokenCode;
				
		my $!xmldoc = HTML::Parser::XML.new.parse($content);
		my @fields = $!xmldoc.elements(:TAG<input>, :RECURSE<100>); 
		my @sel = $!xmldoc.elements(:TAG<select>, :RECURSE<100>);

		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

		$response = self!handleLogin 
			if 
				%!fieldsInForm<UserName> 			&& 
				%!fieldsInForm<Password> 			&&
				%!fieldsInForm<RememberMe>			&&
				%!fieldsInForm<ClientIdentifier>;
		
		$response = self!handleCharSelect 
			if %!fieldsInForm<CharacterId>;

		# At this point, the redirect should contain a code parameter. 
		# Search for it.
		my $loc = $response.header.field('Location') // '';
		if $loc ~~ / 'code=' (<-[ & ]>+) / {
			$tokenCode = $/[0];
		}

		# cw: Should be an exception
		die "Could not find tokenCode in response data"
			unless $tokenCode.chars;

		my $basic = encode-base64(
			"{ %privateData<client_id> }:{ %privateData<secret_id> }", :str
		);
		my $form_data = {
			grant_type	=> 'authorization_code',
			code 		=> $tokenCode, 
		};

		$response = $postclient.post(
			"{ $prefix }/oauth/token", 
			$form_data, 
			:Authorization("Basic $basic"),
		);

		# cw: Should be an exception
		die "Token not retrieved due to unexpected error."
			unless $response.is-success;

		$!tokenData = from-json($response.content);
	}

}