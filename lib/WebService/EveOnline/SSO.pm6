use v6.c;

use WebService::EveOnline::Base;

class WebService::EveOnline::SSO {
	use Base64;
	use Config::INI;
	use Cro::HTTP::Client;
	use DateTime::Parse;
	use HTML::Parser::XML;
#	use HTTP::UserAgent;
	use HTTP::Cookies;
	use JSON::Fast;
	use XML;

	use WebService::EveOnline::Utils;

	# cw: Please note that there are places where I use backslash to quote
	#     characters in regexes. This is solely due to not screw up the
	#     syntactical highlighting in the editor I use for development.

	constant PREFIX = "https://login.eveonline.com";
	constant DEFAULT_UA = 'WebService::EveOnline v0.5.0 (rakudo)';

	has %!fieldsInForm;
	has $!client;
	has $!privateFile;
	has $!privatePrefix;
	has $!realm;
	has $!section;
	has $!xmldoc;

	# Store the Character ID selected so that consumers can query for it,
	# later.
	has $.characterID;
	has $.expires;
	has $.lastTokenDate;
	has @.scopes;
	has $.tokenData;
	has %.privateData;


	submethod BUILD(
		:@scopes,
		:$realm,
		:$section,
		:$privatePrefix,
		:$privateFile,
		:$userAgent
	) {
		#$!client = HTTP::UserAgent.new(
		#	:max-redirects(5), :useragent<WebService::EveOnline v0.0.9 (rakudo)>
		#);
		#
		#$!postclient = HTTP::UserAgent.new(
		#	:max-redirects(0),
		#	:useragent<WebService::EveOnline v0.0.9 (rakudo)>
		#);

		$!client = Cro::HTTP::Client.new(
			:headers([
				User-agent => $userAgent // DEFAULT_UA
			]),
			:cookie-jar
			:!follow
		);
		$!client.cookie-jar.add-cookie(
			Cro::HTTP::Cookie.new(
				:name<rating>,
				:value<esrb>,
				:domain<eveonline.com>,
				:path</>,
				:expires( DateTime.now.later(:90days) ),
				:max-age( Duration.new(86400.0 * 90) ),
				:http-only(True)
			)
		);

		$!client.cookie-jar.add-cookie(
			Cro::HTTP::Cookie.new(
				:name<cultureinfo>,
				:value<cultureinfo=en-us>,
			  :domain<eveonline.com>,
			  :path</>,
			  :expires( DateTime.now.later(:90days) ),
			  :max-age( Duration.new(86400.0 * 90) ),
			  :http-only(True)
			)
		);

		$!privatePrefix = $privatePrefix // DEFAULT_HOME;
		$!privateFile = "{ $!privatePrefix }/{ $privateFile // 'privateData' }";
		$!section = $section // '_';

		@!scopes = @scopes;
		$!realm = $realm;

		self!getPrivateData;
	}

	submethod TWEAK {
		self.getToken;
	}

	method new(
		:@scopes,
		:$realm,
		:$section,
		:$privatePrefix,
		:$privateFile,
		:$userAgent
	) {
		self.bless(
			:@scopes,
			:$realm,
			:$section,
			:$privatePrefix,
			:$privateFile,
			:$userAgent
		);
	}

	method characterID {
		$!characterID;
	}

	method !is-success($r) {
		200 <= $r.status < 300;
	}

	method !encodeAuth {
		encode-base64(
			#"{ %!privateData<client_id> }:{ %!privateData<secret_id> }", :str
			%!privateData{$!section}<client_id secret_id>.join(':'), '', :str
		);
	}

	method !getPrivateData {
		# Override this to implement custom data retrieval method.
		# cw: Consider using a callback to implement custom retrieval rather
		#     than forced subclassing.
		%!privateData = Config::INI::parse($!privateFile.IO.slurp)
				if $!privateFile.IO.e
	}

	method !getState {
		# Override to implement custom state value generation.
		'variable' ~ (^999).pick;
	}

