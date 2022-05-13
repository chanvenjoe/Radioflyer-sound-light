

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strspn

#define build_strspn(typea, typeb, name, func) \
size_t strspn_##name(typea char *string, typeb char *control) \
{ \
	size_t count; \
\
	count = 0; \
\
	while(*string) \
	{ \
		if(func(control, *string)) \
			count++; \
		else \
			break; \
		string++; \
	} \
\
	return count; \
}

// builder : strspn

build_strspn(RAMPTR, RAMPTR, ss, strchr_s)
build_strspn(ROMPTR, RAMPTR, rs, strchr_s)
build_strspn(RAMPTR, ROMPTR, sr, strchr_r)
build_strspn(ROMPTR, ROMPTR, rr, strchr_r)

// interface : strspn

size_t strspn(const lptr_t string, const lptr_t control)
{
	int flags;

	flags = (_lptr_ckpr(string) ? 1 : 0) |
			(_lptr_ckpr(control) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return strspn_ss(_lptr_ps(string), _lptr_ps(control));
		case 1:		// ROMPTR / RAMPTR
			return strspn_rs(_lptr_pr(string), _lptr_ps(control));
		case 2:		// RAMPTR / ROMPTR
			return strspn_sr(_lptr_ps(string), _lptr_pr(control));
		case 3:		// ROMPTR / ROMPTR
			return strspn_rr(_lptr_pr(string), _lptr_pr(control));
	}
}


