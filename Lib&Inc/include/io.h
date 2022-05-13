
#ifndef _IO_P_
#define _IO_P_

#ifndef NULL
#define NULL				((void *)0)
#endif

#define BIT(x)				(1U << x)

#define _AT(x)				= x



#ifdef _MFDSP_
	#include <iom/io_fdsp.h>
#endif


#if defined(_MSPEECHDSP_) || defined(_MSPEECHDSP2_)
	#include <iom/io_mspeechdsp.h>
#endif



#endif



