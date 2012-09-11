#!/usr/bin/perl
use strict;
use warnings;

print squareOfSum(100) - sumOfSquare(100);
print "\n";

sub sumOfSquare {
    my $num = shift;
    return (1/6) * $num * ($num + 1) * (2*$num + 1);
}

sub squareOfSum {
    my $num = shift;
    my $temp = 0.5 * $num * ($num + 1);
    return $temp**2;
}
