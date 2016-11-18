use v6.c;

use Base64;
use HTML::Parser::XML;
use HTTP::UserAgent;
use HTTP::Cookies;
use HTTP::Server::Simple;
use XML;

#use LWP::Simple;
#use Grammar::Tracer;

constant TIMEOUT = 45;

 grammar DateTime_Grammar {
    token TOP {
        <dt=rfc1123-date> | <dt=rfc850-date> | <dt=asctime-date>
    }

    token rfc1123-date {
        <.wkday> ',' <.SP> <date=.date1> <.SP> <time> <.SP> 'GMT'
    }

    token rfc850-date {
        #[ <weekday> || <wkday> ] ','? <SP> <date=date2> <SP> <time> <SP> 'GMT'
        <wkday> ','? <SP> <date=date2> <SP> <time> <SP> 'GMT'
    }

    token asctime-date {
        <.wkday> <.SP> <date=.date3> <.SP> <time> <.SP> <year=.D4-year>
    }

    token date1 { # e.g., 02 Jun 1982
        <day=.D2> <.SP> <month> <.SP> <year=.D4-year>
    }

    token date2 { # e.g., 02-Jun-82 OR 02-Jun-1982
        <day=.D2> '-' <month> '-' [ <year=.D4-year> || <year=.D2> ]
    }

    token date3 { # e.g., Jun  2
        <month> <.SP> (<day=.D2> | <.SP> <day=.D1>)
    }

    token time {
        <hour=.D2> ':' <minute=.D2> ':' <second=.D2>
    }

    token wkday {
        'Mon' | 'Tue' | 'Wed' | 'Thu' | 'Fri' | 'Sat' | 'Sun'
    }

    token weekday {
        'Monday' | 'Tuesday' | 'Wednesday' | 'Thursday' | 'Friday' | 'Saturday' | 'Sunday'
    }

    token month {
        'Jan' | 'Feb' | 'Mar' | 'Apr' | 'May' | 'Jun' | 'Jul' | 'Aug' | 'Sep' | 'Oct' | 'Nov' | 'Dec'
    }

    token D4-year {
        \d ** 4
    }

    token D2-year {
        \d ** 2
    }

    token SP {
        \s
    }

    token D1 {
        \d
    }

    token D2 {
        \d ** 2
    }
}

class DateTime_Actions {
    method TOP($/) {
        make $<dt>.made
    }

    method rfc1123-date($/) {
        make DateTime.new(|$<date>.made, |$<time>.made)
    }

    method rfc850-date($/) {
        make DateTime.new(|$<date>.made, |$<time>.made)
    }

    method asctime-date($/) {
        make DateTime.new(:year($<year>.made), |$<date>.made, |$<time>.made)
    }

    method date1($/) { # e.g., 02 Jun 1982
        make { year => $<year>.made, month => $<month>.made, day => $<day>.made }
    }

    method date2($/) { # e.g., 02-Jun-82
        make { year => $<year>.made, month => $<month>.made, day => $<day>.made }
    }

    method date3($/) { # e.g., Jun  2
        make { year => $<year>.made, month => $<month>.made, day => $<day>.made }
    }

    method time($/) {
        make { hour => +$<hour>, minute => +$<minute>, second => +$<second> }
    }

    my %wkday = Mon => 0, Tue => 1, Wed => 2, Thu => 3, Fri => 4, Sat => 5, Sun => 6;
    method wkday($/) {
        make %wkday{~$/}
    }

    my %weekday = Monday => 0, Tuesday => 1, Wednesday => 2, Thursday => 3,
                  Friday => 4, Saturday => 5, Sunday => 6;
    method weekday($/) {
        make %weekday{~$/}
    }

    my %month = Jan => 1, Feb => 2, Mar => 3, Apr =>  4, May =>  5, Jun =>  6,
                Jul => 7, Aug => 8, Sep => 9, Oct => 10, Nov => 11, Dec => 12;
    method month($/) {
        make %month{~$/}
    }

