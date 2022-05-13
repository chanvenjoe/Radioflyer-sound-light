
#ifndef _STDIO_H
#define _STDIO_H

#include <stdarg.h>
#include <stddef.h>
#include <lptr.h>


// -=-=-=-=-=-= support functions =-=-=-=-=-=-=- //

typedef void (*output_char)(char c)		ocfunc;

extern char lgetchar(lptr_t *ptr);
extern int printcore(ocfunc func, lptr_t fmt, va_list args);


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- //

extern int sprintf(lptr_t buf, lptr_t fmt, ...);
extern int vsprintf(lptr_t buf, lptr_t fmt, va_list args);


// User must provide putchar() before use 
//      printf / vprintf / puts

extern int printf(lptr_t fmt, ...);

#define vprintf(fmt, list)	printcore(putchar, fmt, list)

extern int puts(lptr_t str);

// -=-= User provide

extern void putchar(char c);



#endif

