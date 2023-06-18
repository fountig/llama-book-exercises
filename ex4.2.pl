#!/usr/bin/perl

# Using the subroutine from the previous problem, make a program to calculate
# the sum of the numbers from 1 to 1,000
my $fred_total = total( 1 .. 1_000 );

print "The sum total of numbers 1 to 1000 is $fred_total.\n";

sub total {
	foreach $number ( @_ ) {
		$total += $number;
	}
	return $total;
}

