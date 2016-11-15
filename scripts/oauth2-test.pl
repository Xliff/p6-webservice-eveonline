use v6.c;

use Base64;
use HTTP::Client;
use HTTP::Server::Simple;

constant TIMEOUT = 45;

class TestOauth does HTTP::Server::Simple {
	has %!header;
	has $!path;
	has $!query_string;
	has $!supplier;
	has $!state;

	method new($supplier, $state, $port) {
		self.bless(:$supplier, :$state, :$port);
	}

	submethod BUILD(:$supplier, :$state, :$port) {
		$!supplier = $supplier;
		$!state = $state;
		$!port = $port;
		$!host = self.lookup_localhost;
	}

	method setup(:$path, :$query_string) {
		$!path = $path;
		$!query_string = $query_string;
	}

	method header($key, $value) {
		%!header{$key} = $value;
	}

	method handle_request() {
		callsame;

		# cw: Send to channel only if we're relatively sure it is the 
		#     response we are looking for.
		my $s = $!state;
		if $!query_string ~~ /$s/ {
			$!supplier.emit($!query_string);
			self.stop;
		}
	}
	
	method stop() {
		say "=== Attempting to stop server.";
		$!listener.close;	
	}
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

my $ipc = Supplier.new;
my $sup = $ipc.Supply;
my $data;
my $state;

# cw: Encode and assemble query string.
my $params = (
	[ 'ReurnUrl', 		'/oauth/authorize' ],
	[ 'response_type', 	'code' ],
	[ 'redirect_uri', 	'https://localhost:8888/' ],
	[ 'client_id', 		%privateData<client_id> ],
	[ 'scope', 			'characterContactsRead' ],
	[ 'state',  		($state = 'variable' ~ (^999).pick) ]
)
.map({ 
	$_[1] = $_[1].subst(/<-alnum>/, *.ord.fmt("%%%02X"), :g); 
	$_.join('='); 
})
.join('&');

$sup.tap: { $data = $_; }

my $to;
my $promise = start {
 	my $www = TestOauth.new($ipc, $state, 8888);

 	$to = Promise.in(TIMEOUT).then({ $www.stop });
 	$www.run;
}

my $client = HTTP::Client.new;
my $form = $client.post;
my $url = "http://login.eveonline.com/Account/LogOn?$params";

$form.url($url);		
$form.add-field(
	ClientIdentifier	=> %privateData<client_id>,
	Username 			=> %privateData<username>,
	Password 			=> %privateData<password>,
	RememberMe			=> 'false'
);
$form.run;
say "Sent request to $url";

await $promise;
$to.keep(True) if $to ~~ Promise;
if !$data.defined {
	die "Did not receive return request from auth server\n";
}

dd $data;

