#include "crt0.h"

// CODE segment

// RCODE segment

// public ginit_code
// extern ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s:proc
// extern ginit_code_keypad_0E0216C1_s:proc
// extern ginit_code_global_6037E6D5_s:proc
// extern ginit_code_support_EBA84A55_s:proc
// extern ginit_code_data_0EBCA7F9_s:proc
// extern ginit_code_memset_CDCF17ED_s:proc
// extern ginit_code_md2_8786BA41_s:proc
// extern ginit_code_adp12_EF8DA009_s:proc
// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code(void)
{
	ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s();
	ginit_code_keypad_0E0216C1_s();
	ginit_code_global_6037E6D5_s();
	ginit_code_support_EBA84A55_s();
	ginit_code_data_0EBCA7F9_s();
	ginit_code_memset_CDCF17ED_s();
	ginit_code_md2_8786BA41_s();
	ginit_code_adp12_EF8DA009_s();
	return;
}

// .code ends _ginit

