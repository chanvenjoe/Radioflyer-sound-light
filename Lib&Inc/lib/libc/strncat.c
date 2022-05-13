

#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strncat

#define build_strncat(ftype, btype, name) \
ftype char *strncat_##name(ftype char *front, btype char *back, size_t count) \
{ \
	ftype char *start = front; \
\
	while(*front++); \
	front--; \
\
	while(count--) \
		if(!(*front++ = *back++)) \
			return start; \
	*front = 0; \
	return start; \
}

// builder : strncat

build_strncat(RAMPTR, RAMPTR, ss)
build_strncat(ROMPTR, RAMPTR, rs)
build_strncat(RAMPTR, ROMPTR, sr)
build_strncat(ROMPTR, ROMPTR, rr)


// interface : strncat

lptr_t strncat(lptr_t front, lptr_t back, size_t count)
{
	int flags;

	if(!count)
		return front;

	flags = (_lptr_ckpr(front) ? 1 : 0) |
			(_lptr_ckpr(back) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(strncat_ss(_lptr_ps(front), _lptr_ps(back), count));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(strncat_rs(_lptr_pr(front), _lptr_ps(back), count));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(strncat_sr(_lptr_ps(front), _lptr_pr(back), count));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(strncat_rr(_lptr_pr(front), _lptr_pr(back), count));
	}	
}





