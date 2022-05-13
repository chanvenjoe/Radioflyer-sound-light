
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : memchr

#define build_memchr(target, name) \
target void *memchr_##name(target void *s, int c, unsigned int n) \
{ \
	target unsigned char *p; \
	target unsigned char *end; \
	p = (target unsigned char *)s; \
	end = p + n; \
	for(; p != end; p++) \
		if(*p == c) \
			return ((target void *)p); \
	return (target void *)NULL; \
}

// builder : memchr

build_memchr(ROMPTR, r)
build_memchr(RAMPTR, s)


// interface : memchr

lptr_t memchr(lptr_t s, int c, size_t n)
{
	if(_lptr_ckpr(s))
		return lptr_t(memchr_r(_lptr_pr(s), c, n));
	return lptr_t(memchr_s(_lptr_ps(s), c, n));
}

















