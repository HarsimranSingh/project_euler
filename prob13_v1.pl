#!/usr/bin/perl
use strict;
use warnings;

open(IN, "input.txt") or die;

my $sum = 0;
for (<IN>) {
	chomp;
	$sum += $_;
}

print substr($sum, 0, 11) . "\n";
