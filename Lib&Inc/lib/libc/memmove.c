
#include <string.h>

#define uintptr_t		unsigned int

// template : memmove

#define build_memmove(target, source, name) \
target void *memmove_##name(target void *dst, source void *src, size_t acount) \
{ \
	target char *d; \
	source char *s; \
\
	if((uintptr_t)src < (uintptr_t)dst) \
	{ \
		d = ((target char *)dst) + acount - 1; \
		s = ((source char *)src) + acount - 1; \
		while(acount--) \
		{ \
			*d-- = *s--; \
		} \
	} \
	else \
	{ \
		d = dst; \
		s = src; \
		while(acount--) \
		{ \
			*d++ = *s++; \
		} \
	} \
\
	return dst; \
}


#define build_memmove_alt(target, source, name) \
target void *memmove_##name(target void *dst, source void *src, size_t acount) \
{ \
	target char *d; \
	source char *s; \
\
	d = dst; \
	s = src; \
	while(acount--) \
	{ \
		*d++ = *s++; \
	} \
\
	return dst; \
}


// builder : memmove

build_memmove(RAMPTR, RAMPTR, ss)
build_memmove_alt(ROMPTR, RAMPTR, rs)
build_memmove_alt(RAMPTR, ROMPTR, sr)
build_memmove(ROMPTR, ROMPTR, rr)


// interface : memmove

lptr_t memmove(lptr_t dst, const lptr_t src, size_t acount)
{
	int flags;

	if(!acount)
		return 0;

	flags = (_lptr_ckpr(dst) ? 1 : 0) |
			(_lptr_ckpr(src) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return lptr_t(memmove_ss(_lptr_ps(dst), _lptr_ps(src), acount));
		case 1:		// ROMPTR / RAMPTR
			return lptr_t(memmove_rs(_lptr_pr(dst), _lptr_ps(src), acount));
		case 2:		// RAMPTR / ROMPTR
			return lptr_t(memmove_sr(_lptr_ps(dst), _lptr_pr(src), acount));
		case 3:		// ROMPTR / ROMPTR
			return lptr_t(memmove_rr(_lptr_pr(dst), _lptr_pr(src), acount));
	}
}








