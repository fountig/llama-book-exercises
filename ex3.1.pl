#!/usr/bin/perl

# Write a program that reads a list of strings on separate lines until end-of-input
# and prints out the list in reverse order. If the input comes from the keyboard, you’ll
# probably need to signal the end of the input by pressing Control-D on Unix, or
# Control-Z on Windows.
#


@lines = <STDIN>;

print reverse @lines;

