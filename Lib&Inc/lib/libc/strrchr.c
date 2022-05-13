

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strrchr

#define build_strrchr(type, name) \
type char *strrchr_##name(type char *string, char ch) \
{ \
	type char *start = string; \
\
	while(*string++); \
	while(--string != start && *string != ch); \
\
	if(*string == ch) \
		return string; \
\
	return (type char *)NULL; \
}

// builder : strrchr

build_strrchr(RAMPTR, s)
build_strrchr(ROMPTR, r)

// interface : strrchr

lptr_t strrchr(const lptr_t string, char ch)
{
	if(_lptr_ckpr(string))
		return lptr_t(strrchr_r(_lptr_pr(string), ch));
	return lptr_t(strrchr_s(_lptr_ps(string), ch));
}









