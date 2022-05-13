

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : memset

#define build_memset(target, name) \
target void *memset_##name(target void *s, unsigned char c, size_t n) \
{ \
	unsigned char *ret; \
\
	ret = s; \
\
	while(n--) \
		*(ret++) = c; \
\
	return s; \
}

#pragma __attribute__("quickrun")


// builder : memset

build_memset(RAMPTR, s)
build_memset(ROMPTR, r)


// interface : memset

lptr_t memset(lptr_t s, unsigned char c, size_t n)
{
	if(_lptr_ckpr(s))
		return lptr_t(memset_r(_lptr_pr(s), c, n));
	return lptr_t(memset_s(_lptr_ps(s), c, n));
}

