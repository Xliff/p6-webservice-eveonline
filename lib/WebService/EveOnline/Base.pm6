use v6.c;

class WebService::EveOnline::Base {
	#use HTTP::Client;
	use HTTP::UserAgent;
	use Inline::Perl5;
	use JSON::Fast;

	has $.http_client;

	submethod BUILD(:$user_agent) {
		$!http_client =
			$user_agent.defined ?? 
				HTTP::UserAgent(:useragent($user_agent)) 
				!!
				HTTP::UserAgent.new;
		#$!http_client.user_agent = $user_agent if $user_agent.defined;
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

		return $response.has-content ?? 
			$json.defined ??
				from-json($response.content) !!
				$p5.call('xml2hash', $response.content)
			!!  Nil;		
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