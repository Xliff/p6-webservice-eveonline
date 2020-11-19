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

sub getScript {
  $=pod.grep( *.name eq 'SCRIPT1' ).map({
    # cw: Note to #raku -- this is still very painful!
    .contents.map( *.contents[0] ).join("\n")
  }).join('');
}

my $blockSize = 20;
my $descriptions;
sub getMoreBlocks ($startAt = 0, $blocksLeft = $descriptions); {
  GLib::Timeout(1000, {
    $*wv.run_javascript(
      getScript($startAt, $blocksLeft, $blockSize),
      -> *@a {
        CATCH { default { .message.say } }

        # Finish the javascript.
        my $js_result = $wv.run_javascript_finish(@a[1]);
        without $js_result {
          say "Error running javascript: { $ERROR.message }" with $ERROR;
          return;
        }
        my $blocks-left;
        if $val.is_number {
          $blocks-left = $val.to_int32;
          say "BL: { $blocks-left }";
        } else {
          die 'Could not get number of description blocks as a number!';
        }
        $blocks-left ?? getMoreBlocks($startAt + $blockSize, $blocksLeft);
                     !! savePage;
      }
    );

    G_SOURCE_REMOTE.Int;
  });
}

sub savePage {
  GLib::Timeout.add(60000, -> *@a {
    $*wv.run_javascript(
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

        $a.quit;
        exit;
      }
    );

    G_SOURCE_REMOVE.Int;
  });
}

sub getBatchScript ($s, $n) {
  my $t = $=pod.grep( *.name eq 'SCRIPT2' ).map({
    # cw: Note to #raku -- this is still very painful!
    .contents.map( *.contents[0] ).join("\n")
  }).join('');
  sprintf($t, $s, $n);
}

$a.activate.tap({
  my $*wv = WebkitGTK::WebView.new;

  # A lot more work when integrating with JavaScript.
  my $p;
  $*wv.load-changed.tap(-> *@a {
    my $time = 60;

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
      $*wv.run_javascript(
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

        $wv.run_javascript(
          q[
            var sections = document.getElementsByClassName(
              'opblock-summary-description'
            );
            sections.length;
          ],
          -> *@a {
            CATCH { default { .message.say } }

            # Finish the javascript.
            my $js_result = $wv.run_javascript_finish(@a[1]);
            without $js_result {
              say "Error running javascript: { $ERROR.message }" with $ERROR;
              return;
            }
            my $val = $js_result.value;
            if $val.is_number {
              $descriptions = $val.to_int32;
              say "#D: { $descriptions }";
            } else {
              die 'Could not getr number of description blocks as a number!';
            }
          }
        );

        # Attempt to expand all -- second level
        getMoreBlocks;

        G_SOURCE_REMOVE.Int;
      });

    }
  });

  $*wv.load_uri("http://esi.evetech.net");
  $a.window.add($*wv);
  $a.window.title = 'ESI Reference Browser';
  $a.window.show_all;
});

$a.run;

=begin SCRIPT1
var sections = document.getElementsByClassName('expand-operation');
var l = sections.length;
var i;
for (i = 0; i < l; i++) {
  sections[i].click();
};
=end SCRIPT1

=begin SCRIPT2
var startAt = %d;
var numDescs = %d;
var batchSize = %d;
var sections = document.getElementsByClassName('opblock-summary-description');
var l = sections.length;
var i;
for (i = startAt; i < startAt + batchSize; i++) {
  sections[i].click();
};
numDecs - batchSize
=end SCRIPT2
