#!/usr/bin/perl
# 
#Write a program that prompts for and reads two numbers (on separate lines of
#input) and prints out the product of the two numbers multiplied together.

print "Enter a number: ";
$number1 = <STDIN>;
chomp($number1);

print "Enter a second number: ";
$number2 = <STDIN>;
chomp($number2);
$product = $number1 * $number2;
print "The product of $number1 and $number2 is $product\n";


