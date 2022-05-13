

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strncmp

#define build_strncmp(typea, typeb, name) \
int strncmp_##name(typea char *first, typeb char *last, size_t count) \
{ \
	if(!count) \
		return 0; \
\
	while(--count && *first && *first == *last) \
	{ \
		first++; \
		last++; \
	} \
\
	return (*first - *last); \
}

// builder : strncmp

build_strncmp(RAMPTR, RAMPTR, ss)
build_strncmp(ROMPTR, RAMPTR, rs)
build_strncmp(RAMPTR, ROMPTR, sr)
build_strncmp(ROMPTR, ROMPTR, rr)

// interface : strncmp

int strncmp(const lptr_t first, const lptr_t last, size_t count)
{
	int flags;

	flags = (_lptr_ckpr(first) ? 1 : 0) |
			(_lptr_ckpr(last) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return strncmp_ss(_lptr_ps(first), _lptr_ps(last), count);
		case 1:		// ROMPTR / RAMPTR
			return strncmp_rs(_lptr_pr(first), _lptr_ps(last), count);
		case 2:		// RAMPTR / ROMPTR
			return strncmp_sr(_lptr_ps(first), _lptr_pr(last), count);
		case 3:		// ROMPTR / ROMPTR
			return strncmp_rr(_lptr_pr(first), _lptr_pr(last), count);
	}
}







