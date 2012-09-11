#!/usr/bin/perl
use strict;
use warnings;

my $lim = 2_000_000;
my @numbs = (2..$lim);

for (my $j = 0; $j <= sqrt($#numbs); $j++) {
    if ($numbs[$j] != 0) {
        for (my $i = (($numbs[$j]**2)-2); $i <= $#numbs; $i += $numbs[$j]) {
            $numbs[$i] = 0 unless $i == $j;
        }
    }
}

my $sum = 0;
for (@numbs) {
    $sum += $_;
}

print "$sum\n";

