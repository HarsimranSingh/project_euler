#!/usr/bin/perl
use strict;
use warnings;

open(INFILE, "input.txt") or die;

my ($number, @array);
chomp ($number = <INFILE>);

@array = split(//, "$number");

my $max = 0;
my $temp;
for (my $i = 0; $i <= ($#array - 4); $i++) {
    $temp = $array[$i]*$array[$i+1]*$array[$i+2]*$array[$i+3]*$array[$i+4];
    if ($temp > $max) {
        $max = $temp;
    }
}

print "$max\n";
