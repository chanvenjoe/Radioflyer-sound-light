; 11C6BDB1_ginit.s.c Code Start!!;
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
.code
; //
; //
; //naked void ginit_code(void)			
ginit_code:
; //{
; //	ginit_code_SUBBAND23_434E3D41_s();	
	pch	= ginit_code_SUBBAND23_434E3D41_s
	lcall	ginit_code_SUBBAND23_434E3D41_s
; //	ginit_code_global_6037E6D5_s();		
	pch	= ginit_code_global_6037E6D5_s
	lcall	ginit_code_global_6037E6D5_s
; //	ginit_code_sub3play_8ED4FA41_s();	
	pch	= ginit_code_sub3play_8ED4FA41_s
	lcall	ginit_code_sub3play_8ED4FA41_s
; //	ginit_code_sub3_cshell_257767F9_s();	
	pch	= ginit_code_sub3_cshell_257767F9_s
	lcall	ginit_code_sub3_cshell_257767F9_s
; //	return;					
	rets
; //}
; //
; //
; //
