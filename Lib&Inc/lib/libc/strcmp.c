
#include <string.h>

#pragma __attribute__("rjmp rcall")

// template : strcmp

#define build_strcmp(source, target, name) \
int strcmp_##name(source char *src, target char *dst) \
{ \
	while(!(*src - *dst) && *dst) \
		++src, ++dst; \
	return *src - *dst; \
}

// builder : strcmp

build_strcmp(RAMPTR, RAMPTR, ss)
build_strcmp(ROMPTR, RAMPTR, rs)
build_strcmp(RAMPTR, ROMPTR, sr)
build_strcmp(ROMPTR, ROMPTR, rr)

// interface : strcmp

int strcmp(const lptr_t src, const lptr_t dst)
{
	int flags;

	flags = (_lptr_ckpr(src) ? 1 : 0) |
			(_lptr_ckpr(dst) ? 2 : 0);

	switch(flags)
	{
		case 0:		// RAMPTR / RAMPTR
			return strcmp_ss(_lptr_ps(src), _lptr_ps(dst));
		case 1:		// ROMPTR / RAMPTR
			return strcmp_rs(_lptr_pr(src), _lptr_ps(dst));
		case 2:		// RAMPTR / ROMPTR
			return strcmp_sr(_lptr_ps(src), _lptr_pr(dst));
		case 3:		// ROMPTR / ROMPTR
			return strcmp_rr(_lptr_pr(src), _lptr_pr(dst));
	}
}






