
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : memchr

#define build_memcmp(source, target, name) \
int memcmp_##name(source void *buf1, target void *buf2, size_t n) \
{ \
	source char *p;	\
	target char *q;	\
	p = (source char *)buf1; \
	q = (target char *)buf2; \
	while(--n && *p == *q) \
	{\
		p++; \
		q++; \
	}\
	return (*p - *q); \
}

// builder : memchr

build_memcmp(RAMPTR, RAMPTR, ss)
build_memcmp(ROMPTR, RAMPTR, rs)
build_memcmp(RAMPTR, ROMPTR, sr)
build_memcmp(ROMPTR, ROMPTR, rr)


// interface : memchr

int memcmp(lptr_t buf1, lptr_t buf2, size_t count)
{
	int flags;
	
	if(!count)
		return 0;

	flags = (_lptr_ckpr(buf1) ? 1 : 0) |
			(_lptr_ckpr(buf2) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return memcmp_ss(_lptr_ps(buf1), _lptr_ps(buf2), count);
		case 1:		// ROMPTR / RAMPTR
			return memcmp_rs(_lptr_pr(buf1), _lptr_ps(buf2), count);
		case 2:		// RAMPTR / ROMPTR
			return memcmp_sr(_lptr_ps(buf1), _lptr_pr(buf2), count);
		case 3:		// ROMPTR / ROMPTR
			return memcmp_rr(_lptr_pr(buf1), _lptr_pr(buf2), count);
	}
}
