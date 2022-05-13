#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_DEV1_0_A8897B89_s:proc
// extern ginit_code_adp12_F2C761C1_s:proc
// extern ginit_code_adp8_4E0791D5_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_DEV1_0_A8897B89_s();
	ginit_code_adp12_F2C761C1_s();
	ginit_code_adp8_4E0791D5_s();
	return;
}

// .code ends _ginit

