use v6.c;

class WebService::EveOnline::Base {
	#use HTTP::Client;
	use DateTime::Parse;
	use HTTP::UserAgent;
	use Inline::Perl5;
	use JSON::Fast;
	use NativeCall;


	has $!cache_prefix;
	has $!response_file;
	has $!cache_key;
	has $.http_client;

	class utimebuf is repr('CStruct') {
		has int64 $.acttime is rw;
		has int64 $.modtime is rw;
	}

	sub utime(Str $fn, Pointer[utimebuf] $t) is native { ... };

	submethod BUILD(
		:$useragent = "WebService::EveOnline/HTTP::UserAgent/perl6",
		:$cache_prefix = "{%*ENV<HOME>}/.ws_eve/",
		:$cache_prefix_add,
		:$cache_key
	) {
		$!http_client = HTTP::UserAgent.new(:$useragent); 
		$!cache_prefix = 
			($cache_prefix, $cache_prefix_add).join($*SPEC.dir-sep);
		$!cache_key = $cache_key;
	}

	method new(
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add,
		:$cache_key
	) {
		self.bless(
			:$user_agent, 
			:$cache_prefix, 
			:$cache_prefix_add, 
			:$cache_key
		);

		# cw: -XXX-
		#     For now, caching is forced. Should provide the ability 
		#     to disable.
	}

	#multi method new(WebService::EveOnline::Base:D :$user_agent) {
	#	self.bless(:$user_agent);
	#}

	method writeResponse(Str $r, Int $ttd) {
		# cw: Test to insure all directories between root and $!response_file
		#     exist.
		my @parts = $!response_file.split($*SPEC.dir-sep);
		my @test_parts;
		for @parts -> $p {
			@test_parts.push($p);
			my $cur_p = @test_parts.join($*SPEC.dir-sep);
			if ! $cur_p.IO.d {
				die "Cannot make cache directory node '$cur_p' for '$!response_file'"
					unless $cur_p.IO.mkdir(0o700);
			}
		}

		my $h = $!response_file.IO.open(:w, :bin);
		die "Cannot open cache file '{$!response_file}' for writing"
			unless $h ~~ IO::Handle;
		$h.write($r.encode("utf-8"));
		$h.close();

		# cw: Set file modified date into THE FUTURE!
		my $tb = utimebuf.new();
		$tb.modtime = $ttd;
		$tb.acttime = int64;

		# cw: Might want to return better information in this error message
		#     ...somehow
		die "Cannot set modification time on '{$!response_file}'"
			unless utime($!response_file, $tb) == 0;
	}

	method handleResponse($response, $json) {		
		my $p5 = Inline::Perl5.new;

		$p5.use('XML::Hash::XS');

		my $retObj;
		given $response {
			when Str {
				$retObj = $json.defined ??
					from-json($response) !!
					$p5.call('xml2hash', $response);	
			}

			when HTTP::Response {
				$retObj = $response.is-success && $response.has-content ??
					$json.defined ??
						from-json($response.content) !!
						$p5.call('xml2hash', $response.content)
					!! Nil;
			}
		}

		# cw: ...the data cached is the retrieved response.
		my $ttd; 
		# cw: -YYY- Error checking?!? 
		$ttd = $retObj{$!cache_key}:v;
		if ! $ttd ~~ Int {
			# cw: -XXX-
			#	Parse $ttd... and again, we are foiled by the need to be
			#	implementation independent!
			if ($!cache_date_interp.defined) {
				$ttd = $!cache_date_interp($ttd);
			} else {
				# cw: If all else fails, try DateTime::Parse
				$ttd = DateTime::Parse.new($ttd).Instant;
				# cw: -YYY-
				#	  If user provides a default, can't we use that instead
				#     of just die-ing, here?
			}
		}
		return if $response ~~ Hash && $response.was_cached:v == True;
		self.writeResponse($response.content, $ttd);

		return $retObj;		
	}

	method makeRequest($url, :$json) {
		my $response;

		#say "Req: $url";

		if ($url ~~ / ( <-[ \/? ]>+ '?' .+ ) $/) {
			my $cf = $/[0].Str;
			$cf.subst(/\&\?/, '_', :g);
			$!response_file = ($!cache_prefix, $url).join($*SPEC.dir-sep);
			if $!response_file.IO.e {
				# cw: Timestamp in the future indicates cache file 
				#     is still valid. Use it.
				if $cf.IO.modified >= now {
					my $h = $cf.IO.open(:r);
					$response = $h.slurp-rest;
					$h.close();

					return self.handleResponse($response, $json);
				}
			}
		}

		$response = $!http_client.get($url);

		return self.handleResponse($response, $json);
	}

	method postForm($form, :$json) {
		my $response = $form.run;

		return self.handleResponse($response, $json);
	}
}