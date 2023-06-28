#!/us/bin/perl
#
# Write a program that will ask the user for a given name and report the corre-
# sponding family name. Use the names of people you know, or (if you spend so
# much time on the computer that you don’t know any actual people) use the fol-
# lowing table:
# Input		Output
# fred		flintstone
# barney	rubble
# wilma		flintstone
#
#

my %people = ('fred','flintstone','barney','rubble','wilma','flintstone');

print "Enter a name: ";
my $name = <STDIN>;
chomp($name);
if ($people{$name}) { 
	print "I know $name $people{$name}\n";
}
else { print "I don't know $name.\n"; }

