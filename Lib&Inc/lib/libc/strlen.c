
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strlen

#define build_strlen(source, name) \
size_t strlen_##name(source char * str) \
{ \
	int i; \
	i = 0; \
	while(*str++) \
		i++ ; \
	return i; \
}

// builder : strlen

build_strlen(RAMPTR, s)
build_strlen(ROMPTR, r)

// interface : strlen

size_t strlen(const lptr_t str)
{
	if(_lptr_ckpr(str))
		return strlen_r(_lptr_pr(str));
	return strlen_s(_lptr_ps(str));
}








