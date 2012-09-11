#!/usr/bin/perl
use strict;
use warnings;

my ($a, $b, $c);
my $last = 0;

for (my $n = 1; $n <= 1000; $n++) {
    for (my $m = $n+1; $m <= 1000; $m++) {
        $a = $m**2 - $n**2;
        $b = 2 * $m * $n;
        $c = $m**2 + $n**2;
        if ($a + $b + $c == 1000) {
            print "$a\t$b\t$c\n";
            $last = 1;
            last;
        }
    }
    if ($last) {last;}
}
