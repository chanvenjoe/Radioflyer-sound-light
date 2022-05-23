

#ifndef _PROJECT_CONFIG_FILE_

#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"

// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


// ------- compiler PRAM option --------------


#if _OPT_PRAMBank_ != 0

	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "Sbb3_UsePRAM")

	// ADPCM use DynCache system to run at PRAM

	#pragma comment(CONST, "ADPCM_USE_PRAM")

	// setup PRAM range for C program

	#ifdef _MFDSP_
	#pragma comment(OPTION, "pram=0x20261-0x20400")
	#endif

	#ifdef _MSPEECHDSP_
	#pragma comment(OPTION, "pram=0x70261-0x70400")
	#endif

	#ifdef _MSPEECHDSP2_
	#pragma comment(OPTION, "pram=0xF0261-0xF0400")
	#endif

#endif



// -------- library configure (libadpcm) ------

#pragma inclib("libadpcm")

// -------- library configure (libsubb3) ------

#pragma path(lib, ".\\lib")
#pragma path(include, ".\\lib")
#pragma inclib("libsubb3")
#pragma explicit(libsub3)

#endif



