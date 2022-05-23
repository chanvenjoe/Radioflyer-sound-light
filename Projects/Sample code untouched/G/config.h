


#ifndef _PROJECT_CONFIG_FILE_

// -------- only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"

// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


// -------- project configure (libmd2tiny) ------


#if _OPT_PRAMBank_ != 0

	// put some melody system at program ram to speed up system
	#pragma comment(CONST, "__RAMFUNC_ENABLE__")
	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	// #pragma comment(CONST, "_MD2_HALF_ADSR_")
	#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0200")

#endif


#if _OPT_AudioSamplingRate_ == 32
	#pragma comment(CONST, "_PWM_32K_")
#endif

#if _OPT_AudioSamplingRate_ == 64
	#pragma comment(CONST, "_PWM_64K_")
#endif



#pragma comment(CONST, "_MD2_TINY_MODE2_")


// --- include library

#pragma inclib("libmd2tiny")
#pragma inclib("libadpcm")



#endif







