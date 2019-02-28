use v6.c;

use GTK::Application;
use WebkitGTK::WebView;

class WebService::EveOnline::SSO::Web {
  also is WebServive::EveOnline::SSO::Base;

  has $!wv;
  has $!init;
  
  # This will work, but may be a bit confusing to end-users. We take SOLE
  # control of GTK, here (and anything that uses it). This may be off-putting
  # for end-users who may wish to use GTK further.
  submethod BUILD (:$appGTK is copy) {
    # Entry point now looks like this: 
    #https://login.eveonline.com/oauth/authorize/?
    #  response_type=code&
    #  redirect_uri=< Encoded redirect URL >&
    #  client_id=< 3rdpartyClientId >&
    #  scope=<list of scopes delimited by %20>&
    #  state=< Rendom State Value >
    
    my $prefix = "{ EVE_SSO_PREFIX}/oauth/authorize/?";
    my $res = 'response_type=code';
    my $redir = 'redirect_uri=http://localhost:8888/';
    my $cid = "client_id={ self.privateData{$!section} }";
    my $s = @!scopes.join(' ');
    
    # Start GTK and begin the login process.
    my $a = $appGTK // GTK::Application.new( title => 'org.genex.weo' );
    
    $a.activate.tap({ 
      $!wv = WebkitGTK::WebView.new;
      $a.window.destroy-signal({ $a.exit });
      $a.window.add($wv);
      
      # Grab all URIs loaded by the WebView
      $!init = Promise.new;
      $wv.load-changed.tap(-> *@a {  
        given @a[1] {
          when WEBKIT_LOAD_STARTED {
            $wv.get_uri ~~ / 'code=' (<-[ & ]>+) /;
            with $/[0] {
              $tokenCode = ~$/[0] 
              $wv.close;
              self.refreshToken($tokenCode);
              $!init.keep;
            }
          }
        }
      });
      
      $!wv.load_uri(
        "{ $prefix }{ ($res, $redir, $cid, $s).join('&') }"
      );
    });
    
    $a.run without $appGTK;
  }
  
  method new (
    @scopes,
    $realm,
    $section,
    $privatePrefix,
    $privateFile,
    :$appGTK
  ) {
    self.bless(
      :@scopes, 
      :$realm, 
      :$section, 
      :$privatePrefix, 
      :$privateFile,
      :$appGTK
    );
  }
  
  # method getRealToken($tokenCode) {
  #   my $form_data = {
	# 		grant_type	=> 'authorization_code',
	# 		code 				=> $tokenCode,
	# 	};
	# 	my $response = self!getBearerToken($form_data);
  #   die "Token not retrieved due to unexpected error."
	# 		unless self.is-success($response);
  # 
	# 	# cw: Maybe add code to output response if a flag is set?
	# 	my $ct = $response.header('Content-Type');
	# 	die "Invalid response content-type '$ct'."
	# 		unless $ct ~~ / ^^ 'application/json' /;
  # 
	# 	my $json = await $response.body;
	# 	#$json.say;
	# 	#my $jsonObj = from-json($json);
	# 	self.setTokenData($json);
  # }
  
  method await-init {
    await $!init;
  } 
      
}
