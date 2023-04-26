#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6

#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\655_99B6FC89.s.code.asm"
#include "deps\WS2811_02F950F9.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\tick.asm"
#include "deps\D58805FB_ginit.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\runtime.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\fp32rt.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\fp16rt.asm"


// .code segment

WAKEUP_PROC:
	PCH=	SYS_PROG_ENTRY
	ljmp	SYS_PROG_ENTRY

IntVectTable:
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY

// .code ends
