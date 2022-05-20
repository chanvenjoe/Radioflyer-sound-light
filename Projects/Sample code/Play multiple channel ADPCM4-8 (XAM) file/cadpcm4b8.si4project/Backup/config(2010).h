

#ifndef _PROJECT_CONFIG_FILE_

#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"

// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


// -------- library configure (libadpcm) ------


#pragma inclib("libadpcm")


// ------- compiler PRAM option --------------


#if _OPT_PRAMBank_ != 0

// preserve PRAM 0x0000 ~ 0x01FF for ADPCM decode

#pragma comment(CONST, "ADPCM_USE_PRAM")

// setup PRAM range for C program

	#ifdef _MFDSP_
	#pragma comment(OPTION, "pram=0x20000-0x20400")
	#endif

	#ifdef _MSPEECHDSP_
	#pragma comment(OPTION, "pram=0x70000-0x70400")
	#endif

	#ifdef _MSPEECHDSP2_
	#pragma comment(OPTION, "pram=0xF0000-0xF0400")
	#endif

#endif



#endif


