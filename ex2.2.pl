#!/usr/bin/perl
# 
# Modify the program from the previous exercise to prompt for and accept a
# radius from the person running the program. So, if the user enters 12.5 for the
# radius, she should get the same number as in the previous exercise.

$pi = 3.141592654;
$radius = <STDIN> ;

$circumference = (2 * $pi ) * $radius;
print "Circumference: $circumference\n";

