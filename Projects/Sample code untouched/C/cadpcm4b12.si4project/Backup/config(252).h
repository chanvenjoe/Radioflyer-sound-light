

#ifndef _PROJECT_CONFIG_FILE_

#pragma comment(CONST, "_PROJECT_CONFIG_FILE_")

// -------- compiler configure ------

#pragma comment(OPTION, "no-fplib")		// not use float point

#pragma comment(OPTION, "pram=0x70200-0x70400")



// -------- library configure (libadpcm) ------

#pragma comment(CONST, "ADPCM_USE_PRAM")

#pragma inclib("libadpcm")

#endif


