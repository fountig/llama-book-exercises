#!/usr/bin/perl
#
#
# Write a program that reads a list of strings (on separate lines) until end-of-input.
# Then it should print the strings in code point order. That is, if you enter the strings
# fred, barney, wilma, betty, the output should show barney betty fred wilma. Are
# all of the strings on one line in the output or on separate lines? Could you make
# the output appear in either style?

@lines = <STDIN>;

# uncomment this to print it in one line
#chomp(@lines);

print sort @lines;

