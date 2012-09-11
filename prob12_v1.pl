#!/usr/bin/perl
use strict;
use warnings;

my $i = 1;
while (1) {
    if (divisors(triangleNum($i)) > 500) {
        print triangleNum($i) . "\n";
        last;
    }
    $i++;
}

sub triangleNum {
    my $num = shift;
    return 0.5 * $num * ($num + 1);
}

sub divisors {
    my $num = shift;
    my $prod = 1;
    for (my $i = 2; $num != 1; $i++) {
        my $counter = 0;
        if ($num % $i == 0) {
            while ($num % $i == 0) {
                $num /= $i;
                $counter++;
            }
            $prod *= ($counter + 1); 
        }
    }
    return $prod;
}

