


#ifndef _PROJECT_CONFIG_FILE_

// only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


#if _OPT_AudioSamplingRate_ == 32
	#pragma comment(CONST, "_PWM_32K_")
#endif

#if _OPT_AudioSamplingRate_ == 64
	#pragma comment(CONST, "_PWM_64K_")
#endif

#if _OPT_AudioSamplingRate_ == 128
	#pragma comment(CONST, "_PWM_128K_")
#endif


#if _OPT_PRAMBank_ != 0

	#pragma	comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "Sbb3_UsePRAM")

#endif


// library - libsubb3

#pragma path(lib, ".\\lib")
#pragma path(include, ".\\lib")
#pragma inclib("libsubb3")
#pragma explicit(libsub3)


#endif