    method D4-year($/) {
        make +$/
    }

    method D2-year($/) {
        my $yy = +$/;
        make $yy < 34 ?? 2000 + $yy !! 1900 + $yy
    }

    method D2($/) {
        make +$/
    }
}


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

# class TestOauth does HTTP::Server::Simple {
# 	has %!header;
# 	has $!path;
# 	has $!query_string;
# 	has $!supplier;
# 	has $!state;

# 	method new($supplier, $state, $port) {
# 		self.bless(:$supplier, :$state, :$port);
# 	}

# 	submethod BUILD(:$supplier, :$state, :$port) {
# 		$!supplier = $supplier;
# 		$!state = $state;
# 		$!port = $port;
# 		$!host = self.lookup_localhost;
# 	}

# 	method setup(:$path, :$query_string) {
# 		$!path = $path;
# 		$!query_string = $query_string;
# 	}

# 	method header($key, $value) {
# 		%!header{$key} = $value;
# 	}

# 	method handle_request() {
# 		callsame;

# 		# cw: Send to channel only if we're relatively sure it is the 
# 		#     response we are looking for.
# 		my $s = $!state;
# 		if $!query_string ~~ /$s/ {
# 			$!supplier.emit($!query_string);
# 			self.stop;
# 		}
# 	}
	
# 	method stop() {
# 		# cw: XXX - Didn't work, so will have to override net_server.
# 		say "=== Attempting to stop server.";
# 		$!listener.close;	
# 	}
# }

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
			my $g = DateTime_Grammar.parse(
				$dts, :actions(DateTime_Actions.new)
			);
			my $dt = $g.made;
			$dts = '' unless $dt.defined;
			next unless $dt > DateTime.now;
		}
		
		@cookies.push(HTTP::Cookie.new(
			name 		=> $c<name>.Str,
			value 		=> $c<value>.Str,
			expires 	=> $dts,
			path		=> (cookieExtraVal($c, 'path') // '' ).Str,
			secure  	=> (cookieExtra($c, 'secure') // '').Str.lc eq 'secure',
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
		#%privateData<secret_id>.defined &&
		%privateData<username>.defined  &&
		%privateData<password>.defined;

# my $ipc = Supplier.new;
# my $sup = $ipc.Supply;
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

#if ! "outputRequest1".IO.e {
	$response = $client.get($url);

	die "HTTP request to '$url' failed!" unless $response.is-success;

	$content = $response.content;
	#my $fh = "outputRequest1".IO.open(:w);
	#$fh.print($content);
	#$fh.close;
#} else {
#	$content = "outputRequest1".IO.slurp;
#}

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

		#if ! "outputRequest2".IO.e {
			$response = $client.get($url);

			die "HTTP request to '$url' failed!"
				unless $response.is-success;

			$content = $response.content;
			my $fh = "outputRequest2".IO.open(:w);
			$fh.print($content);
			$fh.close;
		#} else {
		#	$content = "outputRequest2".IO.slurp;
		#}
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

		my $broken_cookies = 
			$response.header.field('Set-Cookie').values.
			join(' ');
		$broken_cookies ~~ s:g/( 'path=/' || 'secure' ) \s/$0; /;
		my $g = Cookie_Grammar.parse($broken_cookies);

		for @( $g<cookie> // () ) -> $c {
			my $dts = $c<expires><value>.Str;
			my $g = DateTime_Grammar.parse(
				$dts, :actions(DateTime_Actions.new)
			);
			my $dt = $g.made;
			$dts = '' unless $dt.defined;
			next unless $dt > DateTime.now;

			# cw: Throw behind DEBUG parameter
			#say "Cookie: $c<name> = $c<value>";
			
			my $cookie = HTTP::Cookie.new(
				name 	=> $c<name>.Str,
				value 	=> $c<value>.Str,
				expires => $dts,
				path	=> $c<path><value>.Str,
				secure  => ($c<secure> // '').Str eq 'secure'
			);
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