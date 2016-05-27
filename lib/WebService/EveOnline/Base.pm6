use v6.c;

class WebService::EveOnline::Base {
	#use HTTP::Client;
	use HTTP::UserAgent;
	use Inline::Perl5;
	use JSON::Fast;

	has $.http_client;

	submethod BUILD(:$useragent = "WebService::EveOnline/HTTP::UserAgent/perl6") {
		$!http_client = HTTP::UserAgent.new(:$useragent); 
	}

	multi method new(:$user_agent) {
		self.bless(:$user_agent);
	}

	multi method new(WebService::EveOnline::Base:D :$user_agent) {
		self.bless(:$user_agent);
	}

	method handleResponse($response, $json) {
		my $p5 = Inline::Perl5.new;

		$p5.use('XML::Hash::XS');

		my $retObj = $response.has-content ?? 
			$json.defined ??
				from-json($response.content) !!
				$p5.call('xml2hash', $response.content)
			!!  Nil;

		# cw: Any unified caching code will have to go HERE.

		return $retObj;		
	}

	method makeRequest($url, :$json) {
		my $response;

		#say "Req: $url";

		$response = $!http_client.get($url);

		return self.handleResponse($response, $json);
	}

	method postForm($form, :$json) {
		my $response = $form.run;

		return self.handleResponse($response, $json);
	}
}