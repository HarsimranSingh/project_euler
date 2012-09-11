#!/usr/bin/perl
use strict;
use warnings;

##-------------Read in File-------------##
open(IN, "<", "triangle.txt") or die $!;

my @array;
for (<IN>) {
	chomp;
	push @array, [split(' ', $_)];
}

##------------Print out File------------##
for my $line (@array) {
	for my $elem (@$line) {
		print "$elem ";
	}
	print "\b\n";
}
