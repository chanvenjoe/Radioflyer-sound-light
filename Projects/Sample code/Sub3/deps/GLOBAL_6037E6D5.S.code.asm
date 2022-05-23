; global.c Code Start!!;
VarRM[0:4095]={
 _sub_vol980B1B83,_ticksA7263C09[2] 
};

; //
.code
; //
; //
; //rjmp void _RampUpFF7996DA();
; //rjmp void _RampDown1D382EDA();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
.code
; //rjmp void _RampUpFF7996DA()			
_RampUpFF7996DA:
; //{
; //_A19163650_61:;					
_A19163650_61:
; //	
; //_A19163650_62:;					
_A19163650_62:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x003F;			
	AR = 0x003F//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sCX	= 0x003F;			
	CX	= 0x3F
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0E8FA404_19;	
	if ZR	jmp L0E8FA404_19
; //	goto	L0E8FA404_18;			
	jmp	L0E8FA404_18
; //L0E8FA404_19:;					
L0E8FA404_19:
; //_A19163650_63:;					
_A19163650_63:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_17;			
	jmp	L0E8FA404_17
; //L0E8FA404_18:;					
L0E8FA404_18:
; //_A19163650_64:;					
_A19163650_64:
; //_A19163650_65:;					
_A19163650_65:
; //_A19163650_66:;					
_A19163650_66:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sCX	= *(__int16*)sSI++;		
	CX	= rm[I1++]
; //	sBX	= *(__int16*)sSI--;		
	BX	= rm[I1--]
; //	sfx_SUBLONG();				
	AR	= CX
	AX	= AX - AR
	AR	= BX
	DX	= DX - AR + C - 1
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sBX	= 0x0005;			
	BX	= 0x05
; //	sfx_CMPLONG_JA();			
	pch	= sfx_CMPLONG_JA
	lcall	sfx_CMPLONG_JA
; //	if(__je__)	goto L0E8FA404_21;	
	if ZR	jmp L0E8FA404_21
; //	goto	L0E8FA404_20;			
	jmp	L0E8FA404_20
; //L0E8FA404_21:;					
L0E8FA404_21:
; //	
; //_A19163650_67:;					
_A19163650_67:
; //_A19163650_68:;					
_A19163650_68:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	
; //_A19163650_69:;					
_A19163650_69:
; //	sSI	= (int)&_sub_vol980B1B83;	
	I1	= _sub_vol980B1B83
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sAX++;					
	AX++
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //L0E8FA404_20:;					
L0E8FA404_20:
; //_A19163650_70:;					
_A19163650_70:
; //_A19163650_71:;					
_A19163650_71:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_17;			
	jmp	L0E8FA404_17
; //L0E8FA404_17:;					
L0E8FA404_17:
; //_A19163650_72:;					
_A19163650_72:
; //	return;					
	rets
; //_RampUpFF7996DA_end:;				
_RampUpFF7996DA_end:
; //_A19163650_73:;					
_A19163650_73:
; //}
; //
; //rjmp void _RampDown1D382EDA()			
_RampDown1D382EDA:
; //{
; //_A19163650_74:;					
_A19163650_74:
; //	
; //_A19163650_75:;					
_A19163650_75:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x003F;			
	AR = 0x003F//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0E8FA404_24;	
	if ZR	jmp L0E8FA404_24
; //	goto	L0E8FA404_23;			
	jmp	L0E8FA404_23
; //L0E8FA404_24:;					
L0E8FA404_24:
; //_A19163650_76:;					
_A19163650_76:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_22;			
	jmp	L0E8FA404_22
; //L0E8FA404_23:;					
L0E8FA404_23:
; //_A19163650_77:;					
_A19163650_77:
; //_A19163650_78:;					
_A19163650_78:
; //_A19163650_79:;					
_A19163650_79:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sCX	= *(__int16*)sSI++;		
	CX	= rm[I1++]
; //	sBX	= *(__int16*)sSI--;		
	BX	= rm[I1--]
; //	sfx_SUBLONG();				
	AR	= CX
	AX	= AX - AR
	AR	= BX
	DX	= DX - AR + C - 1
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sBX	= 0x0005;			
	BX	= 0x05
; //	sfx_CMPLONG_JA();			
	pch	= sfx_CMPLONG_JA
	lcall	sfx_CMPLONG_JA
; //	if(__je__)	goto L0E8FA404_26;	
	if ZR	jmp L0E8FA404_26
; //	goto	L0E8FA404_25;			
	jmp	L0E8FA404_25
; //L0E8FA404_26:;					
L0E8FA404_26:
; //	
; //_A19163650_80:;					
_A19163650_80:
; //_A19163650_81:;					
_A19163650_81:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	
; //_A19163650_82:;					
_A19163650_82:
; //	sSI	= (int)&_sub_vol980B1B83;	
	I1	= _sub_vol980B1B83
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sAX--;					
	AX--
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //L0E8FA404_25:;					
L0E8FA404_25:
; //_A19163650_83:;					
_A19163650_83:
; //_A19163650_84:;					
_A19163650_84:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_22;			
	jmp	L0E8FA404_22
; //L0E8FA404_22:;					
L0E8FA404_22:
; //_A19163650_85:;					
_A19163650_85:
; //	return;					
	rets
; //_RampDown1D382EDA_end:;				
_RampDown1D382EDA_end:
; //_A19163650_86:;					
_A19163650_86:
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
