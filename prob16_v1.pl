#!/usr/bin/perl
use strict;
use warnings;
use bigint;

my $x = 2**1000;

my $sum = 0;
while ($x > 0) {
	my $num = $x % 10;
	$x = int($x/10);
	$sum += $num;
}

print "$sum\n";
