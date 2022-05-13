
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strpbrk

#define build_strpbrk(typea, typeb, name, func) \
typea char *strpbrk_##name(typea char *string, typeb char *control) \
{ \
	typea char *ret = NULL; \
	typea char *p; \
\
	while(*control) \
	{ \
		p = func(string, *control); \
\
		if(p != NULL && (ret == NULL || p < ret)) \
		{ \
			ret = p; \
		} \
		control++; \
	} \
\
	return ret; \
}

// builder : strpbrk

build_strpbrk(RAMPTR, RAMPTR, ss, strchr_s)
build_strpbrk(ROMPTR, RAMPTR, rs, strchr_r)
build_strpbrk(RAMPTR, ROMPTR, sr, strchr_s)
build_strpbrk(ROMPTR, ROMPTR, rr, strchr_r)

// interface : strpbrk

lptr_t strpbrk(const lptr_t string, const lptr_t control)
{
	int flags;

	flags = (_lptr_ckpr(string) ? 1 : 0) |
			(_lptr_ckpr(control) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strpbrk_ss(_lptr_ps(string), _lptr_ps(control)));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strpbrk_rs(_lptr_pr(string), _lptr_ps(control)));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strpbrk_sr(_lptr_ps(string), _lptr_pr(control)));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strpbrk_rr(_lptr_pr(string), _lptr_pr(control)));
	}
}







