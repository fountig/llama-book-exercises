#!/usr/bin/perl

# Modify the previous program to tell each new person the names of all the
# people it has previously greeted:
# greet( "Fred" );
# greet( "Barney" );
# greet( "Wilma" );
# greet( "Betty" );
#
# This sequence of statements should print:
#
# Hi  Fred! You are the first one here!
# Hi Barney! I've seen: Fred
# Hi Wilma! I've seen: Fred Barney
# Hi Betty! I've seen: Fred Barney Wilma
use 5.010;

sub greet {

	state $person;
	state @seen;

	$person = $_[0]; 

	if (scalar @seen eq 0) { 

		print "Hi $person! You are the first one here!\n";
	
	}
	
	else { 	
		print "Hi $person! @seen  is also here!\n";
	}

	push @seen, $person;
}




greet( "Fred"   );
greet( "Barney" );
greet( "Wilma"  );
greet( "Betty"  );


