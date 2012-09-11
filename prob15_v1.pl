#!/usr/bin/perl
use strict;
use warnings;

my @arr;
for (my $x = 0; $x < 21; $x++) {
	for (my $y = 0; $y < 21; $y++) {
		$arr[$x][$y] = 0;
	}
}

for (my $j = 0; $j < 21; $j++) {
	$arr[$j][0] = 1;
}

for (my $i = 1; $i < 21; $i++) {
	$arr[0][$i] = 1;
}

for (my $i = 1; $i < 21; $i++) {
	for (my $j = 1; $j < 21; $j++) {
		$arr[$i][$j] = $arr[$i-1][$j] + $arr[$i][$j-1];
	}
}

print "$arr[20][20]\n";

=pod
for my $row (@arr) {
	for my $val (@$row) {
		print "$val ";
	}
	print "\n";
}
=cut
