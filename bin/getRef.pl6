use v6.c;

use WebkitGTK::Raw::Types;

use GLib::Timeout;
use GTK::Application;
use WebkitGTK::UserContent;
use WebkitGTK::UserContentManager;
use WebkitGTK::WebView;
use WebkitGTK::JavaScript::Context;

use GIO::Roles::GFile;

my $a = GTK::Application.new(
  title  => 'org.genex.esi-reference-browser',
  width  => 800,
  height => 1000
);

sub getScript($n) {
  $=pod.grep( *.name eq "SCRIPT{$n}" ).map({
    # cw: Note to #raku -- this is still very painful!
    .contents.map( *.contents[0] ).join("\n")
  }).join('');
}

$a.activate.tap({
  my $wv = WebkitGTK::WebView.new;

  # A lot more work when integrating with JavaScript.
  my $p;
  $wv.load-changed.tap(-> *@a {
    my $time = 20;

    if @a[1] == WEBKIT_LOAD_FINISHED {
      my $c;
      $c = $*SCHEDULER.cue(every => 1, {
        say "Waiting {$time--}...";
        unless $time {
          say 'Finished';
          $c.cancel;
        }
      });

      # Wait for page to settle.
      sleep 5;

      # Attempt to expand all -- first level
      $wv.run_javascript(
        getScript(1),
        -> *@a {
          CATCH { default { .message.say } }

          # Finish the javascript.
          my $js_result = $wv.run_javascript_finish(@a[1]);
          without $js_result {
            say "Error running javascript: { $ERROR.message }" with $ERROR;
            return;
          }
        }
      );

      GLib::Timeout.add(4000, -> *@a {
        say 'Expand second level...';

        # Attempt to expand all -- second level
        $wv.run_javascript(
          getScript(2),
          -> *@a {
            CATCH { default { .message.say } }

            # Finish the javascript.
            my $js_result = $wv.run_javascript_finish(@a[1]);
            without $js_result {
              say "Error running javascript: { $ERROR.message }" with $ERROR;
              return;
            }
          }
        );

        GLib::Timeout.add(10000, -> *@a {
          $wv.run_javascript(
            'document.documentElement.outerHTML.toString()',
            -> *@a {
              CATCH { default { .message.say } }

              say 'Got here!';

              # Finish the javascript.
              my $js_result = $wv.run_javascript_finish(@a[1]);
              without $js_result {
                say "Error running javascript: { $ERROR.message }" with $ERROR;
                return;
              }

              say 'Got here, too!';

              # Save the HTML...
              my $val = $js_result.get_js_value;
              say "V: $val";
              say "VS: { $val.to_string }";
              "ESI-HTML.html".IO.spurt($val.to_string) if $val && $val.is_string;
            }
          );

          G_SOURCE_REMOVE.Int;
        });

        G_SOURCE_REMOVE.Int;
      });

    }
  });

  $wv.load_uri("http://esi.evetech.net");
  $a.window.add($wv);
  $a.window.title = 'ESI Reference Browser';
  $a.window.show_all;
});

$a.run;

=begin SUB
var simulateClick = function (elem) {
	var evt = new MouseEvent('click', {
		bubbles: true,
		cancelable: true,
		view: window
	});
	var canceled = !elem.dispatchEvent(evt);
};
=end SUB

=begin SCRIPT1
var sections = document.getElementsByClassName('expand-operation');
var l = sections.length;
var i;
for (i = 0; i < l; i++) {
  sections[i].click();
};
=end SCRIPT1

=begin SCRIPT2
var sections = document.getElementsByClassName('opblock-summary-description');
var l = sections.length;
var i;
for (i = 0; i < 10; i++) {
  sections[i].click();
};
=end SCRIPT2
