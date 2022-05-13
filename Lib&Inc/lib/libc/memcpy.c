

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : memcpy

#define build_memcpy(target, source, name) \
target void *memcpy_##name(target void *dst, source void *src, size_t acount) \
{ \
	target char *d; \
	source char *s; \
	d = dst; \
	s = src; \
	while(acount--) \
	{ \
		*d++ = *s++; \
	} \
	return dst; \
}

// builder : memcpy

build_memcpy(RAMPTR, RAMPTR, ss)
build_memcpy(ROMPTR, RAMPTR, rs)
build_memcpy(RAMPTR, ROMPTR, sr)
build_memcpy(ROMPTR, ROMPTR, rr)

// interface : memcpy

lptr_t memcpy(lptr_t dst, const lptr_t src, size_t acount)
{
	int flags;

	if(!acount)
		return 0;

	flags = (_lptr_ckpr(dst) ? 1 : 0) |
			(_lptr_ckpr(src) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(memcpy_ss(_lptr_ps(dst), _lptr_ps(src), acount));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(memcpy_rs(_lptr_pr(dst), _lptr_ps(src), acount));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(memcpy_sr(_lptr_ps(dst), _lptr_pr(src), acount));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(memcpy_rr(_lptr_pr(dst), _lptr_pr(src), acount));
	}
}





















