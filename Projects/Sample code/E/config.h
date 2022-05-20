


#ifndef _PROJECT_CONFIG_FILE_

// only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


#if _OPT_PRAMBank_ != 0

	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "Sbb3_UsePRAM")

	// put some dtx system at PRAM to speed up system
	
	#pragma	comment(CONST, "DTX_PRAM_START = 0x0261")
	#pragma	comment(CONST, "DTX_PRAM_BANK = _OPT_PRAMBank_")


#endif

	// data store at PROM
#pragma comment(CONST, "DTX_WORD_ADR")


#if defined(_MSPEECHDSP2_) || defined(_MFDSP2_)
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


// -------- user library configure (libsubb3) ------

#pragma path(lib, ".\\lib")
#pragma path(include, ".\\lib")
#pragma inclib("libsubb3")
#pragma explicit(libsub3)


#endif






