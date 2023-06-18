#!/usr/bin/perl
# 
# Write a program that prompts for and reads a string and a number (on separate
# lines of input) and prints out the string the number of times indicated by the num-
# ber on separate lines. (Hint: use the x operator.) If the user enters “fred” and “3”,
# the output should be three lines, each saying “fred”. If the user enters “fred” and
#“ 299792,” there may be a lot of output.

print "Enter a number: ";
$number1 = <STDIN>;
print "Enter a string: ";
$string1 = <STDIN>;

print $string1 x $number1;


