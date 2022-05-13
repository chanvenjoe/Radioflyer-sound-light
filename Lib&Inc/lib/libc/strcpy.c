

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strcpy

#define build_strcpy(target, source, name) \
target char *strcpy_##name(target char *d, source char *s) \
{ \
    target char *d1 = d; \
    while(*d1++ = *s++); \
    return d; \
}


// builder : strcpy

build_strcpy(RAMPTR, RAMPTR, ss)
build_strcpy(ROMPTR, RAMPTR, rs)
build_strcpy(RAMPTR, ROMPTR, sr)
build_strcpy(ROMPTR, ROMPTR, rr)


// interface : strcpy

lptr_t strcpy(lptr_t d, const lptr_t s)
{
	int flags;

	flags = (_lptr_ckpr(d) ? 1 : 0) |
			(_lptr_ckpr(s) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strcpy_ss(_lptr_ps(d), _lptr_ps(s)));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strcpy_rs(_lptr_pr(d), _lptr_ps(s)));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strcpy_sr(_lptr_ps(d), _lptr_pr(s)));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strcpy_rr(_lptr_pr(d), _lptr_pr(s)));
	}
}










