

#include <string.h>

#pragma __attribute__("rjmp")

// template : strstr

#define build_strstr(typea, typeb, name) \
typea char *strstr_##name(typea char * str1, typeb char *str2) \
{ \
	typea char *cp; \
	typea char *s1; \
	typeb char *s2; \
\
	cp = str1; \
\
	if(!*str2) \
	    return str1; \
\
	while(*cp) \
	{ \
		s1 = cp; \
		s2 = str2; \
\
		while(*s1 && *s2 && !(*s1 - *s2)) \
			s1++, s2++; \
\
		if(!*s2) \
			return (typea char *)cp; \
\
		cp++; \
	} \
\
	return (typea char *)NULL; \
}

// builder : strstr

build_strstr(RAMPTR, RAMPTR, ss)
build_strstr(ROMPTR, RAMPTR, rs)
build_strstr(RAMPTR, ROMPTR, sr)
build_strstr(ROMPTR, ROMPTR, rr)

// interface : strstr

lptr_t strstr(const lptr_t str1, const lptr_t str2)
{
	int flags;

	flags = (_lptr_ckpr(str1) ? 1 : 0) |
			(_lptr_ckpr(str2) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strstr_ss(_lptr_ps(str1), _lptr_ps(str2)));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strstr_rs(_lptr_pr(str1), _lptr_ps(str2)));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strstr_sr(_lptr_ps(str1), _lptr_pr(str2)));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strstr_rr(_lptr_pr(str1), _lptr_pr(str2)));
	}
}






