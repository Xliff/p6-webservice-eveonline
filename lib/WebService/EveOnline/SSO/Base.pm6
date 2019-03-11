use v6.c;

use Base64;
use Config::INI;
use Cro::HTTP::Client;
use DateTime::Parse;
use JSON::Fast;

our constant EVE_SSO_PREFIX is export = "https://login.eveonline.com";
our constant EVE_VERIFY_PREFIX is export = "https://esi.evetech.net";
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
    self.checkExpiry;
  }
  
  method !loadPrivateData {
    # Override this to implement custom data retrieval method.
    # cw: Consider using a callback to implement custom retrieval rather
    #     than forced subclassing.
    my %pd = Config::INI::parse($!privateFile.IO.slurp)
      if $!privateFile.IO.e;
   %!privateData<_> = %pd<_>;
   %!privateData{$!section} = %pd{$!section};
   say "PD: { %pd.gist } / { %pd<_><expires>.^name }";
  }
  
  # Must be defined in subclasses
  method getToken { ... }
  
  method checkExpiry {
    my $clearData = False;
    my $lock = Lock.new;
    
    with %!privateData<_><expires> 
      andthen %!privateData<_><token> 
      andthen %!privateData<_><CharacterID> 
    {
      # With restart data. Check for expired access_token
      if %!privateData<_><expires> <= DateTime.now.posix {
        say 'Expired';
        my $rte = %!privateData<_><expires> + 15 * 60; # 15 minutes later
        
        # Check for expired refresh token
        if $rte <= DateTime.now.posix {
          # Within time for refresh_token, 
          say 'Expired refresh';
          my ($retries, $valid) = (5, False);
          
          while $retries {
            try {
              CATCH { 
                default {
                  given .message {
                    when /'502' | '503' | '504'/ {
                      say 'Server error. Retrying...';
                      $retries--;
                    }
                    next;
                  }
                  default {
                    .message.say; 
                    say 'Refresh expired.';
                    last;
                  }
                }
              }
              # Attempt to retrieve new access_token, otherwise clear 
              # retrieved data.
              $lock.protect({
                self.refreshToken($_, :refresh) 
                  with %!privateData<_><refresh_token>;
              });
              $valid = True;
              last;
            }
          }
          $clearData = True unless $valid;
        } else {
          $clearData = True;
        }
      } else {
        # Token is not expired. Set tokenData if it has not already
        # been done.
        $lock.protect({
          without $!tokenData {
            say 'Resetting...';
            $!tokenData = {
              access_token  => %!privateData<_><token>,
              refresh_token => %!privateData<_><trefresh_token>,
              expires_in    => %!privateData<_><expires> - DateTime.now.posix
            };
            $!characterID = %!privateData<_><CharacterID>;
            $!lastTokenDate = DateTime.now;
            $!expires = %!privateData<_><expires>;
          }
        });
      }
    } else {
      # Without restart data. Clear all keys, just to be sure.
      say 'Clearing...';
      $clearData = True;
    }
    say "SSO: { self.gist } / { self.WHERE }";
    $lock.protect({
      %!privateData<_><token refresh_token expires CharacterID>:delete 
    }) if $clearData;
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
		$!expires = $.lastTokenDate.later(
      seconds => $.tokenData<expires_in>
    ).posix;
	}

  # Protected
	method getHeader {
		{
			Authorization => "Bearer { $.tokenData<access_token> }"
		};
	}
  
  method refreshToken($tokenCode, :$refresh = False) {
		my $form_data = $refresh.not ?? 
      {
  			#grant_type 		=> 'refresh_token',    # From 2018 or so...
        #refresh_token 	=> $tokenCode          # From 2018 or so...
        grant_type      => 'authorization_code',
        code            => $tokenCode
  		} !!
      { 
        grant_type      => 'refresh_token',
        refresh_token   => $tokenCode
      };
      
		my $response = self.getBearerToken($form_data);

		die "Token not refreshed due to unexpected error."
			unless self.is-success($response);

		# cw: Maybe add code to output response if a flag is set?
		die "Invalid response content-type."
			unless $response.header('Content-Type') ~~ /^ 'application/json' /;

		#my $jsonObj = from-json(await $response.body);
		my $jsonObj = await $response.body;
		self.setTokenData($jsonObj);
    
    # Get character ID through verification -- # No datasource should be
    # specified, so this will be tricky. Should be done as a full request, 
    # but the mechanism for that may need to be created.
    my $v = await $!client.get(
      "{ EVE_VERIFY_PREFIX }/verify/",
      headers => self.getHeader.pairs
    );
    my $vb = await $v.body;
    
    die 'Could not verify character information' 
      unless $vb ~~ Hash && ($vb<CharacterID>:exists);
    $!characterID = $vb<CharacterID>;
    
    # Use Config::INI to parse and then output privateData file with new
    # token data. Token data is output to the global section using two keys:
    #        token: Currently active token
    #   expiration: Date of expiration.
    # Read write happens in one operation. The entirety of the privateData file 
    # is NOT to be kept in memory!!
    return unless $!privateFile.IO.e;
    my $pd = Config::INI::parse($!privateFile.IO.slurp);
    
    $pd<CharacterID>   = $!characterID;
    $pd<token>         = $.tokenData<access_token>;
    $pd<refresh_token> = $.tokenData<refresh_token>;
    $pd<expires>       = DateTime
      .now
      .later( seconds => $.tokenData<expires_in> )
      .posix;
      
    use Config::INI::Writer;
    Config::INI::Writer::dumpfile($pd, $!privateFile);
	}

}
