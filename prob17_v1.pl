#!/usr/bin/perl
use strict;
use warnings;

my $sum;
for (1..999) {
	$sum += check_hundreds($_);
	$sum += check_tens($_);
	if ($_ % 100 < 10 || $_ % 100 > 19) {
		$sum += check_ones($_);
	}
}

$sum += 11;
print "$sum\n";

##-----------Subroutines-----------##

sub check_ones {
	my $num = shift;
	my $orig = $num;
	$num %= 10;

	my $sum = 0;
	if ($num == 1) {
		$sum = 3;
	} elsif ($num == 2) {
		$sum = 3;
	} elsif ($num == 3) {
		$sum = 5;
	} elsif ($num == 4) {
		$sum = 4;
	} elsif ($num == 5) {
		$sum = 4;
	} elsif ($num == 6) {
		$sum = 3;
	} elsif ($num == 7) {
		$sum = 5;
	} elsif ($num == 8) {
		$sum = 5;
	} elsif ($num == 9) {
		$sum = 4;
	} else {}

	if ($orig % 100 == 0) {
		$sum -= 3;
	}

	return $sum;
}

sub check_tens {
	my $num = shift;
	my $orig = $num;
	$num /= 10;
	$num = int($num);
	$num %= 10;

	my $sum = 0;
	if ($num == 1) {
		$orig %= 10;
		if ($orig == 1) {
			$sum = 6;
		} elsif ($orig == 2) {
			$sum = 6;
		} elsif ($orig == 3) {
			$sum = 8;
		} elsif ($orig == 4) {
			$sum = 8;
		} elsif ($orig == 5) {
			$sum = 7;
		} elsif ($orig == 6) {
			$sum = 7;
		} elsif ($orig == 7) {
			$sum = 9;
		} elsif ($orig == 8) {
			$sum = 8;
		} elsif ($orig == 9) {
			$sum = 8;
		} else {
			$sum = 3;
		}
	} elsif ($num == 2) {
	    $sum = 6;
	} elsif ($num == 3) {
	    $sum = 6;
	} elsif ($num == 4) {
	    $sum = 5;
	} elsif ($num == 5) {
	    $sum = 5;
	} elsif ($num == 6) {
	    $sum = 5;
	} elsif ($num == 7) {
	    $sum = 7;
	} elsif ($num == 8) {
	    $sum = 6;
	} elsif ($num == 9) {
	    $sum = 6;
	} else {}

	return $sum;
}

sub check_hundreds {
	my $num = shift;
	$num /= 100;
	$num = int($num);

	my $sum = 0;
	if ($num == 1) {
		$sum = 13;
	} elsif ($num == 2) {
		$sum = 13;
	} elsif ($num == 3) {
		$sum = 15;
	} elsif ($num == 4) {
		$sum = 14;
	} elsif ($num == 5) {
		$sum = 14;
	} elsif ($num == 6) {
		$sum = 13;
	} elsif ($num == 7) {
		$sum = 15;
	} elsif ($num == 8) {
		$sum = 15;
	} elsif ($num == 9) {
		$sum = 14;
	} else {}

	return $sum;
}
