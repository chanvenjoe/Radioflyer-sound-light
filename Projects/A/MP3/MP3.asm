#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6

#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\MP3_F86E4DB1.s.code.asm"
#include "code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\io.asm"
#include "deps\27193BD5_ginit.s.code.asm"
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
	DW #_PWM99B23D7D

// .code ends
