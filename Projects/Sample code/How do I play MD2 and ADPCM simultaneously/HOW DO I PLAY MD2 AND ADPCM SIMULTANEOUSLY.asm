#include "option.inc"
#define DSP_SRAM_SIZE		3072
#define DSP_VECT_SUPPORT		6
#define _PROJECT_CONFIG_FILE_		
#define MIDIPCMDEC		
#define _PWM_32K_		
#define _MD2_TINY_MODE2_		
#define MD2_USE_PROM		
#define MD2_WORD_ADR		
#define RAMBANK 		 15
#define MD2_PRAM_START_BASE 		 0x0000

#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.inc"
#include "C:\TRITAN\FDSP-IDE\tools\CC\crt0\crt0.asm"
#include "deps\HOW DO I PLAY MD2 AND ADPCM SIMULTANEOUSLY_D38B16D5.s.code.asm"
#include "deps\keypad_0E0216C1.s.code.asm"
#include "deps\global_6037E6D5.s.code.asm"
#include "deps\support_EBA84A55.s.code.asm"
#include "asmfunc\interrupt.asm"
#include "asmfunc\support.asm"
#include "deps\data_0EBCA7F9.s.code.asm"
#include "deps\memset_CDCF17ED.s.code.asm"
#include "deps\md2_8786BA41.s.code.asm"
#include "deps\adp12_EF8DA009.s.code.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libmd2tiny\F2gm-piano-cohere-tiny.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libmd2tiny\f2gm-cshell-e.asm"
#linkobj "C:\TRITAN\FDSP-IDE\tools\CC\lib\libmd2tiny\md2midpcm.obj"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libmd2tiny\f2gm-media.asm"
#include "C:\TRITAN\FDSP-IDE\tools\CC\lib\libadpcm\adp12_cshell-e.asm"
#linkobj "C:\TRITAN\FDSP-IDE\tools\CC\lib\libadpcm\xDSP_ADPCM_4Bit_DecV04.obj"
#include "deps\6C656251_ginit.s.code.asm"
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
	DW #Pwm_process

// .code ends
