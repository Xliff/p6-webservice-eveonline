use v6.c;

use NativeCall;

use DateTime::Parse;
use HTTP::UserAgent;

# cw: XXX - Problems exist if both of these modules are used at the same time.
use Cro::HTTP::Client;
#use Inline::Perl5;

use JSON::Fast;

our enum RequestMethod is export <POST GET PUT DELETE HEAD>;

constant DEFAULT_UA   is export = "WebService::EveOnline/HTTP::UserAgent/perl6";
constant DEFAULT_HOME is export = "{ %*ENV<HOME> }/.ws_eve";

class WebService::EveOnline::Base {

  has $!last-response;
	has $!response_file;
	has $!http_client;
	has $!cache_prefix;
	has $!cache_key;
	has $!cache_date_interp;
	has $!cache_ttl;
	has $!cache_name_extract;

	class utimebuf is repr('CStruct') {
		has int32 $.acttime is rw;
		has int32 $.modtime is rw;
	}

	sub utime(Str $fn, utimebuf $t)
		returns int32
		is native { ... };

	submethod BUILD(
		:$user_agent,
		:$cache_prefix,
		:$cache_prefix_add,
		:$cache_key,
		:$cache_ttl,
		:$cache_date_interp,
		:$cache_name_extract
	) {
		#$!http_client = HTTP::UserAgent.new(:useragent(
		#	$user_agent.defined ??
		#		$user_agent
		#		!!
		#
		#));

		$!http_client = Cro::HTTP::Client.new(
      :http<1.1>,
			headers => [
				User-agent => DEFAULT_UA
			]
		);

		die "<cache_ttl> must be an integer value"
			unless ! $!cache_ttl.defined || $cache_ttl ~~ Int;

		$!cache_ttl = $cache_ttl if $cache_ttl.defined;
		$!cache_key = $cache_key if $cache_key.defined;
		if $!cache_ttl.defined || $!cache_key.defined {
			$!cache_prefix = $cache_prefix.defined ??
				$cache_prefix
				!!
				DEFAULT_HOME;

			$!cache_prefix ~= "{ $*SPEC.dir-sep }{ $cache_prefix_add }"
				if $cache_prefix_add.defined;

			$!cache_date_interp = $cache_date_interp
				if $cache_date_interp.defined;

			$!cache_name_extract = $cache_name_extract.defined ??
				$cache_name_extract
				!!
				&default_cache_name_extract;
		}
	}

	sub default_cache_name_extract($u) {
		my $mu = $u;
		return unless $mu ~~ / ( <-[ \/? ]>+ ('?' .+)? ) $/;
		$mu = $/[0].Str;
		$mu = $mu.subst('&', '_', :g);
		$mu = $mu.subst('?', '_', :g);

		return $mu;
	}

	method new(
		Str 			:$user_agent,
		Str 			:$cache_prefix,
		Str 			:$cache_prefix_add,
		Str 			:$cache_key,
		Str       :$cache_ttl,
		Code			:$cache_date_interp,
		Code			:$cache_name_extract
	) {
		self.bless(
			:$user_agent,
			:$cache_prefix,
			:$cache_prefix_add,
			:$cache_key,
			:$cache_ttl,
			:$cache_date_interp,
			:$cache_name_extract
		);
	}

	method useragent {
		$!http_client.headers('User-agent');
	}

	method writeResponse(Str $r, Int $ttd) {
		# cw: Test to insure all directories between root and $!response_file
		#     exist.
		my @parts = $!response_file.split($*SPEC.dir-sep);
		# cw: ... of course this will probably need edits for Windows support.
		my @test_parts = $*SPEC.dir-sep.list;
		for @parts.kv -> $k, $p {
			last if $k == @parts.elems - 1;

			@test_parts.push($p);
			my $cur_p = @test_parts.join($*SPEC.dir-sep);
			if ! $cur_p.IO.d {
				die "Cannot make cache directory node '$cur_p' for '$!response_file'"
					unless $cur_p.IO.mkdir(0o700);
			}
		}

		say "WR: Writing to {$!response_file}";

		my $h = $!response_file.IO.open(:w, :bin);
		die "Cannot open cache file '{ $!response_file }' for writing"
			unless $h ~~ IO::Handle;
		$h.write($r.encode("utf-8"));
		$h.close();

		# cw: Set file modified date into THE FUTURE!
		my $tb = utimebuf.new();
		$tb.modtime = $ttd;
		$tb.acttime = $ttd;

		# cw: Might want to return better information in this error message
		#     ...somehow
		die "Cannot set modification time on '{ $!response_file }'"
			unless utime($!response_file, $tb) == 0;

		#say "File modification time set to {$ttd.Str}";
	}

