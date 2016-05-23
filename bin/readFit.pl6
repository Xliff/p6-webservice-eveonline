#!/usr/bin/perl6

use v6.c;

multi sub readFit(Str $fn) {
	if ($fn.lines.elems > 1) {
		realReadFit($fn);
		return;
	}

	my $fh = $fn.IO.open(:r) 
		or 
	die "Cannot open fittings file file '$fn'";

	readFit($fh);
}

multi sub readFit(IO::Handle $fh) {
	realReadFit($fh.slurp-rest);
}

sub realReadFit(Str $f) {
	my %fit_data = ();

	for $f.lines -> $l {
		next if $l ~~ /^\[/;

		if ($l ~~ /^(<-[,]>+)/) {
			my $name = $/[0].Str;
			
			my $num;
			if ($name ~~ /' ' x (\d+)$/) {
				$num = $/[0].Str;
				$name ~~ s/' ' x \d+$//;
			} 

			# cw: If the data already exists, we can safely increment without having
			#     to worry about the presence of the " x###" value.
			if (%fit_data{$name}:v && !$num.defined) {
				%fit_data{$name}++;
			} else {
				%fit_data{$name} = $num ?? $num !! 1;
			}
		}
	}

	dd %fit_data;
}

sub MAIN (:$filename!) {
	readFit($filename);
}