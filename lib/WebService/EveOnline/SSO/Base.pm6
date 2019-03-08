use v6.c;

use Base64;
use Config::INI;
use Cro::HTTP::Client;
use DateTime::Parse;
use JSON::Fast;

our constant EVE_SSO_PREFIX is export = "https://login.eveonline.com";
our constant DEFAULT_HOME is export = "{ %*ENV<HOME> }/.ws_eve";

class WebService::EveOnline::SSO::Base {
	has %!privateData;
	has $!client;
  has $!privateFile;
  has $!privatePrefix;
  has $!realm;
  has $!section;

  has @.scopes;
  has $.expires;
  has $.lastTokenDate;
  has $.tokenData;
  
  # Entry point now looks like this: 
  #https://login.eveonline.com/oauth/authorize/?
  #  response_type=code&
  #  redirect_uri=< Encoded redirect URL >&
  #  client_id=< 3rdpartyClientId >&
  #  scope=<list of scopes delimited by %20>&
  #  state=< Rendom State Value >
  
	# Store the Character ID selected so that consumers can query for it,
	# later.
	has $.characterID;
  
  has $!wv;
  
  submethod BUILD (
    :@scopes,
    :$realm,
    :$section,
    :$privatePrefix,
    :$privateFile
  ) {
  	$!client = Cro::HTTP::Client.new(
  		:headers([
  			User-agent => 'WebService::EveOnline v0.5.0 (rakudo)'
  		]),
  		:cookie-jar
  		:!follow
  	);

  	$!privatePrefix = $privatePrefix // DEFAULT_HOME;
  	$!privateFile = "{ $!privatePrefix }/{ $privateFile // 'privateData' }";
  	$!section = $section // '_';

  	@!scopes = @scopes;
  	$!realm = $realm;

  	self!loadPrivateData;
  }
  
  method !loadPrivateData {
    # Override this to implement custom data retrieval method.
    # cw: Consider using a callback to implement custom retrieval rather
    #     than forced subclassing.
    %!privateData = Config::INI::parse($!privateFile.IO.slurp)
      if $!privateFile.IO.e
  }
  
  # Protected
  method privateData {
    %!privateData;
  }

  # Protected
  method getSectionData {
    %!privateData{$!section}
  }
  
  # Protected
  method setCharacterID ($charID) {
    $!characterID = $charID;
  }
  
  # Protected
	method is-success($r) {
		200 >= $r.status < 300;
	}
  
  # Protected - Deprecated
	# method encodeAuth {
	# 	encode-base64(
	# 		#"{ %!privateData<client_id> }:{ %!privateData<secret_id> }", :str
	# 		%!privateData{$!section}<client_id secret_id>.join(':'), '', :str
	# 	);
	# }
  
  # Protected
	method getState {
		# Override to implement custom state value generation.
		'variable' ~ (^999).pick;
	}
  
  # Protected
	method getBearerToken($form_data) {
		# $!client.post(
		#  	"{ PREFIX }/oauth/token",
		#  	$form_data,
	 	#  	:Authorization("Basic { self!encodeAuth }"),
	  # );
    my $body = to-json($form_data, :!pretty);
		await $!client.post(
	  	"{ EVE_SSO_PREFIX }/oauth/token",
      headers        => [ 
        Content-Type	 => 'application/json', 
        Content-Length => $body.chars 
      ],
	  	body           => $body,
			auth           => {
				username => %!privateData{$!section}<client_id>,
				password => %!privateData{$!section}<secret_id>
			}
	  );
	}

  # Protected
	method setTokenData($newTokenData) {
		$!tokenData = $newTokenData;
		$!lastTokenDate = DateTime.now;
		$!expires = $.lastTokenDate.later(:seconds($.tokenData<expires_in>));
	}

  # Protected
	method getHeader {
		{
			Authorization => "Bearer { $.tokenData<access_token> }"
		};
	}
  
  method refreshToken($tokenCode) {
		my $form_data = {
			#grant_type 		=> 'refresh_token',    # From 2018 or so...
      #refresh_token 	=> $tokenCode          # From 2018 or so...
      grant_type      => 'authorization_code',
      code            => $tokenCode
		}
		my $response = self.getBearerToken($form_data);

		die "Token not refreshed due to unexpected error."
			unless self.is-success($response);

		# cw: Maybe add code to output response if a flag is set?
		die "Invalid response content-type."
			unless $response.header('Content-Type') ~~ /^ 'application/json' /;

		#my $jsonObj = from-json(await $response.body);
		my $jsonObj = await $response.body;
		self.setTokenData($jsonObj);
	}

}
