#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s:proc
// extern ginit_code_global_6037E6D5_s:proc
// extern ginit_code_keypad_0E0216C1_s:proc
// extern ginit_code_led_376AFC9D_s:proc
// extern ginit_code_sub3play_8ED4FA41_s:proc
// extern ginit_code_data_0EBCA7F9_s:proc
// extern ginit_code_dtx_3359D009_s:proc
// extern ginit_code_sub3_cshell_257767F9_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s();
	ginit_code_global_6037E6D5_s();
	ginit_code_keypad_0E0216C1_s();
	ginit_code_led_376AFC9D_s();
	ginit_code_sub3play_8ED4FA41_s();
	ginit_code_data_0EBCA7F9_s();
	ginit_code_dtx_3359D009_s();
	ginit_code_sub3_cshell_257767F9_s();
	return;
}

// .code ends _ginit

