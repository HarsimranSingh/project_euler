#!/usr/bin/perl
use strict;
use warnings;

my (@array, $sum);

for (1..999999999) {
    if ((($_ % 3) == 0) || (($_ % 5) == 0)) {
        $sum += $_;
    }
}

print "$sum\n";
