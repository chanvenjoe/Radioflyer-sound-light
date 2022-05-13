

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strncpy

#define build_strncpy(target, source, name) \
target char *strncpy_##name(target char *d, source char *s, size_t n) \
{ \
	target char *d1 =  d; \
\
	while(n && *s) \
	{ \
		n-- ; \
		*d++ = *s++; \
	} \
\
	while(n--) \
	{ \
		*d++ = 0; \
	} \
	return d1; \
}

// builder : strncpy

build_strncpy(RAMPTR, RAMPTR, ss)
build_strncpy(ROMPTR, RAMPTR, rs)
build_strncpy(RAMPTR, ROMPTR, sr)
build_strncpy(ROMPTR, ROMPTR, rr)


// interface : strncpy

lptr_t strncpy(lptr_t d, const lptr_t s, size_t n)
{
	int flags;

	flags = (_lptr_ckpr(d) ? 1 : 0) |
			(_lptr_ckpr(s) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strncpy_ss(_lptr_ps(d), _lptr_ps(s), n));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strncpy_rs(_lptr_pr(d), _lptr_ps(s), n));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strncpy_sr(_lptr_ps(d), _lptr_pr(s), n));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strncpy_rr(_lptr_pr(d), _lptr_pr(s), n));
	}
}



