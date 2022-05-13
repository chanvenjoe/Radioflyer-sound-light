#ifndef _ERRNO_H
#define _ERRNO_H

extern int errno;

/* Error Codes: */

#define EDOM        33  /* Math argument out of domain of functions */
#define ERANGE      34  /* Math result not representable */
#define	EILSEQ		84	/* Illegal byte sequence */

#endif