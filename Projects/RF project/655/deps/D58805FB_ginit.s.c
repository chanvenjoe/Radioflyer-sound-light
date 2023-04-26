#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_655_99B6FC89_s:proc
// extern ginit_code_WS2811_02F950F9_s:proc
// extern ginit_code_global_6037E6D5_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_655_99B6FC89_s();
	ginit_code_WS2811_02F950F9_s();
	ginit_code_global_6037E6D5_s();
	return;
}

// .code ends _ginit

