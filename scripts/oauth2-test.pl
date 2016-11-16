use v6.c;

use Base64;
use LWP::Simple;
use HTML::Parser::XML;
use HTTP::Server::Simple;
use XML;

constant TIMEOUT = 45;

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

# $sup.tap: { $data = $_; }

# my $to;
# my $promise = start {
#  	my $www = TestOauth.new($ipc, $state, 8888);

#  	$to = Promise.in(TIMEOUT).then({ $www.stop });
#  	$www.run;
# }

# cw: Using LWP::Simple for SSL support.

my $url = "https://login.eveonline.com/oauth/authorize?{ $p }";
my $client = LWP::Simple.new;
my $content;

say $url;

if ! "outputRequest".IO.e {
	# cw: -XXX XXX- Bug in LWP::Simple screws up the redirect. Must fix.
	$content = $client.get($url);
	my $fh = "outputRequest".IO.open(:w);
	$fh.print($content);
	$fh.close;
} else {
	$content = "outputRequest".IO.slurp;
}



# cw: Now here is the tricky part. We need to look at the contents to see what
#     POST request we send, next. 
#
# First, check for login form.
my $xmldoc = HTML::Parser::XML.new.parse($content);
my @fields = $xmldoc.elements(:TAG<input>, :RECURSE<100>);
my %found;
for @fields -> $f {
	next unless $f<name>.defined;
	%found{$f<name>} = 1;
}

if (
	%found<UserName> 			&& 
	%found<Password> 			&&
	%found<RememberMe>			&&
	%found<ClientIdentifier>;
) {
	# Send login data and get request.

my $formBody = prepParms([
 	[ 'ClientIdentifier', 	%privateData<client_id> ],
 	[ 'UserName',		 	%privateData<username>  ],
 	[ 'Password',			%privateData<password>  ],
 	[ 'RememberMe', 		false					]
]);

