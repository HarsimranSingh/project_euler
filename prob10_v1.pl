#!/usr/bin/perl
use strict;
use warnings;

my $sum = 2;
for (my $i = 3; $i < 2000000; $i += 2) {
    if (isPrime($i)) {
        $sum += $i;
    }
}

print "$sum\n";

sub isPrime {
    my $cand = shift;
    if ($cand == 1) {
        return 0;
    } elsif ($cand < 4) {
        return 1;
    } elsif ($cand % 2 == 0) {
        return 0;
    } elsif ($cand < 9) {
        return 1;
    } elsif ($cand % 3 == 0) {
        return 0;
    } else {
        for (my $i = 5; $i <= sqrt($cand); $i += 6) {
            if ($cand % $i == 0) {
                return 0;
            }
            if ($cand % ($i+2) == 0) {
                return 0;
            }
        }
    }
    return 1;
}