	method !handleLogin {
		my @forms = $!xmldoc.elements(:TAG<form>, :RECURSE(100));
		my $form_data = {
		 	ClientIdentifier 	=> %.privateData{$!section}<client_id>,
		 	UserName 			    => %.privateData<_><username>,
		 	Password			    => %.privateData<_><password>,
		 	RememberMe		    => 'false',
			#realm				      => %.privateData<_><realm>
		};
		#$form_data<realm> //= $!realm if $!realm.defined && $!realm.chars;
		for $!xmldoc.elements(:TAG<input>, :type<hidden>, :RECURSE(100)).List -> $hf {
			$form_data{$hf<name>} = $hf<value>;
		}

		my $formUrl = @forms[0]<action>;
		die "\nNo ACTION destionation provided in <FORM> tag."
			unless $formUrl.defined;

		unless $formUrl ~~ /^ 'http' s? '://' / {
			# cw: Will more than likely work for EVE, but NOT a real solution.
			$formUrl = "{ PREFIX }{ $formUrl }";
		}

		say "SSO-Init: $formUrl";

		my $response;
		{
			$response = await $!client.post(
				$formUrl,
				content-type	=> 'application/x-www-form-urlencoded',
				body					=> $form_data
			);
			say "!HANDLELOGIN -- response { $response.status }";

			# If we get a redirect from the POST, preserve the response.
			# cw: Update for Cro
			CATCH {

				when X::Cro::HTTP::Error::Client {
					say "Response died with an exception:";
					say "Status: { .response.status }";
					say "Message: { .response.message }";

					say "Body\n----\n{ $response.gist.say }";
				}

				when X::HTTP::Response           { $response = .response; }

			}
		}

		# my @cookies = getCookies($response);
		# for @cookies -> $c {
		# 	"C{$++}: { $c.gist }".say;
		#
		# 	$!client.cookies.push-cookie($c);
		# 	$!postclient.cookies.push-cookie($c);
		# }
		$!client.cookie-jar.add-cookie($_) for $response.cookies;

		# cw: Not optimal, but this should generally work for the servers
		#     we connect to.
		my $url = $response.header('Location').values;

		# cw: Attempt to pull info from $response.content
		my $content = await $response.body;
		if !$url.defined && $content ~~ Str && $content.chars {
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

		unless $url ~~ /^^ 'https://' / {
			# cw: MUST be HTTPS at this point.
		  $url = '/' ~ $url unless $url.substr(0, 1) eq '/';
			$url = "{ PREFIX }{ $url }"
		}

		# cw: -YYY-
		#     At this point, if URL has "/Account/LogOn" in it, then we've
		#     failed the authorization phase and should throw an exception.
		#say "U: $url";

		{
			$response = await $!client.get($url, :follow);

			CATCH {
				# cw: Update for Cro
				when X::HTTP::NoResponse {
					$response = .response;
				}

				when X::Cro::HTTP::Error::Client {
					say "Response died with an exception:";
					say "Status: { .response.status }";
					say "Message: { .response.message }";

					say "Body\n----\n{ $response.gist.say }";
				}
			}
		}
		say "!HANDLELOGIN(2) -- response { $response.status }";
		$!client.cookie-jar.add-cookie($_) for $response.cookies;

		die "HTTP request to '$url' failed!" unless self!is-success($response);

		# @cookies = getCookies($response);
		# for @cookies -> $c {
		# 	"C{$++}: { $c.gist }".say;
		#
		# 	$!client.cookies.push-cookie($c);
		# 	$!postclient.cookies.push-cookie($c);
		# }

		$response;
	}

	method !handleCharSelect {
		my $url;
		my @options = $!xmldoc.elements(:TAG<option>, :RECURSE<100>);

		die "No characters exist on this account!\n" unless @options.elems;

		my $input = '';
		my ($cid, $cName);
		my %toons = do for @options {
			if (%!privateData<_><CHARACTER> // '') eq $_[0].text {
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
		unless $formUrl ~~ /^ 'http' s? '://' / {
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
			$response = await $!client.post(
				$formUrl,
				content-type	=> 'application/x-www-form-urlencoded',
				body          => $form_data
			);

			CATCH {
				when X::HTTP::Response           { $response = .response }
				when X::Cro::HTTP::Error::Client {
					say "Response died with an exception:";
					say "Status: { .response.status }";
					say "Message: { .response.message }";

					say "Body\n----\n{ $response.gist.say }";
				}
			}
		}
		say "!HANDLECHARSELECT -- response { $response.status }";
		$!client.cookie-jar.add-cookie($_) for $response.cookies;

		# cw: This will be a redirect, but it needs to be a GET, not
		#     a POST.
		#
		#     The problem here is that the cookes are MANGLED in the
		#     header.
		#my $respHash = $response.header.hash;

		# cw: Throw behind DEBUG parameter.
		#for $respHash.keys -> $k {
		#	say "Header: $k => $respHash{$k}";
		#}

		# my @cookies = getCookies($response);
		# for @cookies -> $cookie {
		# 	$!client.cookies.push-cookie($cookie);
		# 	$!postclient.cookies.push-cookie($cookie);
		# }

		say "Using character '{ $cName }' (#{ $cid })...";

		$response;
	}

	method !getBearerToken($form_data) {
		# $!client.post(
		#  	"{ PREFIX }/oauth/token",
		#  	$form_data,
	 	#  	:Authorization("Basic { self!encodeAuth }"),
	  # );
		my $response = await $!client.post(
	  	"{ PREFIX }/oauth/token",
			content-type	=> 'application/x-www-form-urlencoded',
	  	body          => $form_data,
			auth          => {
				username => %!privateData{$!section}<client_id>,
				password => %!privateData{$!section}<secret_id>
			}
	  );

		say "!GETBEARERTOKEN -- Response: { $response.status }";

		$response;
	}

	method !setTokenData($newTokenData) {
		$!tokenData = $newTokenData;
		$!lastTokenDate = DateTime.now;
		$!expires = $.lastTokenDate.later(:seconds($.tokenData<expires_in>));
		$!tokenData.gist.say;
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
				%.privateData{$!section}<client_id>.defined &&
				%.privateData{$!section}<secret_id>.defined &&
				%.privateData<_><username>.defined  &&
				%.privateData<_><password>.defined;

		my $redir = %!privateData<redirect_uri> // "http://localhost:8888/";
		my $p = prepParams([
			[ 'response_type', 	'code' 					                     ],
			[ 'redirect_uri', 	$redir 					                     ],
			[ 'client_id', 		  %!privateData{$!section}<client_id>  ],
			[ 'scope', 			    @.scopes.join(' ')  	               ],
			[ 'state',  		    ($state = self!getState)             ]
		]);
		my $url = "{ PREFIX }/oauth/authorize?{ $p }";
		my $response;

		$response = await $!client.get($url, :follow);
		# cw: Should throw an exception, instead.
		die "HTTP request to '$url' failed!" unless self!is-success($response);

		say "GETTOKEN -- Response: { $response.status }";

		$!client.headers.push(
			|$response.headers.grep( *.name eq 'Request-Context' )
		);

		my $tokenCode;

		$!xmldoc = HTML::Parser::XML.new.parse(await $response.body);
		my @fields = $!xmldoc.elements(:TAG<input>, :RECURSE<100>);
		my @sel = $!xmldoc.elements(:TAG<select>, :RECURSE<100>);

		%!fieldsInForm = ();
		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

		$response = self!handleLogin
			if
				%!fieldsInForm<UserName> 			&&
				%!fieldsInForm<Password> 			&&
				%!fieldsInForm<RememberMe>;

		$!xmldoc = HTML::Parser::XML.new.parse(await $response.body);
		@fields = $!xmldoc.elements(:TAG<input>, :RECURSE<100>);
		@sel = $!xmldoc.elements(:TAG<select>, :RECURSE<100>);

		%!fieldsInForm = ();
		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

		%!fieldsInForm.gist.say;

		$response = self!handleCharSelect if %!fieldsInForm<CharacterId>;

		# At this point, the redirect should contain a code parameter.
		# Search for it.
		my $loc = $response.header('Location') // '';
		if $loc ~~ / code\= (<-[ & ]>+) / {
			$tokenCode = $/[0].Str;
		}

		# cw: Should be an exception
		die "Could not find tokenCode in response data" unless $tokenCode;

		my $form_data = {
			grant_type	=> 'authorization_code',
			code 				=> $tokenCode,
		};
		$response = self!getBearerToken($form_data);

		# cw: Should be an exception
		die "Token not retrieved due to unexpected error."
			unless self!is-success($response);

		# cw: Maybe add code to output response if a flag is set?
		my $ct = $response.header('Content-Type');
		die "Invalid response content-type '$ct'."
			unless $ct ~~ / ^^ 'application/json' /;

		my $json = await $response.body;
		#$json.say;
		#my $jsonObj = from-json($json);
		self!setTokenData($json);
	}

	method refreshToken {
		my $form_data = {
			grant_type 		=> 'refresh_token',
			refresh_token 	=> $.tokenData<refresh_token>
		}
		my $response = self!getBearerToken($form_data);

		die "Token not refreshed due to unexpected error."
			unless self!is-success($response);

		# cw: Maybe add code to output response if a flag is set?
		die "Invalid response content-type."
			unless $response.field('Content-Type') ~~ /^ 'application/json' /;

		#my $jsonObj = from-json(await $response.body);
		my $jsonObj = await $response.body;
		self!setTokenData($jsonObj);
	}

}
