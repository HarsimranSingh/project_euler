#!/usr/bin/perl
use strict;
use warnings;

print "Enter Number: ";
chomp (my $lim = <STDIN>);
my @arr = (3..$lim);
my @primes = (2);
my ($check, $p);

for (@arr) {
    $check = 0;
    for $p (@primes) {
        if ($_ % $p == 0) {
            $check = 1;
            last;
        }
    }
    if (!$check) {push @primes, $_;}
}

my $tot = 0;
for (@primes) {
    $tot++ unless $_ == 0;
    if ($tot == 10001) {
        print "$_\n";
        #last;
    }
}

