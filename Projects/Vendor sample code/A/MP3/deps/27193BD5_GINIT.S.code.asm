; 27193BD5_ginit.s.c Code Start!!;
VarRM[0:4095]={
  
};

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
; //	ginit_code_MP3_F86E4DB1_s();		
	pch	= ginit_code_MP3_F86E4DB1_s
	lcall	ginit_code_MP3_F86E4DB1_s
; //	return;					
	rets
; //}
; //
; //
; //
