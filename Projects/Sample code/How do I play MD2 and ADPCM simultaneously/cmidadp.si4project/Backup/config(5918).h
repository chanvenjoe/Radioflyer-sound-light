


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

// -------- library configure (libmd2tiny) ------

#pragma inclib("libmd2tiny")

#pragma comment(CONST, "USE_PWM")


// -------- ADPCM use PRAM ------------------

#pragma comment(CONST, "Use_SRAM")


#endif







