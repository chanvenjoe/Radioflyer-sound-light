

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strcat

#define build_strcat(target, source, name) \
target char *strcat_##name(target char *dst, source char *src) \
{ \
	target char *cp; \
	cp = dst; \
\
	while(*cp) \
		cp++; \
	while(*cp++ = *src++); \
\
	return dst; \
}

// builder : strcat

build_strcat(RAMPTR, RAMPTR, ss)
build_strcat(ROMPTR, RAMPTR, rs)
build_strcat(RAMPTR, ROMPTR, sr)
build_strcat(ROMPTR, ROMPTR, rr)

// interface : memcpy

lptr_t strcat(lptr_t dst, lptr_t src)
{
	int flags;

	flags = (_lptr_ckpr(dst) ? 1 : 0) |
			(_lptr_ckpr(src) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strcat_ss(_lptr_ps(dst), _lptr_ps(src)));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strcat_rs(_lptr_pr(dst), _lptr_ps(src)));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strcat_sr(_lptr_ps(dst), _lptr_pr(src)));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strcat_rr(_lptr_pr(dst), _lptr_pr(src)));
	}
}







