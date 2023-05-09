#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_SUBBAND23_434E3D41_s:proc
// extern ginit_code_global_6037E6D5_s:proc
// extern ginit_code_sub3play_8ED4FA41_s:proc
// extern ginit_code_sub3_cshell_257767F9_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_SUBBAND23_434E3D41_s();
	ginit_code_global_6037E6D5_s();
	ginit_code_sub3play_8ED4FA41_s();
	ginit_code_sub3_cshell_257767F9_s();
	return;
}

// .code ends _ginit

