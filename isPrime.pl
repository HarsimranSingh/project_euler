#!/usr/bin/perl
use strict;
use warnings;

chomp (my $number = <STDIN>);
print isPrime($number) . "\n";

sub isPrime {
    my $candidate = shift;
    for (my $i = 2; $i <= sqrt($candidate); $i++) {
        if ($candidate % $i == 0) {
            return 0;
        }
    }
    return 1;
}
