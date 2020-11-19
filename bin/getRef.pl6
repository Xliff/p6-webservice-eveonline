use v6.c;

use WebkitGTK::Raw::Types;

use GLib::Timeout;
use GTK::Application;
use WebkitGTK::UserContent;
use WebkitGTK::UserContentManager;
use WebkitGTK::WebView;
use WebkitGTK::JavaScript::Context;

use GIO::Roles::GFile;

my $wv;
my $a = GTK::Application.new(
  title  => 'org.genex.esi-reference-browser',
  width  => 800,
  height => 1000
);

sub getPodSection ($n) {
  my $t = $=pod.grep( *.name eq $n ).map({
    # cw: Note to #raku -- this is still very painful!
    .contents.map( *.contents[0] ).join("\n")
  }).join('');
}

sub getScript {
  getPodSection('SCRIPT1');
}

my $blockSize = 10;
sub getBatchScript ($s, $n) {
  getPodSection('SCRIPT2').sprintf($s, $n, $blockSize);
}

my $descriptions;
sub getMoreBlocks ($startAt = 0, $blocksLeft = $descriptions) {
  GLib::Timeout.add(6000, {
    CATCH { default { .message.say; .backtrace.concise.say } }

    $wv.run_javascript(
      getBatchScript($startAt, $blocksLeft),
      -> *@a {
        CATCH { default { .message.say } }

        # Tracking.
        say "SA: { $startAt } / BL: { $blocksLeft } / BS: { $blockSize }";

        # Finish the javascript.
        my $jsResult = $wv.run_javascript_finish(@a[1]);
        without $jsResult {
          say "Error running javascript: { $ERROR.message }" with $ERROR;
          return;
        }

        my $jsVal  = $jsResult.value;
        my $retVal = $jsVal.is_number ?? $jsVal.to_int32
                                      !! die 'Return val not a number!';
        $retVal > 0 ?? getMoreBlocks($startAt + $blockSize, $retVal)
                    !! savePage;
      }
    );

    G_SOURCE_REMOVE.Int;
  });
}

sub savePage {
  GLib::Timeout.add(6000, -> *@a {
    $wv.run_javascript(
      'document.documentElement.outerHTML.toString()',
      -> *@a {
        CATCH { default { .message.say } }

        say 'Got here!';

        # Finish the javascript.
        my $jsResult = $wv.run_javascript_finish(@a[1]);
        without $jsResult {
          say "Error running javascript: { $ERROR.message }" with $ERROR;
          return;
        }

        say 'Got here, too!';

        # Save the HTML...
        my $val = $jsResult.value;
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

$a.activate.tap({
  $wv = WebkitGTK::WebView.new;

  # A lot more work when integrating with JavaScript.
  my $p;
  $wv.load-changed.tap(-> *@a {
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
      sleep 2;

      # Attempt to expand all -- first level
      $wv.run_javascript(
        getScript,
        -> *@a {
          CATCH { default { .message.say } }

          # Finish the javascript.
          my $jsResult = $wv.run_javascript_finish(@a[1]);
          without $jsResult {
            say "Error running javascript: { $ERROR.message }" with $ERROR;
            return;
          }
        }
      );

      GLib::Timeout.add(2000, -> *@a {
        CATCH { default { .message.say; .backtrace.concise.say } }

        say 'Expand second level...';

        $wv.run_javascript(
          q[
            var sections = document.getElementsByClassName(
              'opblock-summary-description'
            );
            sections.length;
          ],
          -> *@a {
            CATCH { default { .message.say; .backtrace.concise.say } }

            # Finish the javascript.
            my $jsResult = $wv.run_javascript_finish(@a[1]);
            without $jsResult {
              say "Error running javascript: { $ERROR.message }" with $ERROR;
              return;
            }
            my $val = $jsResult.value;
            if $val.is_number {
              $descriptions = $val.to_int32;
              say "#D: { $descriptions }";
            } else {
              die 'Could not get number of description blocks as a number!';
            }

            # Attempt to expand all -- second level
            getMoreBlocks;
          }
        );

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
var numDecs = %d;
var batchSize = %d;
var sections = document.getElementsByClassName('opblock-summary-description');
var l = sections.length;
var i;
for (i = startAt; i < startAt + batchSize; i++) {
  if (i >= sections.length) {
    break;
  }
  sections[i].click();
};
numDecs - batchSize
=end SCRIPT2
