#!/usr/bin/perl
use strict;
use warnings;

my ($x, $y, $z, $max);
$max = 0;

for $x (100..999) {
    for $y ($x..999) {
        $z = $x * $y;
        if (($z eq reverse $z) && ($z > $max)) {
            $max = $z;
        }
    }
}

print "$max\n";
