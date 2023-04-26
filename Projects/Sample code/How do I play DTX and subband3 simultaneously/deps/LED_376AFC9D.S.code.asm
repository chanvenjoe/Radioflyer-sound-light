; led.c Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //rjmp void _KeyShowLEDA84888EC();
; //
; //
; //
; //
.code
; //rjmp void _KeyShowLEDA84888EC()			
_KeyShowLEDA84888EC:
; //{
; //_AFFC519C6_243:;				
_AFFC519C6_243:
; //	
; //_AFFC519C6_244:;				
_AFFC519C6_244:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = dtxtonech+7;			
	I1 = dtxtonech+7//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__) goto L7573600E_96;		
	if ZR	jmp L7573600E_96
; //	asm set io[0x09].b0;			
	set io[0x09].b0//
; //	goto	L7573600E_97;			
	jmp	L7573600E_97
; //L7573600E_96:;					
L7573600E_96:
; //	asm clr io[0x09].b0;			
	clr io[0x09].b0//
; //L7573600E_97:;					
L7573600E_97:
; //_AFFC519C6_245:;				
_AFFC519C6_245:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	asm I1 = dtxtonech+7;			
	I1 = dtxtonech+7//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__) goto L7573600E_98;		
	if ZR	jmp L7573600E_98
; //	asm set io[0x09].b1;			
	set io[0x09].b1//
; //	goto	L7573600E_99;			
	jmp	L7573600E_99
; //L7573600E_98:;					
L7573600E_98:
; //	asm clr io[0x09].b1;			
	clr io[0x09].b1//
; //L7573600E_99:;					
L7573600E_99:
; //L7573600E_95:;					
L7573600E_95:
; //_AFFC519C6_246:;				
_AFFC519C6_246:
; //	return;					
	rets
; //_KeyShowLEDA84888EC_end:;			
_KeyShowLEDA84888EC_end:
; //_AFFC519C6_247:;				
_AFFC519C6_247:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_led_376AFC9D_s(void)	
ginit_code_led_376AFC9D_s:
; //{
; //	return;					
	rets
; //}
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
; //
.code
; //
; //
; //
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
.code
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
