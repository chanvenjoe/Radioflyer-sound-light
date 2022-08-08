#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_touch_AB036625_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_touch_AB036625_s();
	return;
}

// .code ends _ginit

