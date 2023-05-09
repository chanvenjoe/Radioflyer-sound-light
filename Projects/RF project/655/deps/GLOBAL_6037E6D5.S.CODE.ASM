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
; //rjmp void _InitialDA4A7CC4();
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
; //_AE0CFD6DA_2639:;				
_AE0CFD6DA_2639:
; //	
; //_AE0CFD6DA_2640:;				
_AE0CFD6DA_2640:
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
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L0E8FA404_110;	
	if ZR	jmp L0E8FA404_110
; //	goto	L0E8FA404_109;			
	jmp	L0E8FA404_109
; //L0E8FA404_110:;					
L0E8FA404_110:
; //_AE0CFD6DA_2641:;				
_AE0CFD6DA_2641:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_108;			
	jmp	L0E8FA404_108
; //L0E8FA404_109:;					
L0E8FA404_109:
; //_AE0CFD6DA_2642:;				
_AE0CFD6DA_2642:
; //_AE0CFD6DA_2643:;				
_AE0CFD6DA_2643:
; //_AE0CFD6DA_2644:;				
_AE0CFD6DA_2644:
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
; //	if(__je__)	goto L0E8FA404_112;	
	if ZR	jmp L0E8FA404_112
; //	goto	L0E8FA404_111;			
	jmp	L0E8FA404_111
; //L0E8FA404_112:;					
L0E8FA404_112:
; //	
; //_AE0CFD6DA_2645:;				
_AE0CFD6DA_2645:
; //_AE0CFD6DA_2646:;				
_AE0CFD6DA_2646:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE0CFD6DA_2647:;				
_AE0CFD6DA_2647:
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
; //L0E8FA404_111:;					
L0E8FA404_111:
; //_AE0CFD6DA_2648:;				
_AE0CFD6DA_2648:
; //_AE0CFD6DA_2649:;				
_AE0CFD6DA_2649:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_108;			
	jmp	L0E8FA404_108
; //L0E8FA404_108:;					
L0E8FA404_108:
; //_AE0CFD6DA_2650:;				
_AE0CFD6DA_2650:
; //	return;					
	rets
; //_RampUpFF7996DA_end:;				
_RampUpFF7996DA_end:
; //_AE0CFD6DA_2651:;				
_AE0CFD6DA_2651:
; //}
; //
; //rjmp void _RampDown1D382EDA()			
_RampDown1D382EDA:
; //{
; //_AE0CFD6DA_2652:;				
_AE0CFD6DA_2652:
; //	
; //_AE0CFD6DA_2653:;				
_AE0CFD6DA_2653:
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
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L0E8FA404_115;	
	if ZR	jmp L0E8FA404_115
; //	goto	L0E8FA404_114;			
	jmp	L0E8FA404_114
; //L0E8FA404_115:;					
L0E8FA404_115:
; //_AE0CFD6DA_2654:;				
_AE0CFD6DA_2654:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_113;			
	jmp	L0E8FA404_113
; //L0E8FA404_114:;					
L0E8FA404_114:
; //_AE0CFD6DA_2655:;				
_AE0CFD6DA_2655:
; //_AE0CFD6DA_2656:;				
_AE0CFD6DA_2656:
; //_AE0CFD6DA_2657:;				
_AE0CFD6DA_2657:
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
; //	if(__je__)	goto L0E8FA404_117;	
	if ZR	jmp L0E8FA404_117
; //	goto	L0E8FA404_116;			
	jmp	L0E8FA404_116
; //L0E8FA404_117:;					
L0E8FA404_117:
; //	
; //_AE0CFD6DA_2658:;				
_AE0CFD6DA_2658:
; //_AE0CFD6DA_2659:;				
_AE0CFD6DA_2659:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE0CFD6DA_2660:;				
_AE0CFD6DA_2660:
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
; //L0E8FA404_116:;					
L0E8FA404_116:
; //_AE0CFD6DA_2661:;				
_AE0CFD6DA_2661:
; //_AE0CFD6DA_2662:;				
_AE0CFD6DA_2662:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_113;			
	jmp	L0E8FA404_113
; //L0E8FA404_113:;					
L0E8FA404_113:
; //_AE0CFD6DA_2663:;				
_AE0CFD6DA_2663:
; //	return;					
	rets
; //_RampDown1D382EDA_end:;				
_RampDown1D382EDA_end:
; //_AE0CFD6DA_2664:;				
_AE0CFD6DA_2664:
; //}
; //
; //rjmp void _InitialDA4A7CC4()			
_InitialDA4A7CC4:
; //{
; //_AE0CFD6DA_2665:;				
_AE0CFD6DA_2665:
; //	
; //_AE0CFD6DA_2666:;				
_AE0CFD6DA_2666:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_AE0CFD6DA_2667:;				
_AE0CFD6DA_2667:
; //	asm	AR = AX				
	AR = AX
; //_AE0CFD6DA_2668:;				
_AE0CFD6DA_2668:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_AE0CFD6DA_2669:;				
_AE0CFD6DA_2669:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_AE0CFD6DA_2670:;				
_AE0CFD6DA_2670:
; //	asm	AR = AX				
	AR = AX
; //_AE0CFD6DA_2671:;				
_AE0CFD6DA_2671:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_AE0CFD6DA_2672:;				
_AE0CFD6DA_2672:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //_AE0CFD6DA_2673:;				
_AE0CFD6DA_2673:
; //	asm	AR = AX				
	AR = AX
; //_AE0CFD6DA_2674:;				
_AE0CFD6DA_2674:
; //	asm	CBL = AR			
	CBL = AR
; //_AE0CFD6DA_2675:;				
_AE0CFD6DA_2675:
; //	io[0x67]	= 0x0007;		
	AR	= 0x07
	io[0x67]	= AR
; //_AE0CFD6DA_2676:;				
_AE0CFD6DA_2676:
; //	io[0x06]	= 0xC004;		
	AR	= 0xC004
	io[0x06]	= AR
; //_AE0CFD6DA_2677:;				
_AE0CFD6DA_2677:
; //	io[0x05]	= 0x0000;		
	AR	= 0x00
	io[0x05]	= AR
; //_AE0CFD6DA_2678:;				
_AE0CFD6DA_2678:
; //	io[0x09]	= 0x0000;		
	AR	= 0x00
	io[0x09]	= AR
; //_AE0CFD6DA_2679:;				
_AE0CFD6DA_2679:
; //	asm set io[0x00].b7;			
	set io[0x00].b7//
; //_AE0CFD6DA_2680:;				
_AE0CFD6DA_2680:
; //	asm set io[0x01].b1;			
	set io[0x01].b1//
; //L0E8FA404_118:;					
L0E8FA404_118:
; //_AE0CFD6DA_2681:;				
_AE0CFD6DA_2681:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_AE0CFD6DA_2682:;				
_AE0CFD6DA_2682:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_global_6037E6D5_s(void)	
ginit_code_global_6037E6D5_s:
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
