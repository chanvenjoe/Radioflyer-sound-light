


#ifndef _PROJECT_CONFIG_FILE_

// -------- only once in project
#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")


// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point


// -------- project configure (libmd2trs) ------

// put some melody system at program ram to speed up system
#pragma comment(CONST, "__RAMFUNC_ENABLE__")

// enable this if sound is compressed by soft-adpcm
#pragma comment(CONST, "SOFTADPDEC")

// turn off Optimal_RM function
//#pragma comment(CONST, "NO_OPTIMAL_RM")

// -------------------------------------

// -------- library configure ------

#pragma comment(CONST, "_MD2_TINY_MODE2_")
#pragma comment(CONST, "_MD2_HALF_ADSR_")
#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0280")



#pragma inclib("libmd2tiny")


#pragma comment(CONST, "Use_SRAM")

#pragma inclib("libadpcm")


// -------- output select -------------------

#pragma comment(CONST, "USE_PWM")



#endif







