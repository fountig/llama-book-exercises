#!/usr/bin/perl
#
# Modify the previous program to let the user choose the column width, so that
# entering 30, hello, good-bye (on separate lines) would put the strings at the 30th
# column. (Hint: see “Interpolation of Scalar Variables into Strings” on page 32 in
# Chapter 2, about controlling variable interpolation.) For extra credit, make the
# ruler line longer when the selected width is larger.
#
my @mystrings;

while(<STDIN>) {
	push @mystrings, $_;
}
my $rulerwidth = 60;

if ($mystrings[0] > $rulerwidth) { $rulerwidth = $mystrings[0] + 30; } else { $rulerwidth = 60; }

for ($rulertick = 0; $rulertick < ($rulerwidth/10); $rulertick++) {print 0..9;} # ruler
print "\n";

foreach $string (@mystrings) {
	chomp($string);
	printf "%$mystrings[0]s\n", "$string"; #if we put $columnwidth, the interpolation doesn't work properly. 
	# Not even ${columnwidth} works. Need to investigate further.
}