	method handleResponse(
    $response,
    $json,
    :$cache_ttl = $!cache_ttl,
    :$cache_key = $!cache_key
  ) {
		#my $p5 = Inline::Perl5.new;
		#$p5.use('XML::Hash::XS');
    $!last-response = $response;

		my ($retObj, $content);
		$content = await $response.body if $response ~~ Cro::HTTP::Response;

		given $content {
			# With Cro::HTTP, this will only occur if there is HTML content.
			when Str {
				$retObj<data> = $json.defined ??
					from-json($content)
					!!
					# XML Deprecated in early 2018
					#$p5.call('xml2hash', $usedResponse);
					Nil;
				#say "R: {$response}";
			}

			# XML/JSON
			when Hash | Array {
				$retObj<data> = $content;
			}

			# ---------  DEPRECATED -----------
			# when HTTP::Response {
			# 	if $response.has-content {
			# 		$retObj<data> = $json.defined ??
			# 			from-json($response.content) !!
			# 			$p5.call('xml2hash', $response.content);
			#
			# 		#say "R: {$response.content}";
			# 	} elsif ! $response.has-content {
			# 		#say "No response content";
			#
			# 		return;
			#
			# 	}
			# }

			default {
				die "Unknown response type result: { $_.^name }";
			}
		}

		my $ttd;
		if $cache_key.defined || $cache_ttl.defined {
			#say "Cache_key: {$!cache_key}" if $!cache_key.defined;

			# Note that $cache_ttl is local and NOT the attribute.
			# See makeRequest(), below.
			if $cache_ttl.defined {
				$ttd = DateTime.now.posix + $cache_ttl;
			} elsif $cache_key.defined {
				# cw: -YYY- Error checking?!?
				$ttd =  $cache_key ~~ /^^ 'header:' (.+)/ ??
				  # cw: This is problematic. Array may not always split on the DOW.
					# do {
					# 	given $response.header.field(~$0).values {
					# 		when Str   { $_ }
					# 		when Array { $_.join(', ') }
					# 	}
					# }
					$response.header($/[0].Str)
				  !!
					($retObj{$cache_key}:v);

				if $ttd !~~ Int {
					# Parse date using subclass defined function.
					if $!cache_date_interp.defined {
						$ttd = $!cache_date_interp($ttd);
					} else {
						# cw: If all else fails, try DateTime::Parse
						$ttd = DateTime::Parse.new($ttd);
						# cw: -YYY-
						#	  If user provides a default, can't we use that instead
						#     of just die-ing, here?
						#
						#	  Could use <cache_ttl> as a fallback, but the
						#     processing order will need to change.
					}
					$ttd = $ttd.posix if $ttd ~~ DateTime;
				}
			}

			#say "TTD: [{$ttd}]";

			# cw: ...the data cached is the retrieved response.
			#say "RT: { $response.^name }";
			#say "IS: { $response.is-success }";
			if $response.status ~~ 200..^300 {
				self.writeResponse(await $response.body-text, $ttd)
					#if $response ~~ HTTP::Response && $response.is-success;
					if $response ~~ Cro::HTTP::Response;

				$retObj<__cache__> = {
					file 	=> $!response_file,
					expires	=> $!response_file.IO.modified
				}
			}
		}

		return $retObj;
	}

	multi method makeRequest(
		$url,
		:$method = GET,
		:$headers,
		:$form,
    :$body,
		:$cache_ttl = $!cache_ttl,
		:$cache_key = $!cache_key,
		:$force,
		:$json,
    :$contentType = 'application/x-www-form-urlencoded',
    :$ua
	) {
		my $response;

		die "Invalid value '$method' used for method."
			unless $method ~~ RequestMethod;

    my $usedHeaders = $headers // {};
		die "Header value should be a Hash, not { $usedHeaders.WHAT }."
			unless $usedHeaders ~~ Hash;

		my $cf;
		if (
			! $force.defined														&&
			($cache_ttl.defined || $cache_key.defined)	&&
			($cf = $!cache_name_extract($url)).defined
		) {
			#say "CF: {$cf}";

			$!response_file = ($!cache_prefix, $cf).join($*SPEC.dir-sep);

			#say "RF: {$!response_file}";

			if $!response_file.IO.e {
				# cw: Timestamp in the future indicates cache file
				#     is still valid. Use it.
				if $!response_file.IO.modified >= now {
					my $h = $!response_file.IO.open(:r);
					$response = $h.slurp-rest;
					$h.close();

					return self.handleResponse($response, $json);
				}
			}
		}

		#say "{ $method == GET ?? 'GET' !! 'POST' } Req: $url";
		$response = await do given $method {
			when RequestMethod::GET {
        my $wc = $ua.defined ?? $ua !! $!http_client;
				$wc.get(
          $url,
          headers => [ $usedHeaders.pairs ]
        );
			}

			when RequestMethod::POST {
        # cw: Note the use of $form and $body are inconsistent, this is due
        #     to the various redesigns that I have made with no time to
        #     insure said consistency.
        say "BASE-P: { $url }";
		    $!http_client.post(
          $url,
          content-type => $contentType,
                  body => $body,
               headers => [ $usedHeaders.pairs ]
        );
			}

			when RequestMethod::DELETE {
				$!http_client.delete(
          $url,
          headers => [ $usedHeaders.pairs ]
        );
			}

			when RequestMethod::PUT {
				$!http_client.put(
          $url,
          content-type => $contentType,
                  body => $form,
               headers => [ $usedHeaders.pairs ]
        );
			}
		};

		self.handleResponse(
			$response,
			$json,
			:$cache_ttl,
			:$cache_key
		);
	}

	# cw: Shortcut for FORM method. May not need anymore.
	method postForm($form, :$json) {
		my $response = $form.run;

		return self.handleResponse($response, $json);
	}

	method cache_ttl {
		$!cache_ttl;
	}

	method last-response {
		$!last-response;
	}

	method setCacheNameFunc($f) {
		$!cache_name_extract = $f;
	}
}
