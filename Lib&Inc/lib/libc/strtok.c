
#include <string.h>

#pragma __attribute__("rjmp")

// template : strtok


#define build_strtok(typea, typeb, name, func) \
typea char *strtok_##name(typea char *str, typeb char *control) \
{ \
	static typea char *s = NULL; \
	typea char *s1; \
\
	if(str) \
		s = str; \
	if(!s) \
		return (typea char *)NULL; \
\
	while(*s) \
	{\
		if(func(control, *s)) \
			s++; \
		else \
			break; \
	} \
\
	s1 = s; \
\
	while(*s) \
	{ \
		if(func(control, *s)) \
		{ \
			*s++ = 0; \
			return s1; \
		} \
		s++; \
	} \
\
	s = NULL; \
\
	if(*s1) \
		return s1; \
	else \
		return (typea char *)NULL; \
}

// builder : strtok

build_strtok(RAMPTR, RAMPTR, ss, strchr_s)
build_strtok(ROMPTR, RAMPTR, rs, strchr_s)
build_strtok(RAMPTR, ROMPTR, sr, strchr_r)
build_strtok(ROMPTR, ROMPTR, rr, strchr_r)

// interface : strtok

lptr_t strtok(const lptr_t str, const lptr_t control)
{
	int flags;

	flags = (_lptr_ckpr(str) ? 1 : 0) |
			(_lptr_ckpr(control) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strtok_ss(_lptr_ps(str), _lptr_ps(control)));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strtok_rs(_lptr_pr(str), _lptr_ps(control)));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strtok_sr(_lptr_ps(str), _lptr_pr(control)));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strtok_rr(_lptr_pr(str), _lptr_pr(control)));
	}
}



