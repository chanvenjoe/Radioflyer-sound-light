
#include <stdio.h>

#pragma __attribute__("rjmp")

int puts(lptr_t str)
{
	char c;
	int cnt;

	cnt = 0;

	while(c = lgetchar(&str))
	{
		putchar(c);
		cnt++;
	}

	return cnt;
}














