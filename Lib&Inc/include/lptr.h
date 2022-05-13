
#ifndef _LPTR_H_
#define _LPTR_H_

#ifndef ROMPTR
#define	ROMPTR		code
#endif

#ifndef RAMPTR
#define RAMPTR
#endif


#define	RAM_NULL	0
#define ROM_NULL	0x08000000


union _lptr_ptr {
	code void *po;
	void *pa;
};


struct _lptr_member {
	union _lptr_ptr ptr;
	int hadr;
};


union _lptr_i {
	struct _lptr_member P;
	long L;
};

// ~~==========

// check code pointer
#define _lptr_ckpr(x)	(((struct _lptr_member *)&x)->hadr)

// lptr_t -> code pointer
#define _lptr_pr(x)		(((struct _lptr_member *)&x)->ptr.po)

// lptr_t -> data pointer
#define _lptr_ps(x)		(((struct _lptr_member *)&x)->ptr.pa)

// NULL check
#define _lptr_NULL(x)	(!((x) & 0x0FFFF))


import int _lptr_read(lptr_t adr)	rpdax;
import long _lptr_read32(lptr_t adr)	rpdax;

import void _lptr_write(lptr_t adr, int data);
import void _lptr_write32(lptr_t adr, long data);



#endif


