

#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>

#pragma __attribute__("rjmp")

char lgetchar(lptr_t *ptr)
{
	char c;
	c = (_lptr_ckpr(*ptr)) ?
		*((code char *)_lptr_pr(*ptr)) :
		*((char *)_lptr_ps(*ptr));
	(*ptr)++;
	return c;
}

// ---

static int output_str(ocfunc func, lptr_t pstr)
{
	int count;
	int c;

	count = 0;

	while(c = lgetchar(&pstr))
	{
		func(c);
		count++;
	}

	return count;
}


static int output_int(ocfunc func, long value)
{
	char buf[15];
	bool sign;
	int i, v;

	sign = false;

	if(value < 0)
	{
		sign = true;
		value = -value;
	}

	i = 14;

	do {
		v = value % 10;
		value /= 10;
		buf[i--] = '0' + v;
	}while(value);

	if(sign)
		buf[i--] = '-';

	i++;
	v = 15 - i;

	while(i < 15)
		func(buf[i++]);

	return v;
}


static int output_uint(ocfunc func, unsigned long value)
{
	char buf[15];
	int i, v;

	i = 14;

	do {
		v = value % 10;
		value /= 10;
		buf[i--] = '0' + v;
	}while(value);

	i++;
	v = 15 - i;

	while(i < 15)
		func(buf[i++]);

	return v;
}


static int output_float(ocfunc func, float value)
{
	long v;
	int i, c, d;
	
	c = 0;
	v = (long)value;
	c += output_int(func, v);

	value -= (float)v;
	
	if(value != 0.0)
	{
		func('.');
		d = 0;
		
		while(value != 0.0 && d < 7)
		{
			value *= 10.0;
			v = (int)value;
			func('0' + (int)v);
			value -= (float)v;
			c++;
			d++;
		}
	}

	return c;
}


static int output_hex(ocfunc func, unsigned long value, int d, bool lcase)
{
	char buf[8];
	int i, v, b;

	i = 7;
	b = lcase ? 'a' : 'A';
	
	do {
		v = value & 0x0F;
		value >>= 4;

		if(v < 10)
			v += '0';
		else
			v = v - 10 + b;

		buf[i--] = v;
	}while(--d);

	i++;
	v = 8 - i;

	while(i < 8)
		func(buf[i++]);

	return v;
}


int printcore(ocfunc func, lptr_t fmt, va_list args)
{
	int count;
	char c;
	bool lock;
	float v;
	fp16 v16;

	count = 0;
	lock = false;

	// 考慮到晶片記憶體太小, 並沒有完整支援所有的printf命令...

	while(c = lgetchar(&fmt))
	{
		if(c == '%' || lock)
		{
			c = lgetchar(&fmt);
			lock = false;

			switch(c)
			{
				case 's':
					count += output_str(func, va_arg(args, lptr_t));
					break;
				case 'd':
					count += output_int(func, va_arg(args, int));
					break;
				case 'u':
					count += output_uint(func, va_arg(args, unsigned int));
					break;
				case 'l':
					switch(lgetchar(&fmt))
					{
						case 'd':
							count += output_int(func, va_arg(args, long));
							break;
						case 'u':
							count += output_uint(func, va_arg(args, unsigned long));
							break;
						case 'x':
							count += output_hex(func, va_arg(args, unsigned long), 8, true);
							break;
						case 'X':
							count += output_hex(func, va_arg(args, unsigned long), 8, false);
							break;
						default:
							fmt--;
							break;
					}
					break;
				case 'c':
					func(c);
					count++;
					break;
				case 'f':
					v = va_arg(args, float);
					count += output_float(func, v);
					break;
				case 'h':
					c = lgetchar(&fmt);
					if(c != 'f')
						fmt--;
					v16 = va_arg(args, fp16);
					count += output_float(func, (float)v16);
					break;
				case 'x':
					count += output_hex(func, va_arg(args, unsigned int), 4, true);
					break;
				case 'X':
					count += output_hex(func, va_arg(args, unsigned int), 4, false);
					break;
				case '.':
				case '+':
				case '-':
					// ignore
					lock = true;
					break;

				default:
					if(!isdigit(c))
					{
						func('%');
						func(c);
						count += 2;
					}
					else
					{
						c = lgetchar(&fmt);
						
						if(c == '%')
						{
							func('%');
							count++;
						}
						else
						{
							fmt--;
							lock = true;
						}
					}
					break;
			}
		}
		else
		{
			func(c);
			count++;
		}
	}

	return count;
}



