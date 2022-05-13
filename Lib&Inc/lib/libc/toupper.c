
#include <ctype.h>

#pragma __attribute__("rjmp")

int toupper(int c)
{
	if(islower(c))
		return c & 0xDF;
	else
		return c;
}