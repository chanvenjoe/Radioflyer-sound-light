


#ifndef _PROJECT_CONFIG_FILE_

// only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


// -------- project configure (libmd2) ------

// enable this if select PWM 64K at chip option
// #pragma comment(CONST, "_PWM_64K_")


#if _OPT_PRAMBank_ != 0

// setup PRAM range for C program

	#ifdef _MFDSP_
		#pragma comment(OPTION, "pram=0x20300-0x20400")
	#endif

	#ifdef _MSPEECHDSP_
		#pragma comment(OPTION, "pram=0x70300-0x70400")
	#endif

	#ifdef _MSPEECHDSP2_
		#pragma comment(OPTION, "pram=0xF0300-0xF0400")
	#endif

	// put some dtx system at PRAM to speed up system

	#pragma	comment(CONST, "DTX_PRAM_START = 0")
	#pragma	comment(CONST, "DTX_PRAM_BANK = _OPT_PRAMBank_")

#endif

	// data store at PROM
#pragma comment(CONST, "DTX_WORD_ADR")


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


// -------------------------------------

// -------- library configure (libdtx) ------

#pragma inclib("libdtx")



#endif






