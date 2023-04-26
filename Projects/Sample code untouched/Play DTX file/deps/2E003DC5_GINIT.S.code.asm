; 2E003DC5_ginit.s.c Code Start!!;
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
.code
; //
; //
; //naked void ginit_code(void)			
ginit_code:
; //{
; //	ginit_code_F_467EBAA5_s();		
	pch	= ginit_code_F_467EBAA5_s
	lcall	ginit_code_F_467EBAA5_s
; //	ginit_code_global_6037E6D5_s();		
	pch	= ginit_code_global_6037E6D5_s
	lcall	ginit_code_global_6037E6D5_s
; //	ginit_code_keypad_0E0216C1_s();		
	pch	= ginit_code_keypad_0E0216C1_s
	lcall	ginit_code_keypad_0E0216C1_s
; //	ginit_code_led_376AFC9D_s();		
	pch	= ginit_code_led_376AFC9D_s
	lcall	ginit_code_led_376AFC9D_s
; //	ginit_code_data_0EBCA7F9_s();		
	pch	= ginit_code_data_0EBCA7F9_s
	lcall	ginit_code_data_0EBCA7F9_s
; //	ginit_code_dtx_3359D009_s();		
	pch	= ginit_code_dtx_3359D009_s
	lcall	ginit_code_dtx_3359D009_s
; //	return;					
	rets
; //}
; //
; //
; //
