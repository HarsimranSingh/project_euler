#!/usr/bin/perl
use strict;
use warnings;

my $num = 600_851_475_143;
my $i;

for ($i = 2; $num != 1; $i++) {
    if ($num % $i == 0) {
        while ($num % $i == 0) {
            $num = $num / $i;
        }
        print "$i\n";
    } else {}
}
