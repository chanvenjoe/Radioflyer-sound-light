
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strchr

#define build_strchr(source, name) \
source char *strchr_##name(source char *string, char ch) \
{ \
	while(*string && *string != ch) \
		string++; \
	if(*string == ch) \
		return string; \
	return (source char *)NULL; \
}

// builder : strchr

build_strchr(RAMPTR, s)
build_strchr(ROMPTR, r)

// interface : strchr

lptr_t strchr(const lptr_t string, char ch)
{
	if(_lptr_ckpr(string))
		return lptr_t(strchr_r(_lptr_pr(string), ch));
	return lptr_t(strchr_s(_lptr_ps(string), ch));
}


