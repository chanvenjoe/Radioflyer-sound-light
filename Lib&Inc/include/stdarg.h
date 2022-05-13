
#ifndef _STDARG_H
#define _STDARG_H

// for TRITAN FDSP

typedef int *va_list;

#define va_start(ap,last)		ap = ((int *)&(last)) + sizeof(last)
#define va_arg(ap,type)			(type)(ap += sizeof(type), *(type *)(ap - sizeof(type)))
#define va_copy(dest, src)		(dest) = (src)
#define va_end(ap)


#endif
