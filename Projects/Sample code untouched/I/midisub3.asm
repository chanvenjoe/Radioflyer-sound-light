#include "option.inc"
#define DSP_SRAM_SIZE		4096
#define DSP_VECT_SUPPORT		16
#define _PROJECT_CONFIG_FILE_		
#define __RAMFUNC_ENABLE__		
#define RAMBANK 		 _OPT_PRAMBank_
#define MD2_PRAM_START_BASE 		 0x0000
#define Sbb3_UsePRAM		
#define MD2_INS_XDPCM5		
#define _PWM_32K_		
#define NO_OPTIMAL_RM		
#define MD2_USE_PROM		
#define MD2_WORD_ADR		

#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\crt0\crt0.asm"
#include "deps\midisub3_F782A625.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "deps\keypad_0E0216C1.s.code.asm"
#include "deps\led_376AFC9D.s.code.asm"
#include "deps\midiplay_CB27BA55.s.code.asm"
#include "deps\sub3play_8ED4FA41.s.code.asm"
#include "asmfunc\interrupt.asm"
#include "asmfunc\support.asm"
#include "asmfunc\subbsupp.asm"
#include "deps\data_0EBCA7F9.s.code.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libio\io.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libio\_lptr_read.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libio\tick.asm"
#include "deps\memset_B8EB8B6D.s.code.asm"
#include "deps\md2_11FED0F9.s.code.asm"
#include "deps\sub3_cshell_257767F9.s.code.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libmd2\f2gm-piano-cohere.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libmd2\f2gm-cshell-e.asm"
#linkobj "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libmd2\vdrv-md2xdpcm-5b.obj"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\lib\libmd2\sprom.asm"
#linkobj ".\lib\libsubb3\Sbb3_Ch0decV07.obj"
#include ".\lib\libsubb3\sub3supp.asm"
#include "deps\3B8A3C71_ginit.s.code.asm"
#include "C:\TRITAN\FDSP-IDE_V2.63\tools\CC\crt0\runtime.asm"


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
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #EMPTY_INTENTRY
	DW #PWM_ENTRY

// .code ends
