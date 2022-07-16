#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6
#define _PROJECT_CONFIG_FILE_		

#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\D_CF87A0F9.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "deps\playadp_65A00B9D.s.code.asm"
#include "deps\keypad_0E0216C1.s.code.asm"
#include "deps\sub3play_8ED4FA41.s.code.asm"
#include "asmfunc\interrupt.asm"
#include "asmfunc\support.asm"
#include "deps\linkfile_0F894B6D.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\io.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\_lptr_read.asm"
#include "deps\memset_CDCF17ED.s.code.asm"
#include "deps\adp12_EF8DA009.s.code.asm"
#include "deps\sub3_cshell_257767F9.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libadpcm\adp12_cshell-e.asm"
#linkobj "C:\TRITAN\FDSP-IDE\tools\CC\lib\libadpcm\xDSP_ADPCM_4Bit_DecV04.obj"
#linkobj ".\lib\libsubb3\Sbb3_Ch0decV07.obj"
#include ".\lib\libsubb3\sub3supp.asm"
#include "deps\278206AB_ginit.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\runtime.asm"


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
	DW #PWM_ENTRY

// .code ends
