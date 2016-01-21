#include <stdlib.h>
#include <stdio.h>

extern void subs( char *string, char this_c, char that_c ) ;

int main(int argc, char *argv[] )
{
	char this_c= 'e' ;	
	char that_c = 'X' ;
	char orgstr[] = "sir sid easily teases sea sick seals" ;
		
	subs( orgstr, this_c, that_c ) ;
	printf( "Changed string: %s\n", orgstr ) ;

	exit( 0 ) ;
}

	