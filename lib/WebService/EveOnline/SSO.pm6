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

	# cw: Please note that there are places where I use backslash to quote
	#     characters in regexes. This is solely due to not screw up the
	#     syntactical highlighting in the editor I use for development.

	constant PREFIX = "https://login.eveonline.com";

	has $!realm;
	has $!postclient;
	has $!client;
	has $!xmldoc;
	has $.lastTokenDate;
	has $.expires;
	has $.tokenData;
	has %!fieldsInForm;
	has %.privateData;
	has @.scopes;

	# Store the Character ID selected so that consumers can query for it,
	# later.
	has $.characterID;

	submethod BUILD(:@scopes, :$realm) {
		$!client = HTTP::UserAgent.new(
			:max-redirects(5), :useragent<WebService::EveOnline v0.0.9 (rakudo)>
		);

		$!postclient = HTTP::UserAgent.new(
			:max-redirects(0),
			:useragent<WebService::EveOnline v0.0.9 (rakudo)>
		);

		@!scopes = @scopes;
		$!realm = $realm;

		self!getPrivateData;
	}

	method new(:@scopes, :$realm) {
		self.bless(:@scopes, :$realm);
	}

	method !encodeAuth {
		encode-base64(
			"{ %!privateData<client_id> }:{ %!privateData<secret_id> }", :str
		);
	}

	method !getPrivateData {
		# Override this to implement custom data retrieval method.
		if ".privateData".IO.e {
			my $contents = ".privateData".IO.slurp;
			for $contents ~~ m:g/(\w+) \s* '=' \s* (\S+)/ -> $m {
				%!privateData{$m[0].Str} = $m[1].Str;
			}
		}
	}

	method !getState {
		# Override to implement custom state value generation.
		'variable' ~ (^999).pick;
	}

	method !handleLogin {
		my @forms = $!xmldoc.elements(:TAG<form>, :RECURSE(100));
		my $form_data = {
		 	ClientIdentifier 	=> %.privateData<client_id>,
		 	UserName 			    => %.privateData<username>,
		 	Password			    => %.privateData<password>,
		 	RememberMe		    => 'false',
			realm				      => %.privateData<realm>
		};
		$form_data<realm> //= $!realm if $!realm.defined && $!realm.chars;

		my $formUrl = @forms[0]<action>;
		die "\nNo ACTION destionation provided in <FORM> tag."
			unless $formUrl.defined;

		unless $formUrl ~~ /^ 'http' s? \:\/\/ / {
			# cw: Will more than likely work for EVE, but NOT a real solution.
			$formUrl = "{ PREFIX }{ $formUrl }";
		}

		my $url;
		my $response;

		{
			$response = $!postclient.post($formUrl, $form_data);

			# If we get a redirect from the POST, preserve the response.
			CATCH {
				when X::HTTP::Response { $response = .response; }
			}
		}

		my @cookies = getCookies($response);
		for @cookies -> $c {
			$!client.cookies.push-cookie($c);
			$!postclient.cookies.push-cookie($c);
		}

		# cw: Not optimal, but this should generally work for the servers
		#     we connect to.
		$url = ~$response.header.field('Location').values;

		# cw: Attempt to pull info from $response.content
		if !$url.defined && $response.has-content {
			$!xmldoc = HTML::Parser::XML.new.parse($response.content);
			if $!xmldoc ~~ XML::Document {
				my @links = $!xmldoc.elements(:TAG<a>, :RECURSE(100));
				# cw: TODO - Incomplete code, but covering all bases. If no Location
				#            provided in header, then attempt to see if a probable
				#            link exists in the content.
				die "\nLink extraction from content, NYI.\n";
			}
		}

		die "\nRedirect provided no valid destination\n" unless $url.defined;

		unless $url ~~ /^^ https\:\/\/ / {
			# cw: MUST be HTTPS at this point.
		  $url = '/' ~ $url unless $url.substr(0, 1) eq '/';
			$url = "{ PREFIX }{ $url }"
		}

		# cw: -YYY-
		#     At this point, if URL has "/Account/LogOn" in it, then we've
		#     failed the authorization phase and should throw an exception.
		#say "U: $url";

		{
			$response = $!client.get($url);

			CATCH {
				when X::HTTP::NoResponse {
					$response = .response;
				}
			}
		}

		die "HTTP request to '$url' failed!" unless $response.is-success;

		@cookies = getCookies($response);
		for @cookies -> $c {
			$!client.cookies.push-cookie($c);
			$!postclient.cookies.push-cookie($c);
		}

		$response;
	}

	method !handleCharSelect {
		my $url;
		my @options = $!xmldoc.elements(:TAG<option>, :RECURSE<100>);

		die "No characters exist on this account!\n" unless @options.elems;

		my $input = '';
		my ($cid, $cName);
		my %toons = do for @options {
			if (%!privateData<CHARACTER> // '') eq $_[0].text {
				$cid = $input = $_<value>;
				$cName = $_[0].text;
			}
			$_[0].text => $_<value>
		};

		unless $input.chars {
			my @names = %toons.keys;

			if !@names.end {
				$input = %toons{@names[0]};
			} else {
				say "Please select the character to be used:\n";
				for @names.kv -> $i, $n {
					say "{ $i + 1 }: $n";
				}
				while
					!$input.chars 	||
					$input ~~ /\D/ 	||
					( $input.Int < 0 && $input.Int > @names.end )
				{
					$input = prompt "\nEnter your selection [or 0 to exit]: ";
					say "Invalid selection! Please try again or enter 0 to quit"
						if
							$input ~~ /\D/ &&
							($input.Int < 0 && $input.Int > @names.end);
					die "Exiting" if !$input.Int;
					$cName = @names[$input - 1];
					$cid = %toons{$cName};
				}
			}
		}

		my @forms = $!xmldoc.elements(:TAG<form>, :RECURSE(100));
		my $formUrl = @forms[0]<action>;
		unless $formUrl ~~ /^ 'http' s? \:\/\/ / {
			# cw: Will more than likely work for EVE, but NOT a real solution.
			$formUrl = "{ PREFIX }{ $formUrl }";
		}

		my $form_data;
		$!characterID = $form_data<CharacterId> = $cid;
		$form_data<action> = 'Authorize';
		for @( $!xmldoc.elements(
			:TAG<input>, :type<hidden>, :RECURSE(100)
		) ) -> $hf {
			$form_data{$hf<name>} = $hf<value>;
		}

		my $response;
		{
			$response = $!postclient.post($formUrl, $form_data);

			CATCH {
				when X::HTTP::Response { $response = .response }
			}
		}

		# cw: This will be a redirect, but it needs to be a GET, not
		#     a POST.
		#
		#     The problem here is that the cookes are MANGLED in the
		#     header.
		my $respHash = $response.header.hash;

		# cw: Throw behind DEBUG parameter.
		#for $respHash.keys -> $k {
		#	say "Header: $k => $respHash{$k}";
		#}

		my @cookies = getCookies($response);
		for @cookies -> $cookie {
			$!client.cookies.push-cookie($cookie);
			$!postclient.cookies.push-cookie($cookie);
		}

		say "Using character '{ $cName }' (#{ $cid })...";

		$response;
	}

	method !getBearerToken($form_data) {
		$!postclient.post(
			"{ PREFIX }/oauth/token",
			$form_data,
			:Authorization("Basic { self!encodeAuth }"),
		);
	}

	method !setTokenData($newTokenData) {
		$!tokenData = $newTokenData;
		$!lastTokenDate = DateTime.now;
		$!expires = $.lastTokenDate.later(:seconds($.tokenData<expires_in>));
	}

	method getHeader {
		{
			Authorization => "Bearer { $.tokenData<access_token> }"
		};
	}

	method getToken {
		my $state;

		# cw: Should throw an exception, instead.
		die "Missing required private parameters"
			unless
				%.privateData<client_id>.defined &&
				%.privateData<secret_id>.defined &&
				%.privateData<username>.defined  &&
				%.privateData<password>.defined;

		my $redir = %!privateData<redirect_uri> // "http://localhost:8888/";
		my $p = prepParams([
			[ 'response_type', 	'code' 					          ],
			[ 'redirect_uri', 	$redir 					          ],
			[ 'client_id', 		  %!privateData<client_id>  ],
			[ 'scope', 			    @.scopes.join(' ')  	    ],
			[ 'state',  		    ($state = self!getState)  ]
		]);
		my $url = "{ PREFIX }/oauth/authorize?{ $p }";
		my $response;

		$response = $!client.get($url);
		# cw: Should throw an exception, instead.
		die "HTTP request to '$url' failed!" unless $response.is-success;

		my $tokenCode;

		$!xmldoc = HTML::Parser::XML.new.parse($response.content);
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
				%!fieldsInForm<RememberMe>;

		$!xmldoc = HTML::Parser::XML.new.parse($response.content);
		@fields = $!xmldoc.elements(:TAG<input>, :RECURSE<100>);
		@sel = $!xmldoc.elements(:TAG<select>, :RECURSE<100>);

		%!fieldsInForm = ();
		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

		$response = self!handleCharSelect
			if %!fieldsInForm<CharacterId>;

		# At this point, the redirect should contain a code parameter.
		# Search for it.
		my $loc = $response.header.field('Location') // '';
		if $loc ~~ / code\= (<-[ & ]>+) / {
			$tokenCode = $/[0].Str;
		}

		# cw: Should be an exception
		die "Could not find tokenCode in response data"
			unless $tokenCode;

		my $form_data = {
			grant_type	=> 'authorization_code',
			code 				=> $tokenCode,
		};
		$response = self!getBearerToken($form_data);

		# cw: Should be an exception
		die "Token not retrieved due to unexpected error."
			unless $response.is-success;

		# cw: Maybe add code to output response if a flag is set?
		my $ct = $response.content-type;
		die "Invalid response content-type '$ct'. "
			unless $ct ~~ / ^^ 'application/json' /;

		my $jsonObj = from-json($response.content);
		self!setTokenData($jsonObj);
	}

	method refreshToken {
		my $form_data = {
			grant_type 		=> 'refresh_token',
			refresh_token 	=> $.tokenData<refresh_token>
		}
		my $response = self!getBearerToken($form_data);

		die "Token not refreshed due to unexpected error."
			unless $response.is-success;

		# cw: Maybe add code to output response if a flag is set?
		die "Invalid response content-type."
			unless $response.field('Content-Type') ~~ /^ 'application/json' /;

		my $jsonObj = from-json($response.content);
		self!setTokenData($jsonObj);
	}

}
