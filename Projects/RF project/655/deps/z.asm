; //#include "crt0.h"
; //
; //// CODE segment					
; D58805FB_ginit.s.c Code Start!!;
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
; //	ginit_code_655_99B6FC89_s();		
	pch	= ginit_code_655_99B6FC89_s
	lcall	ginit_code_655_99B6FC89_s
; //	return;					
	rets
; //}
; //
; //
; //
