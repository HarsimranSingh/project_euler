#!/usr/bin/perl
use strict;
use warnings;

open(INFILE, "grid.txt") or die "Can't open file!\n";

my @array;
while (my $line = <INFILE>) {
	push @array, [split /\s/, $line];
}

our $max_prod = 0;
check_horiz(@array);
check_vert(@array);
check_diag1(@array);
check_diag2(@array);
print "$max_prod\n";

sub check_horiz {
	my @array = @_;
	for (my $j = 0; $j <= $#array; $j++) {
		for (my $i = 0; $i < 17; $i++) {
			my $sum = $array[$j][$i]*$array[$j][$i+1]*$array[$j][$i+2]*$array[$j][$i+3];
			if ($sum > $max_prod) {
				$max_prod = $sum;
			}
		}
	}
}

sub check_vert {
	my @array = @_;
	for (my $i = 0; $i < 17; $i++) {
		for (my $j = 0; $j <= $#array; $j++) {
			my $sum = $array[$i][$j]*$array[$i+1][$j]*$array[$i+2][$j]*$array[$i+3][$j];
			if ($sum > $max_prod) {
				$max_prod = $sum;
			}
		}
	}
}

sub check_diag1 {
	my @array = @_;
	for (my $i = 0; $i < 17; $i++) {
		for (my $j = 0; $j < 17; $j++) {
			my $sum = $array[$i][$j]*$array[$i+1][$j+1]*$array[$i+2][$j+2]*$array[$i+3][$j+3];
			if ($sum > $max_prod) {
				$max_prod = $sum;
			}
		}
	}
}

sub check_diag2 {
	my @array = @_;
	for (my $i = 19; $i > 2; $i--) {
		for (my $j = 0; $j < 17; $j++) {
			my $sum = $array[$i][$j]*$array[$i-1][$j+1]*$array[$i-2][$j+2]*$array[$i-3][$j+3];
			if ($sum > $max_prod) {
				$max_prod = $sum;
			}
		}
	}
}

