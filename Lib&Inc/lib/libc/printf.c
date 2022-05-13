

#include <stdio.h>


int printf(lptr_t fmt, ...)
{
	va_list list;
	int c;

	va_start(list, fmt);

	c = vprintf(fmt, list);
	
	va_end(list);

	return c;
}

