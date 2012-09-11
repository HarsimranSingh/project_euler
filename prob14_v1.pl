#!/usr/bin/perl
use strict;
use warnings;

our $length = 4_000_000;
our @cache = ((0) x $length);
our $size = 0;
my ($max_num,$max_ind,$foo) = (0,0,0);
for (1..1_000_000) {
	$foo = collatz($_);
	if ($foo > $max_num) {
		$max_num = $foo;
		$max_ind = $_;
	}
}

print "$max_ind\n";

sub collatz {
	my $num = my $orig = shift;
	my @arr = ();
	while ($num > 1) {
		if ($cache[$num]) {
			$size = $cache[$num];
			cacher(@arr);
			$size = 0;
			return $cache[$num] + scalar(@arr);
		}
		push @arr, $num;
		if ($num % 2 == 0) {
			$num = $num / 2;
		} else {
			$num = 3*$num + 1;
		}
	}
	push @arr, $num;
	cacher(@arr);
	return @arr;
}

sub cacher {
	my @bar = @_;
	if (@bar == 0) {return;}
	for (my $i = 0; $i <= $#bar; $i++) {
		if ($bar[$i] < $length) {
			my @temp = @bar[$i..$#bar];
			$cache[$bar[$i]] = @temp + $size;
		}
	}
}
