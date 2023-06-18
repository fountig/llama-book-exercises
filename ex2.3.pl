#!/usr/bin/perl
# 
# Modify the program from the previous exercise so that, if the user enters a
# number less than zero, the reported circumference will be zero, rather than
# negative.

$pi = 3.141592654;
$radius = <STDIN> ;

if ($radius lt 0) { $circumference = 0;  }

else {
	$circumference = (2 * $pi ) * $radius;
}

print "Circumference: $circumference\n";

