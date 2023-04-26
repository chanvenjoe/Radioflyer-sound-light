


#ifndef _PROJECT_CONFIG_FILE_

// -------- only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"

// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point

#pragma inclib("libmd2tiny")
#pragma inclib("libadpcm")


// -------- project configure (libmd2tiny) ------


#if _OPT_PRAMBank_ != 0

// preserve PRAM 0x0000 ~ 0x01FF for ADPCM decode

	#pragma comment(CONST, "ADPCM_USE_PRAM")


	// put some melody system at program ram to speed up system
	#pragma comment(CONST, "__RAMFUNC_ENABLE__")
	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "_MD2_HALF_ADSR_")
	#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0278")

#endif

#ifdef _MSPEECHDSP2_
	// enable this if sound is compressed by midipcm
	#pragma comment(CONST, "MIDIPCMDEC")
#else
	// enable this if sound is compressed by soft-adpcm
	#pragma comment(CONST, "SOFTADPDEC")
#endif


#if _OPT_AudioSamplingRate_ == 32
	#pragma comment(CONST, "_PWM_32K_")
#endif

#if _OPT_AudioSamplingRate_ == 64
	#pragma comment(CONST, "_PWM_64K_")
#endif



#pragma comment(CONST, "_MD2_TINY_MODE2_")



#endif







