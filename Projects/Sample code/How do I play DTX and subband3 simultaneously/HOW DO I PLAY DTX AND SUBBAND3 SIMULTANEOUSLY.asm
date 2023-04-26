#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6
#define _PROJECT_CONFIG_FILE_		
#define DTX_WORD_ADR		
#define MIDIPCMDEC		
#define _PWM_32K_		

#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\HOW DO I PLAY DTX AND SUBBAND3 SIMULTANEOUSLY_528516D5.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "deps\keypad_0E0216C1.s.code.asm"
#include "deps\led_376AFC9D.s.code.asm"
#include "deps\sub3play_8ED4FA41.s.code.asm"
#include "asmfunc\interrupt.asm"
#include "asmfunc\support.asm"
#include "deps\data_0EBCA7F9.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\io.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\_lptr_read.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libio\tick.asm"
#include "deps\dtx_3359D009.s.code.asm"
#include "deps\sub3_cshell_257767F9.s.code.asm"
#linkobj "C:\TRITAN\FDSP-IDE\tools\CC\lib\libdtx\dtxdochannel.obj"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libdtx\dtxplayer.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libdtx\sprom.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libdtx\dtx_cshell-e.asm"
#linkobj ".\lib\libsubb3\Sbb3_Ch0decV05.obj"
#include ".\lib\libsubb3\sub3supp.asm"
#include "deps\6466E35F_ginit.s.code.asm"
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
