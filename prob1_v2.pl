#!/usr/bin/perl
use strict;
use warnings;

sub sumDivisBy {
    my $num = shift;
    my $foo = int((1000/$num) + 0.99) - 1;
    return $num * $foo * 0.5 * ($foo + 1);;
}

print (sumDivisBy(3) + sumDivisBy(5) - sumDivisBy(15));
print "\n";
