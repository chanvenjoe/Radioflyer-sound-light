

#include <stdio.h>

#pragma __attribute__("rjmp")

static lptr_t pbuf;

static void output_buf(char c)
{
	if(_lptr_ckpr(pbuf))
		*((code char *)_lptr_pr(pbuf)) = c;
	else
		*((char *)_lptr_ps(pbuf)) = c;
	pbuf++;
}

int sprintf(lptr_t buf, lptr_t fmt, ...)
{
	va_list list;
	lptr_t opbuf;
	int c;

	opbuf = pbuf;
	pbuf = buf;

	va_start(list, fmt);

	c = printcore(output_buf, fmt, list);
	output_buf(0);
	
	va_end(list);
	
	pbuf = opbuf;
	return c;
}

int vsprintf(lptr_t buf, lptr_t fmt, va_list args)
{
	lptr_t opbuf;
	int c;

	opbuf = pbuf;
	pbuf = buf;

	c = printcore(output_buf, fmt, args);
	output_buf(0);
	
	pbuf = opbuf;
	return c;
}





