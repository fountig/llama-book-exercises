#!/usr/bin/perl
#
# Write a program to list all of the keys and values in %ENV. Print the results in
# two columns in ASCIIbetical order. For extra credit, arrange the output to vertically
# align both columns. The length function can help you figure out how wide to make
# the first column. Once you get the program running, try setting some new envi-
# ronment variables and ensuring that they show up in your output.
#

@ENV_sorted_keys = sort keys %ENV;
@ENV_sorted_values = sort values %ENV;

print "*** ENV KEYS ***\n";
for (@ENV_sorted_keys) { print;print "\n"; }
print "*** ENV VALUES ***\n";
for (@ENV_sorted_values) { print;print "\n";}
