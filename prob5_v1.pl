#!/usr/bin/perl
use warnings;

my @primes = (1);

for (1..20) {
    if (isPrime($_)) {
        push @primes, $_;
        #print "PUSH\t$_\n";
    } else {
        for (my $i = 0; $i <= $#primes; $i++) {
            if (($_ % $primes[$i] == 0) && ($_ != 1)) {
                $_ /= $primes[$i];
            }
        } 
        push @primes, $_;
        #print "OTHER\t$_\n";
    }
}

my $product = 1;
for (@primes) {
    $product *= $_;
}

print "$product\n";

sub isPrime {
    my $num = shift;
    if ($num < 2) {
        return 0;
    } elsif ($num == 2) {
        return 1;
    } else {
        for (my $i = 2; $i < $num; $i++) {
            if ($num % $i == 0) {
                return 0;
            }
        }
    }
    return 1;
}
