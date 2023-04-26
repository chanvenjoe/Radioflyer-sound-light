; 6466E35F_ginit.s.c Code Start!!;
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
; //	ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s();
	pch	= ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s
	lcall	ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s
; //	ginit_code_global_6037E6D5_s();		
	pch	= ginit_code_global_6037E6D5_s
	lcall	ginit_code_global_6037E6D5_s
; //	ginit_code_keypad_0E0216C1_s();		
	pch	= ginit_code_keypad_0E0216C1_s
	lcall	ginit_code_keypad_0E0216C1_s
; //	ginit_code_led_376AFC9D_s();		
	pch	= ginit_code_led_376AFC9D_s
	lcall	ginit_code_led_376AFC9D_s
; //	ginit_code_sub3play_8ED4FA41_s();	
	pch	= ginit_code_sub3play_8ED4FA41_s
	lcall	ginit_code_sub3play_8ED4FA41_s
; //	ginit_code_data_0EBCA7F9_s();		
	pch	= ginit_code_data_0EBCA7F9_s
	lcall	ginit_code_data_0EBCA7F9_s
; //	ginit_code_dtx_3359D009_s();		
	pch	= ginit_code_dtx_3359D009_s
	lcall	ginit_code_dtx_3359D009_s
; //	ginit_code_sub3_cshell_257767F9_s();	
	pch	= ginit_code_sub3_cshell_257767F9_s
	lcall	ginit_code_sub3_cshell_257767F9_s
; //	return;					
	rets
; //}
; //
; //
; //
