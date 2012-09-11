#!/usr/bin/perl
use strict;
use warnings;

my ($lim, $sum, $n, $n_1, $n_2) = (4000000, 0, 0, 1, 0);
while ($n < $lim) {
    if ($n % 2 == 0) {
        $sum += $n;
    }
    $n = $n_1 + $n_2;
    ($n_1, $n_2) = ($n, $n_1);
}
print "$sum\n";

