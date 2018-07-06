use v6.c;

use DateTime::Parse;
use DBIish;
use HTTP::UserAgent;
use HTTP::Cookie;
use JSON::Fast;

our $sq_dbh is export;

grammar Cookie_Grammar {
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
    token expires  { [ 'expires' || 'max-age' ] '=' <value> ';' }
    token path     { 'path=' <value> ';' }
    token arg      { <name> '=' <value> ';'? }
    token secure   { :i Secure ';'? }
    token httponly { :i HttpOnly ';'? }
}

sub arrayToHash($a, $k) is export {
  $a.map({ $_{$k} => $_ }).Hash
}

sub urlEncode($s) is export {
	$s.subst(/<-alnum>/, *.ord.fmt("%%%02X"), :g);
}

sub prepParams($l) is export {
	$l.map({ $_[1] = urlEncode($_[1]); $_.join('='); }).join('&');
}

sub cookieExtra($c, $f) is export {
	for $c<extras> -> $e {
		return $e{$f} if $e{$f}.defined;
	}
	Nil;
}

sub cookieExtraVal($c, $f) is export {
	 my $k = cookieExtra($c, $f);
	 $k.defined ?? $k<value> !! Nil;
}

sub getCookies($r) is export {
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

sub makeRequestStatic($url) is export {
	# cw: Eventually to go behind a DEBUG flag.
	say "Requesting: $url";

	my $response = HTTP::UserAgent.new.get($url);

	die "Request failed with unexpected error."
		unless $response ~~ HTTP::Response && $response.is-success;

	from-json($response.content);
}

# Print error without backtrace.
sub fatal($msg) is export {
	note($msg);
	exit;
}

sub openStaticDB($sqlite) is export {
	return if $sq_dbh;

	# Offer some reasonable defaults if nothing specified.
	my @sq_file = $sqlite ?? ($sqlite) !! <
		./Eve_Static.sqlite3
		data/Eve_Static.sqlite3
		../data/Eve_Static.sqlite3
	>;

	for @sq_file -> $s {
		#fatal("ERROR! Static eve data file not found at '$sq_file'!\n")
		#	unless $sq_file.IO.e && $sq_file.IO.f;

		$sq_dbh = DBIish.connect(
			'SQLite',
			:database($s),
			:PrintError(True)
		) if $s.IO.e;

		if $sq_dbh {
			say "Using SQLite static file '$s'";
			last;
		}
	}
	fatal("Cannot open static Eve data!") unless $sq_dbh;

  $sq_dbh;
}
