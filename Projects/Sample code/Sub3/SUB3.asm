#include "option.inc"
#define DSP_SRAM_SIZE		4096
#define DSP_VECT_SUPPORT		16
#define _PROJECT_CONFIG_FILE_		
#define _PWM_32K_		
#define RAMBANK 		 _OPT_PRAMBank_
#define Sbb3_UsePRAM		
#define MD2_USE_PROM		
#define MD2_WORD_ADR		
#define MD2_PRAM_START_BASE 		 0x0000
#define MD2_INS_XDPCM8		

#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\sub3_EC6FFB89.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "deps\sub3play_8ED4FA41.s.code.asm"
#include "asmfunc\support.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\lib\libio\io.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\lib\libio\_lptr_read.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\lib\libio\tick.asm"
#include "deps\sub3_cshell_257767F9.s.code.asm"
#linkobj ".\lib\libsubb3\Sbb3_Ch0decV07.obj"
#include ".\lib\libsubb3\sub3supp.asm"
#include "deps\35D72ED5_ginit.s.code.asm"
#include "K:\Tritan IDE\FDSP-IDE\tools\CC\crt0\runtime.asm"


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
	DW #Pwm_process

// .code ends
