
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strcspn

#define build_strcspn(source, target, name, func) \
size_t strcspn_##name(source char *string, target char *control) \
{ \
	size_t count; \
\
	count = 0; \
\
	while(*string) \
	{ \
		if(func(control, *string)) \
			break; \
		else \
			count++; \
		string++; \
	} \
\
	return count; \
}


// builder : strcspn

build_strcspn(RAMPTR, RAMPTR, ss, strchr_s)
build_strcspn(ROMPTR, RAMPTR, rs, strchr_s)
build_strcspn(RAMPTR, ROMPTR, sr, strchr_r)
build_strcspn(ROMPTR, ROMPTR, rr, strchr_r)

// interface : strcspn

size_t strcspn(const lptr_t string, const lptr_t control)
{
	int flags;

	flags = (_lptr_ckpr(string) ? 1 : 0) |
			(_lptr_ckpr(control) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return strcspn_ss(_lptr_ps(string), _lptr_ps(control));
		case 1:		// ROMPTR / RAMPTR
			return strcspn_rs(_lptr_pr(string), _lptr_ps(control));
		case 2:		// RAMPTR / ROMPTR
			return strcspn_sr(_lptr_ps(string), _lptr_pr(control));
		case 3:		// ROMPTR / ROMPTR
			return strcspn_rr(_lptr_pr(string), _lptr_pr(control));
	}
}



