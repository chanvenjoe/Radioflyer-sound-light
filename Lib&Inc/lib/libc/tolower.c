
#include <ctype.h>

#pragma __attribute__("rjmp")

int tolower(int c)
{
	if(isupper(c))
		return c | 32;
	else
		return c;
}