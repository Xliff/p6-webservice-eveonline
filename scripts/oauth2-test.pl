use v6.c;

use Base64;
use DateTime::Parse;
use HTML::Parser::XML;
use HTTP::UserAgent;
use HTTP::Cookies;
use XML;

#use LWP::Simple;
#use Grammar::Tracer;

my grammar Cookie_Grammar {
    regex TOP {
        [\s* <cookie> ',' ?]*
    }

    regex cookie   {
        <name> '=' <value>? ';'? \s* <extras>*
    }
    token extras {
    	\s* [ 
    		<expires> || <path> || <secure> || <httponly>
		] ';'?
	}
    token separator { <[()<>@,;:\"/\[\]?={}\s\t]> }
    token name     { <[\S] - [()<>@,;:\"/\[\]?={}]>+ }
    token value    { <-[;]>+ }
    token expires  { 'expires=' <value> ';' }
    token path     { 'path=' <value> ';' }
    token arg      { <name> '=' <value> ';'? }
    token secure   { :i Secure ';'? }
    token httponly { :i HttpOnly ';'? }
}

sub urlEncode($s) {
	$s.subst(/<-alnum>/, *.ord.fmt("%%%02X"), :g); 
}

sub prepParams($l) {
	$l.map({ $_[1] = urlEncode($_[1]); $_.join('='); }).join('&');
}

sub cookieExtra($c, $f) {
	for $c<extras> -> $e {
		return $e{$f} if $e{$f}.defined;
	}
	Nil;
}

sub cookieExtraVal($c, $f) {
	 my $k = cookieExtra($c, $f);
	 $k.defined ?? $k<value> !! Nil;
}

sub getCookies($r) {
	my @cookies;
	my $broken_cookies = 
		$r.header.field('Set-Cookie').values.
		join(' ');
	$broken_cookies ~~ s:g/( 'path=/' || 'secure' ) \s/$0; /;
	my $g = Cookie_Grammar.parse($broken_cookies);

	for @( $g<cookie> ) -> $c {
		my $dts = (cookieExtraVal($c, 'expires') // '').Str;
		if $dts.chars {
			my $dt = DateTime::Parse.new($dts);
			if $dt.defined {
				next unless $dt > DateTime.now;
			}
		}
		
		@cookies.push(HTTP::Cookie.new(
			name 		=> $c<name>.Str,
			value 		=> ($c<value> // '').Str,
			expires 	=> ($dts // ''),
			path		=> (cookieExtraVal($c, 'path')  // '').Str,
			secure  	=> (cookieExtra($c, 'secure')   // '').Str.lc eq 'secure',
			httponly 	=> (cookieExtra($c, 'httponly') // '').Str.lc eq 'httponly'
		));
	}

	@cookies;
}

my $tokenCode;
my $bearerToken;

my %privateData;
if ".privateData".IO.e {
	my $contents = ".privateData".IO.slurp;
	for $contents ~~ m:g/(\w+) \s* '=' \s* (\S+)/ -> $m {
		%privateData{$m[0].Str} = $m[1].Str;
	}
}

# cw: API will need method for users to pass this information along.
#     It should handle the following fields:
#		clienxt_id
#		secret_key (secure)
#		username
#		password (secure)
# While we can try and hide behind the skirts of mode 0600 for a while,
# it should be assumed that anything marked as "(secure)" should eventually 
# be NOT stored as plain text. The tricky part is... how do you hide something
# in code, without exposing the method you used to hide things in the first place?
die "Missing required private parameters"
	unless 
		%privateData<client_id>.defined &&
		%privateData<secret_id>.defined &&
		%privateData<username>.defined  &&
		%privateData<password>.defined;

my $data;
my $state;

# cw: Encode and assemble query string.
my $p = prepParams([
	#[ 'ReturnUrl', 		'/oauth/authorize' ],
	[ 'response_type', 	'code' ],
	[ 'redirect_uri', 	'http://localhost:8888/' ],
	[ 'client_id', 		%privateData<client_id> ],
	[ 'scope', 			'characterFittingsRead' ],
	[ 'state',  		($state = 'variable' ~ (^999).pick) ]
]);

my $prefix = "https://login.eveonline.com/";
my $url = "{ $prefix }oauth/authorize?{ $p }";
my $client = HTTP::UserAgent.new(
	:max-redirects(5), :useragent<WebService::Eve v0.0.1>
);
my $postclient = HTTP::UserAgent.new(
	:max-redirects(0), 
	:useragent<WebService::Eve v0.0.1>
);
my $response;
my $content;

say "Fetching $url";
$response = $client.get($url);

die "HTTP request to '$url' failed!" unless $response.is-success;

$content = $response.content;

# cw: Now here is the tricky part. We need to look at the contents to see what
#     POST request we send, next. 
#
# First, check for login form.
my @hidden_fields;
my %found;
my $xmldoc = HTML::Parser::XML.new.parse($content);
my @fields = $xmldoc.elements(:TAG<input>, :RECURSE<100>); 
my @sel = $xmldoc.elements(:TAG<select>, :RECURSE<100>);

# cw: Should be a sub
for |(@fields, @sel).flat -> $f {
	next unless $f<name>.defined;
	push @hidden_fields, $f if ($f<type> // '') eq 'hidden';
	%found{$f<name>} = 1;
}

my @forms;
if (
	%found<UserName> 			&& 
	%found<Password> 			&&
	%found<RememberMe>			&&
	%found<ClientIdentifier>;
) {
	@forms = $xmldoc.elements(:TAG<form>, :RECURSE(100));
	# Send login data and get request.
	my $form_data = {
	 	ClientIdentifier 	=> %privateData<client_id>,
	 	UserName 			=> %privateData<username>,
	 	Password			=> %privateData<password>,
	 	RememberMe			=> 'false'
	};

	my $formUrl = @forms[0]<action>;
	unless $formUrl ~~ /^ 'http' s? '://' / {
		# cw: Will more than likely work for EVE, but NOT a real solution.
		$formUrl = "{ $prefix }{ $formUrl }";
	}

	say "Posting to $formUrl";
	try {
		# cw: This doesn't seem to follow the same pattern as the last 
		#     request. There may not be an exception, here.
		CATCH {
			when X::HTTP::Response { .resume }
		}

		$response = $postclient.post($formUrl, $form_data);
	
		# cw: This will be a redirect, but it needs to be a GET, not
		#     a POST.

		#     The problem here is that the cookes are MANGLED in the 
		#     header.

		my @cookies = getCookies($response);
		for @cookies -> $c {
			$client.cookies.push-cookie($c);
			$postclient.cookies.push-cookie($c);
		}
		
		# cw: Not optimal, but this should generally work for the servers
		#     we connect to.
		$url = $response.header.field('Location');
		unless $url ~~ /^^ 'https://' / {
			# cw: MUST be HTTPS at this point.
			$url = "{ $prefix }{ $url }"
		}
	}

	say "Redirecting to '$url'";
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
		$client.cookies.push-cookie($c);
		$postclient.cookies.push-cookie($c);
	}

	%found = ();
	$xmldoc = HTML::Parser::XML.new.parse($content);
	@fields = $xmldoc.elements(:TAG<input>, :RECURSE<100>); 
	@sel = $xmldoc.elements(:TAG<select>, :RECURSE<100>);

	# cw: Should be a sub
	for |(@fields, @sel).flat -> $f {
		next unless $f<name>.defined;
		push @hidden_fields, $f if ($f<type> // '') eq 'hidden';
		%found{$f<name>} = 1;
	}
}

# cw: Next, check for character selection form.
if %found<CharacterId> {
	my @options = $xmldoc.elements(:TAG<option>, :RECURSE<100>);

	die "No characters exist on this account!\n" unless @options.elems;

	my $input = '';
	my %toons = do for @options { 
		if (%privateData<CHARACTER> // '') eq $_[0].text {
			$input = $_<value>;
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
				$input = %toons{@names[$input - 1]};
			}
		}
	}

	@forms = $xmldoc.elements(:TAG<form>, :RECURSE(100));

	my $formUrl = @forms[0]<action>;
	unless $formUrl ~~ /^ 'http' s? '://' / {
		# cw: Will more than likely work for EVE, but NOT a real solution.
		$formUrl = "{ $prefix }{ $formUrl }";
	}

	my $form_data;
	$form_data<CharacterId> = $input;
	$form_data<action> = 'Authorize';
	for @hidden_fields -> $hf {
		$form_data{$hf<name>} = $hf<value>;
	}

	say "Posting to $formUrl";
	try {
		CATCH {
			when X::HTTP::Response { .resume }
		}

		$response = $postclient.post($formUrl, $form_data);
	
		# cw: This will be a redirect, but it needs to be a GET, not
		#     a POST.

		#     The problem here is that the cookes are MANGLED in the 
		#     header.

		my $respHash = $response.header.hash;

		# cw: Throw behind DEBUG parameter.
		#for $respHash.keys -> $k {
		#	say "Header: $k => $respHash{$k}";
		#}

		my @cookies = getCookies($response);
		for @cookies -> $cookie {
			$client.cookies.push-cookie($cookie);
			$postclient.cookies.push-cookie($cookie);
		}
		
		# cw: Not optimal, but this should generally work for the servers
		#     we connect to.
		$url = '';
		if $response.header.field('Location').defined {
			if $response.header.field('Location') ~~ / 'code=' (<-[ & ]>+) / {
				$tokenCode = $/[0];
			} else {
				$url = $response.header.field('Location');
				unless $url ~~ /^^ 'https://' / {
					# cw: MUST be HTTPS at this point.
					$url = "{ $prefix }{ $url }"
				}
			}
		} 
	}

	if !$tokenCode.chars && $url.chars {
		say "Redirecting to '$url'";
		$content = '';
		try {
			CATCH {
				when X::HTTP::NoResponse {
					$response = .response;
				}
			}
			#if ! "outputRequest3".IO.e {
				$response = $client.get($url);

				die "HTTP request to '$url' failed!"
					unless $response.is-success;

				$content = $response.content;
				#my $fh = "outputRequest3".IO.open(:w);
				#$fh.print($content);
				#$fh.close;
			#} else {
			#	$content = "outputRequest3".IO.slurp;
			#}
		}
	} else {
		# cw: Previous post was a success.
		$content = $response.content;
	}
}

# cw: If $tokenCode is present, then we can FINALLY get the bearer token.
#     Otherwise, we display content, if present.

if $tokenCode.defined {
	say "Code for bearer token is: $tokenCode";
} else {
	say "No code retrieved.";
	if $content.chars {
		say "Saved retrieved content in file ./outputRequest";
		my $fh = "outputRequest".IO.open(:w);
		$fh.print($content);
		$fh.cookies.close;
		exit;
	}
}

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
if $response.is-success {
	say "\n===== Token successfully retrieved! =====\n";
	say $response.content;
}