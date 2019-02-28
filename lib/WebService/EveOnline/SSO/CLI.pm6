use v6.c;

use HTML::Parser::XML;
use HTTP::Cookies;
use XML;

use WebService::EveOnline::Utils;

use WebService::EveOnline::SSO::Base;

class WebService::EveOnline::SSO::CLI {
  also is WebService::EveOnline::SSO::Base
  
  # Entry point now looks like this: 
  #https://login.eveonline.com/oauth/authorize/?
  #  response_type=code&
  #  redirect_uri=< Encoded redirect URL >&
  #  client_id=< 3rdpartyClientId >&
  #  scope=<list of scopes delimited by %20>&
  #  state=< Rendom State Value >

	# cw: Please note that there are places where I use backslash to quote
	#     characters in regexes. This is solely due to not screw up the
	#     syntactical highlighting in the editor I use for development.

	
	#has $!postclient;
	has $!xmldoc;
  has %!fieldsInForm;

	submethod BUILD(
		:@scopes,
		:$realm,
		:$section,
		:$privatePrefix,
		:$privateFile
	) {

	}

	submethod TWEAK {
		self.getToken;
	}

	method new(
    :@scopes, 
    :$realm, 
    :$section, 
    :$privatePrefix, 
    :$privateFile
  ) {
		self.bless(
      :@scopes, :$realm, :$section, :$privatePrefix, :$privateFile
    );
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

		my $response;
		{
			$response = await $!client.post(
				$formUrl,
				content-type	=> 'application/x-www-form-urlencoded',
				body					=> $form_data
			);

			# If we get a redirect from the POST, preserve the response.
			# cw: Update for Cro
			CATCH {
				when X::HTTP::Response { $response = .response; }
			}
		}

		# my @cookies = getCookies($response);
		# for @cookies -> $c {
		# 	"C{$++}: { $c.gist }".say;
		#
		# 	$!client.cookies.push-cookie($c);
		# 	$!postclient.cookies.push-cookie($c);
		# }
		self.client.cookie-jar.add-cookie($_) for $response.cookies;

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
			$response = await self.client.get($url, :follow);

			CATCH {
				# cw: Update for Cro
				when X::HTTP::NoResponse {
					$response = .response;
				}
			}
		}

		die "HTTP request to '$url' failed!" 
      unless self.is-success($response);

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
		self.setCharacterID( $form_data<CharacterId> = $cid );
		$form_data<action> = 'Authorize';
		for @( $!xmldoc.elements(
			:TAG<input>, :type<hidden>, :RECURSE(100)
		) ) -> $hf {
			$form_data{$hf<name>} = $hf<value>;
		}

		my $response;
		{
			$response = await self.client.post(
				$formUrl,
				content-type	=> 'application/x-www-form-urlencoded',
				body          => $form_data
			);

			CATCH {
				when X::HTTP::Response { $response = .response }
			}
		}

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
		die "HTTP request to '$url' failed!" 
      unless self.is-success($response);

		self.client.headers.push(
			|$response.headers.grep( *.name eq 'Request-Context' )
		);

		my $tokenCode;

		$!xmldoc = HTML::Parser::XML.new.parse(await $response.body);
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

		$!xmldoc = HTML::Parser::XML.new.parse(await $response.body);
		@fields = $!xmldoc.elements(:TAG<input>, :RECURSE<100>);
		@sel = $!xmldoc.elements(:TAG<select>, :RECURSE<100>);

		%!fieldsInForm = ();
		for |(@fields, @sel).flat -> $f {
			next unless $f<name>.defined;
			%!fieldsInForm{$f<name>} = 1;
		}

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
			unless self.is-success($response);

		# cw: Maybe add code to output response if a flag is set?
		my $ct = $response.header('Content-Type');
		die "Invalid response content-type '$ct'."
			unless $ct ~~ / ^^ 'application/json' /;

		my $json = await $response.body;
		#$json.say;
		#my $jsonObj = from-json($json);
		self!.setTokenData($json);
	}

}
