#!/usr/bin/perl

#
# Extra credit exercise: write a subroutine, called &above_average, which takes
# a list of numbers and returns the ones which are above the average (mean). (Hint:
# make another subroutine that calculates the average by dividing the total by the
# number of items.) Try your subroutine in this test program

sub total {
	foreach $number ( @_ ) {
		$total += $number;
	}
	return $total;
}


sub calculate_average {

	$total = total(@_);
	$average = $total / scalar @_;
	return $average;

}


sub above_average  {
	
	$average = &calculate_average(@_);
	my @averages = ( ); # if I don't do this, @averages gets appended in between calls. Weird.
	foreach (@_) {
		if ($_ > $average) {
			push @averages, $_;
		}
	}
	return @averages;
}

#print &calculate_average(1..10);
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

