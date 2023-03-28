#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_655_99B6FC89_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_655_99B6FC89_s();
	return;
}

// .code ends _ginit

