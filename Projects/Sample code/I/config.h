


#ifndef _PROJECT_CONFIG_FILE_

// only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

#include "option.inc"


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// tell compiler not include float point to save PROM space


// -------- project configure (libmd2) ------


#if _OPT_PRAMBank_ != 0

	// put some melody system at program ram to speed up system
	#pragma comment(CONST, "__RAMFUNC_ENABLE__")
	#pragma comment(CONST, "RAMBANK = _OPT_PRAMBank_")
	#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0000")

	#pragma comment(CONST, "Sbb3_UsePRAM")

#endif

#if _OPT_PROMSize_ >= 0x00020000

	#pragma comment(CONST, "MD2_INS_XDPCM8")

#else

	// using xDPCM 5-bit compress to save PROM space

	#pragma comment(CONST, "MD2_INS_XDPCM5")

#endif




#if _OPT_AudioSamplingRate_ == 32
	#pragma comment(CONST, "_PWM_32K_")
#endif

#if _OPT_AudioSamplingRate_ == 64
	#pragma comment(CONST, "_PWM_64K_")
#endif

#if _OPT_AudioSamplingRate_ == 128
	#pragma comment(CONST, "_PWM_128K_")
#endif

#pragma comment(CONST, "NO_OPTIMAL_RM")

// -------- library configure (libmd2) ------

#pragma inclib("libmd2")


// -------- library configure (libsub3) ------

#pragma path(lib, ".\\lib")
#pragma path(include, ".\\lib")
#pragma inclib("libsubb3")

#pragma explicit(libsub3)


#endif






