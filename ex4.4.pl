#!/usr/bin/perl

#Write a subroutine named greet that welcomes the person you name by telling
#them the name of the last person it greeted:
# greet( "Fred" );
# greet( "Barney" );
#
# This sequence of statements should print:
# Hi Fred! You are the first one here!
# Hi Barney! Fred is also here!
#
use 5.010;
sub greet {
	state $person;
	state $lastperson;
	$person =  $_[0];
	if ($lastperson eq undef) { 
		print "Hi $person! You are the first one here!\n";
		$lastperson = $person;
		}
		else { 	print "Hi $person! $lastperson is also here!\n"; }
}



greet( "Fred" );
greet( "Barney" );


