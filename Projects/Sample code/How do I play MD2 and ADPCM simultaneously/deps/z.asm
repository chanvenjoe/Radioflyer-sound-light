; //#include "crt0.h"
; //
; //// CODE segment					
; 6C656251_ginit.s.c Code Start!!;
VarRM[0:4095]={
  
};

; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code(void)			
ginit_code:
; //{
; //	ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s();
	pch	= ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s
	lcall	ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s
; //	ginit_code_keypad_0E0216C1_s();		
	pch	= ginit_code_keypad_0E0216C1_s
	lcall	ginit_code_keypad_0E0216C1_s
; //	ginit_code_global_6037E6D5_s();		
	pch	= ginit_code_global_6037E6D5_s
	lcall	ginit_code_global_6037E6D5_s
; //	ginit_code_support_EBA84A55_s();	
	pch	= ginit_code_support_EBA84A55_s
	lcall	ginit_code_support_EBA84A55_s
; //	ginit_code_data_0EBCA7F9_s();		
	pch	= ginit_code_data_0EBCA7F9_s
	lcall	ginit_code_data_0EBCA7F9_s
; //	ginit_code_memset_CDCF17ED_s();		
	pch	= ginit_code_memset_CDCF17ED_s
	lcall	ginit_code_memset_CDCF17ED_s
; //	ginit_code_md2_8786BA41_s();		
	pch	= ginit_code_md2_8786BA41_s
	lcall	ginit_code_md2_8786BA41_s
; //	ginit_code_adp12_EF8DA009_s();		
	pch	= ginit_code_adp12_EF8DA009_s
	lcall	ginit_code_adp12_EF8DA009_s
; //	return;					
	rets
; //}
; //
; //
; //
