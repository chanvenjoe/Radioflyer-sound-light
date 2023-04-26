; WS2811.c Code Start!!;
VarRM[0:4095]={
 LD63FD439_15,LD63FD439_72,_LED_Buf98A4A35A[20],_sum6BC8EB73,LD63FD439_28 
};

; //
.code
; //
; //
; //void _WS_Send24bits851C5C55(__int16 _color_0_4);
; //void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6);
; //void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8);
; //void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6);
; //void _WS_RefreshAD7B99B1();
; //void _WS_Key_RGBC5B96B6D();
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
; //void _WS_Send24bits851C5C55(__int16 _color_0_4)	
_WS_Send24bits851C5C55:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A30BB6F62_57:;					
_A30BB6F62_57:
; //_A30BB6F62_58:;					
_A30BB6F62_58:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_18:;					
LD63FD439_18:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0018;			
	CX	= 0x18
; //	sfx_CMP_AX_CX_JB();			
	pch	= sfx_CMP_AX_CX_JB
	lcall	sfx_CMP_AX_CX_JB
; //	if(__je__)	goto LD63FD439_22;	
	if ZR	jmp LD63FD439_22
; //	goto	LD63FD439_20;			
	pch =	LD63FD439_20
	ljmp	LD63FD439_20
; //LD63FD439_22:;					
LD63FD439_22:
; //	goto LD63FD439_19;			
	pch =	LD63FD439_19
	ljmp	LD63FD439_19
; //LD63FD439_21:;					
LD63FD439_21:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LD63FD439_18;			
	pch =	LD63FD439_18
	ljmp	LD63FD439_18
; //LD63FD439_19:;					
LD63FD439_19:
; //	
; //_A30BB6F62_59:;					
_A30BB6F62_59:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x0000;			
	AR = 0x0000//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LD63FD439_24;	
	if NZ	jmp LD63FD439_24
; //	goto	LD63FD439_23;			
	pch =	LD63FD439_23
	ljmp	LD63FD439_23
; //LD63FD439_24:;					
LD63FD439_24:
; //	
; //_A30BB6F62_60:;					
_A30BB6F62_60:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_61:;					
_A30BB6F62_61:
; //	asm	nop				
	nop
; //_A30BB6F62_62:;					
_A30BB6F62_62:
; //	asm	nop				
	nop
; //_A30BB6F62_63:;					
_A30BB6F62_63:
; //	asm	nop				
	nop
; //_A30BB6F62_64:;					
_A30BB6F62_64:
; //	asm	nop				
	nop
; //_A30BB6F62_65:;					
_A30BB6F62_65:
; //	asm	nop				
	nop
; //_A30BB6F62_66:;					
_A30BB6F62_66:
; //	asm	nop				
	nop
; //_A30BB6F62_67:;					
_A30BB6F62_67:
; //	asm	nop				
	nop
; //_A30BB6F62_68:;					
_A30BB6F62_68:
; //	asm	nop				
	nop
; //_A30BB6F62_69:;					
_A30BB6F62_69:
; //	asm	nop				
	nop
; //_A30BB6F62_70:;					
_A30BB6F62_70:
; //	asm	nop				
	nop
; //_A30BB6F62_71:;					
_A30BB6F62_71:
; //	asm	nop				
	nop
; //_A30BB6F62_72:;					
_A30BB6F62_72:
; //	asm	nop				
	nop
; //_A30BB6F62_73:;					
_A30BB6F62_73:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_74:;					
_A30BB6F62_74:
; //	asm	nop				
	nop
; //_A30BB6F62_75:;					
_A30BB6F62_75:
; //	asm	nop				
	nop
; //_A30BB6F62_76:;					
_A30BB6F62_76:
; //	asm	nop				
	nop
; //	goto LD63FD439_25;			
	pch =	LD63FD439_25
	ljmp	LD63FD439_25
; //LD63FD439_23:;					
LD63FD439_23:
; //_A30BB6F62_77:;					
_A30BB6F62_77:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //LD63FD439_25:;					
LD63FD439_25:
; //_A30BB6F62_78:;					
_A30BB6F62_78:
; //_A30BB6F62_79:;					
_A30BB6F62_79:
; //	asm	nop				
	nop
; //_A30BB6F62_80:;					
_A30BB6F62_80:
; //	asm	nop				
	nop
; //_A30BB6F62_81:;					
_A30BB6F62_81:
; //	asm	nop				
	nop
; //_A30BB6F62_82:;					
_A30BB6F62_82:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_83:;					
_A30BB6F62_83:
; //	asm	nop				
	nop
; //_A30BB6F62_84:;					
_A30BB6F62_84:
; //	asm	nop				
	nop
; //_A30BB6F62_85:;					
_A30BB6F62_85:
; //	asm	nop				
	nop
; //_A30BB6F62_86:;					
_A30BB6F62_86:
; //	asm	nop				
	nop
; //_A30BB6F62_87:;					
_A30BB6F62_87:
; //	asm	nop				
	nop
; //_A30BB6F62_88:;					
_A30BB6F62_88:
; //	asm	nop				
	nop
; //_A30BB6F62_89:;					
_A30BB6F62_89:
; //	asm	nop				
	nop
; //_A30BB6F62_90:;					
_A30BB6F62_90:
; //	asm	nop				
	nop
; //_A30BB6F62_91:;					
_A30BB6F62_91:
; //	asm	nop				
	nop
; //_A30BB6F62_92:;					
_A30BB6F62_92:
; //	asm	nop				
	nop
; //_A30BB6F62_93:;					
_A30BB6F62_93:
; //	asm	nop				
	nop
; //_A30BB6F62_94:;					
_A30BB6F62_94:
; //	asm	nop				
	nop
; //_A30BB6F62_95:;					
_A30BB6F62_95:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm slz AX, 1;				
	slz AX, 1//
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	goto LD63FD439_21;			
	pch =	LD63FD439_21
	ljmp	LD63FD439_21
; //LD63FD439_20:;					
LD63FD439_20:
; //_A30BB6F62_96:;					
_A30BB6F62_96:
; //LD63FD439_17:;					
LD63FD439_17:
; //_A30BB6F62_97:;					
_A30BB6F62_97:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_Send24bits851C5C55_end:;			
_WS_Send24bits851C5C55_end:
; //_A30BB6F62_98:;					
_A30BB6F62_98:
; //}
; //
; //void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6)
_WS_Color_copyADB1DFED:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A30BB6F62_99:;					
_A30BB6F62_99:
; //	
; //_A30BB6F62_100:;				
_A30BB6F62_100:
; //	asm AX = _LED_Buf98A4A35A+0;		
	AX = _LED_Buf98A4A35A+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_No_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0005;			
	CX	= 0x05
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_color_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_UINT2ULONG_AX();			
	DX	= 0
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //LD63FD439_26:;					
LD63FD439_26:
; //_A30BB6F62_101:;				
_A30BB6F62_101:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_Color_copyADB1DFED_end:;			
_WS_Color_copyADB1DFED_end:
; //_A30BB6F62_102:;				
_A30BB6F62_102:
; //}
; //
; //void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8)
_WS_ColorSet_LEDCA3DEB8C:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A30BB6F62_103:;				
_A30BB6F62_103:
; //	
; //_A30BB6F62_104:;				
_A30BB6F62_104:
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sfx_CMP_AX_CX_JBE();			
	pch	= sfx_CMP_AX_CX_JBE
	lcall	sfx_CMP_AX_CX_JBE
; //	if(__je__)	goto LD63FD439_30;	
	if ZR	jmp LD63FD439_30
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	LD63FD439_31;			
	pch =	LD63FD439_31
	ljmp	LD63FD439_31
; //LD63FD439_30:;					
LD63FD439_30:
; //	sAX	= 0;				
	AX	= 0x00
; //LD63FD439_31:;					
LD63FD439_31:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto LD63FD439_32;	
	if ZR	jmp LD63FD439_32
; //	goto	LD63FD439_29;			
	pch =	LD63FD439_29
	ljmp	LD63FD439_29
; //LD63FD439_32:;					
LD63FD439_32:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JAE();			
	pch	= sfx_CMP_AX_CX_JAE
	lcall	sfx_CMP_AX_CX_JAE
; //	if(__je__)	goto LD63FD439_33;	
	if ZR	jmp LD63FD439_33
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	LD63FD439_34;			
	pch =	LD63FD439_34
	ljmp	LD63FD439_34
; //LD63FD439_33:;					
LD63FD439_33:
; //	sAX	= 0;				
	AX	= 0x00
; //LD63FD439_34:;					
LD63FD439_34:
; //LD63FD439_29:;					
LD63FD439_29:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LD63FD439_36;	
	if NZ	jmp LD63FD439_36
; //	goto	LD63FD439_35;			
	pch =	LD63FD439_35
	ljmp	LD63FD439_35
; //LD63FD439_36:;					
LD63FD439_36:
; //	
; //_A30BB6F62_105:;				
_A30BB6F62_105:
; //	_to_0_6+0	= 0x03;			
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x03
	rm[I1]	= AR
; //_A30BB6F62_106:;				
_A30BB6F62_106:
; //	_from_0_4+0	= 0x00;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_35:;					
LD63FD439_35:
; //_A30BB6F62_107:;				
_A30BB6F62_107:
; //_A30BB6F62_108:;				
_A30BB6F62_108:
; //	sAX	= 0xFFFF;			
	AX	= 0xFFFF
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A30BB6F62_109:;				
_A30BB6F62_109:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JA();			
	pch	= sfx_CMP_AX_CX_JA
	lcall	sfx_CMP_AX_CX_JA
; //	if(__je__)	goto LD63FD439_38;	
	if ZR	jmp LD63FD439_38
; //	goto	LD63FD439_37;			
	pch =	LD63FD439_37
	ljmp	LD63FD439_37
; //LD63FD439_38:;					
LD63FD439_38:
; //	
; //_A30BB6F62_110:;				
_A30BB6F62_110:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_28;		
	I1	= LD63FD439_28
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A30BB6F62_111:;				
_A30BB6F62_111:
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A30BB6F62_112:;				
_A30BB6F62_112:
; //	asm I1 = LD63FD439_28+0;		
	I1 = LD63FD439_28+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LD63FD439_37:;					
LD63FD439_37:
; //_A30BB6F62_113:;				
_A30BB6F62_113:
; //_A30BB6F62_114:;				
_A30BB6F62_114:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_28;		
	I1	= LD63FD439_28
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LD63FD439_39:;					
LD63FD439_39:
; //	asm I1 = LD63FD439_28+0;		
	I1 = LD63FD439_28+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JLE();			
	pch	= sfx_CMP_AX_CX_JLE
	lcall	sfx_CMP_AX_CX_JLE
; //	if(__je__)	goto LD63FD439_43;	
	if ZR	jmp LD63FD439_43
; //	goto	LD63FD439_41;			
	pch =	LD63FD439_41
	ljmp	LD63FD439_41
; //LD63FD439_43:;					
LD63FD439_43:
; //	goto LD63FD439_40;			
	pch =	LD63FD439_40
	ljmp	LD63FD439_40
; //LD63FD439_42:;					
LD63FD439_42:
; //	asm I1 = LD63FD439_28+0;		
	I1 = LD63FD439_28+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_28;		
	I1	= LD63FD439_28
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //	goto LD63FD439_39;			
	pch =	LD63FD439_39
	ljmp	LD63FD439_39
; //LD63FD439_40:;					
LD63FD439_40:
; //	
; //_A30BB6F62_115:;				
_A30BB6F62_115:
; //_A30BB6F62_116:;				
_A30BB6F62_116:
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	asm I1 = LD63FD439_28+0;		
	I1 = LD63FD439_28+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	_WS_Color_copyADB1DFED(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _WS_Color_copyADB1DFED
	lcall	_WS_Color_copyADB1DFED
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	goto LD63FD439_42;			
	pch =	LD63FD439_42
	ljmp	LD63FD439_42
; //LD63FD439_41:;					
LD63FD439_41:
; //_A30BB6F62_117:;				
_A30BB6F62_117:
; //LD63FD439_27:;					
LD63FD439_27:
; //_A30BB6F62_118:;				
_A30BB6F62_118:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_ColorSet_LEDCA3DEB8C_end:;			
_WS_ColorSet_LEDCA3DEB8C_end:
; //_A30BB6F62_119:;				
_A30BB6F62_119:
; //}
; //
; //void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6)
_WS_TRSF_color_setE1CC300C:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A30BB6F62_120:;				
_A30BB6F62_120:
; //_A30BB6F62_121:;				
_A30BB6F62_121:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_45:;					
LD63FD439_45:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_Led_num_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JB();			
	pch	= sfx_CMP_AX_CX_JB
	lcall	sfx_CMP_AX_CX_JB
; //	if(__je__)	goto LD63FD439_49;	
	if ZR	jmp LD63FD439_49
; //	goto	LD63FD439_47;			
	pch =	LD63FD439_47
	ljmp	LD63FD439_47
; //LD63FD439_49:;					
LD63FD439_49:
; //	goto LD63FD439_46;			
	pch =	LD63FD439_46
	ljmp	LD63FD439_46
; //LD63FD439_48:;					
LD63FD439_48:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LD63FD439_45;			
	pch =	LD63FD439_45
	ljmp	LD63FD439_45
; //LD63FD439_46:;					
LD63FD439_46:
; //	
; //_A30BB6F62_122:;				
_A30BB6F62_122:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LD63FD439_51;			
	pch =	LD63FD439_51
	ljmp	LD63FD439_51
; //LD63FD439_52:;					
LD63FD439_52:
; //_A30BB6F62_123:;				
_A30BB6F62_123:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_124:;				
_A30BB6F62_124:
; //	asm	nop				
	nop
; //_A30BB6F62_125:;				
_A30BB6F62_125:
; //	asm	nop				
	nop
; //_A30BB6F62_126:;				
_A30BB6F62_126:
; //	asm	nop				
	nop
; //_A30BB6F62_127:;				
_A30BB6F62_127:
; //	asm	nop				
	nop
; //_A30BB6F62_128:;				
_A30BB6F62_128:
; //	asm	nop				
	nop
; //_A30BB6F62_129:;				
_A30BB6F62_129:
; //	asm	nop				
	nop
; //_A30BB6F62_130:;				
_A30BB6F62_130:
; //	asm	nop				
	nop
; //_A30BB6F62_131:;				
_A30BB6F62_131:
; //	asm	nop				
	nop
; //_A30BB6F62_132:;				
_A30BB6F62_132:
; //	asm	nop				
	nop
; //_A30BB6F62_133:;				
_A30BB6F62_133:
; //	asm	nop				
	nop
; //_A30BB6F62_134:;				
_A30BB6F62_134:
; //	asm	nop				
	nop
; //_A30BB6F62_135:;				
_A30BB6F62_135:
; //	asm	nop				
	nop
; //_A30BB6F62_136:;				
_A30BB6F62_136:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_137:;				
_A30BB6F62_137:
; //	asm	nop				
	nop
; //_A30BB6F62_138:;				
_A30BB6F62_138:
; //	asm	nop				
	nop
; //_A30BB6F62_139:;				
_A30BB6F62_139:
; //	asm	nop				
	nop
; //_A30BB6F62_140:;				
_A30BB6F62_140:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_141:;				
_A30BB6F62_141:
; //	asm	nop				
	nop
; //_A30BB6F62_142:;				
_A30BB6F62_142:
; //	asm	nop				
	nop
; //_A30BB6F62_143:;				
_A30BB6F62_143:
; //	asm	nop				
	nop
; //_A30BB6F62_144:;				
_A30BB6F62_144:
; //	asm	nop				
	nop
; //_A30BB6F62_145:;				
_A30BB6F62_145:
; //	asm	nop				
	nop
; //_A30BB6F62_146:;				
_A30BB6F62_146:
; //	asm	nop				
	nop
; //_A30BB6F62_147:;				
_A30BB6F62_147:
; //	asm	nop				
	nop
; //_A30BB6F62_148:;				
_A30BB6F62_148:
; //	asm	nop				
	nop
; //_A30BB6F62_149:;				
_A30BB6F62_149:
; //	asm	nop				
	nop
; //_A30BB6F62_150:;				
_A30BB6F62_150:
; //	asm	nop				
	nop
; //_A30BB6F62_151:;				
_A30BB6F62_151:
; //	asm	nop				
	nop
; //_A30BB6F62_152:;				
_A30BB6F62_152:
; //	asm	nop				
	nop
; //_A30BB6F62_153:;				
_A30BB6F62_153:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_154:;				
_A30BB6F62_154:
; //	asm	nop				
	nop
; //_A30BB6F62_155:;				
_A30BB6F62_155:
; //	asm	nop				
	nop
; //_A30BB6F62_156:;				
_A30BB6F62_156:
; //	asm	nop				
	nop
; //_A30BB6F62_157:;				
_A30BB6F62_157:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_158:;				
_A30BB6F62_158:
; //	asm	nop				
	nop
; //_A30BB6F62_159:;				
_A30BB6F62_159:
; //	asm	nop				
	nop
; //_A30BB6F62_160:;				
_A30BB6F62_160:
; //	asm	nop				
	nop
; //_A30BB6F62_161:;				
_A30BB6F62_161:
; //	asm	nop				
	nop
; //_A30BB6F62_162:;				
_A30BB6F62_162:
; //	asm	nop				
	nop
; //_A30BB6F62_163:;				
_A30BB6F62_163:
; //	asm	nop				
	nop
; //_A30BB6F62_164:;				
_A30BB6F62_164:
; //	asm	nop				
	nop
; //_A30BB6F62_165:;				
_A30BB6F62_165:
; //	asm	nop				
	nop
; //_A30BB6F62_166:;				
_A30BB6F62_166:
; //	asm	nop				
	nop
; //_A30BB6F62_167:;				
_A30BB6F62_167:
; //	asm	nop				
	nop
; //_A30BB6F62_168:;				
_A30BB6F62_168:
; //	asm	nop				
	nop
; //_A30BB6F62_169:;				
_A30BB6F62_169:
; //	asm	nop				
	nop
; //_A30BB6F62_170:;				
_A30BB6F62_170:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_171:;				
_A30BB6F62_171:
; //	asm	nop				
	nop
; //_A30BB6F62_172:;				
_A30BB6F62_172:
; //	asm	nop				
	nop
; //_A30BB6F62_173:;				
_A30BB6F62_173:
; //	asm	nop				
	nop
; //_A30BB6F62_174:;				
_A30BB6F62_174:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_175:;				
_A30BB6F62_175:
; //	asm	nop				
	nop
; //_A30BB6F62_176:;				
_A30BB6F62_176:
; //	asm	nop				
	nop
; //_A30BB6F62_177:;				
_A30BB6F62_177:
; //	asm	nop				
	nop
; //_A30BB6F62_178:;				
_A30BB6F62_178:
; //	asm	nop				
	nop
; //_A30BB6F62_179:;				
_A30BB6F62_179:
; //	asm	nop				
	nop
; //_A30BB6F62_180:;				
_A30BB6F62_180:
; //	asm	nop				
	nop
; //_A30BB6F62_181:;				
_A30BB6F62_181:
; //	asm	nop				
	nop
; //_A30BB6F62_182:;				
_A30BB6F62_182:
; //	asm	nop				
	nop
; //_A30BB6F62_183:;				
_A30BB6F62_183:
; //	asm	nop				
	nop
; //_A30BB6F62_184:;				
_A30BB6F62_184:
; //	asm	nop				
	nop
; //_A30BB6F62_185:;				
_A30BB6F62_185:
; //	asm	nop				
	nop
; //_A30BB6F62_186:;				
_A30BB6F62_186:
; //	asm	nop				
	nop
; //_A30BB6F62_187:;				
_A30BB6F62_187:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_188:;				
_A30BB6F62_188:
; //	asm	nop				
	nop
; //_A30BB6F62_189:;				
_A30BB6F62_189:
; //	asm	nop				
	nop
; //_A30BB6F62_190:;				
_A30BB6F62_190:
; //	asm	nop				
	nop
; //_A30BB6F62_191:;				
_A30BB6F62_191:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_192:;				
_A30BB6F62_192:
; //	asm	nop				
	nop
; //_A30BB6F62_193:;				
_A30BB6F62_193:
; //	asm	nop				
	nop
; //_A30BB6F62_194:;				
_A30BB6F62_194:
; //	asm	nop				
	nop
; //_A30BB6F62_195:;				
_A30BB6F62_195:
; //	asm	nop				
	nop
; //_A30BB6F62_196:;				
_A30BB6F62_196:
; //	asm	nop				
	nop
; //_A30BB6F62_197:;				
_A30BB6F62_197:
; //	asm	nop				
	nop
; //_A30BB6F62_198:;				
_A30BB6F62_198:
; //	asm	nop				
	nop
; //_A30BB6F62_199:;				
_A30BB6F62_199:
; //	asm	nop				
	nop
; //_A30BB6F62_200:;				
_A30BB6F62_200:
; //	asm	nop				
	nop
; //_A30BB6F62_201:;				
_A30BB6F62_201:
; //	asm	nop				
	nop
; //_A30BB6F62_202:;				
_A30BB6F62_202:
; //	asm	nop				
	nop
; //_A30BB6F62_203:;				
_A30BB6F62_203:
; //	asm	nop				
	nop
; //_A30BB6F62_204:;				
_A30BB6F62_204:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_205:;				
_A30BB6F62_205:
; //	asm	nop				
	nop
; //_A30BB6F62_206:;				
_A30BB6F62_206:
; //	asm	nop				
	nop
; //_A30BB6F62_207:;				
_A30BB6F62_207:
; //	asm	nop				
	nop
; //_A30BB6F62_208:;				
_A30BB6F62_208:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_209:;				
_A30BB6F62_209:
; //	asm	nop				
	nop
; //_A30BB6F62_210:;				
_A30BB6F62_210:
; //	asm	nop				
	nop
; //_A30BB6F62_211:;				
_A30BB6F62_211:
; //	asm	nop				
	nop
; //_A30BB6F62_212:;				
_A30BB6F62_212:
; //	asm	nop				
	nop
; //_A30BB6F62_213:;				
_A30BB6F62_213:
; //	asm	nop				
	nop
; //_A30BB6F62_214:;				
_A30BB6F62_214:
; //	asm	nop				
	nop
; //_A30BB6F62_215:;				
_A30BB6F62_215:
; //	asm	nop				
	nop
; //_A30BB6F62_216:;				
_A30BB6F62_216:
; //	asm	nop				
	nop
; //_A30BB6F62_217:;				
_A30BB6F62_217:
; //	asm	nop				
	nop
; //_A30BB6F62_218:;				
_A30BB6F62_218:
; //	asm	nop				
	nop
; //_A30BB6F62_219:;				
_A30BB6F62_219:
; //	asm	nop				
	nop
; //_A30BB6F62_220:;				
_A30BB6F62_220:
; //	asm	nop				
	nop
; //_A30BB6F62_221:;				
_A30BB6F62_221:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_222:;				
_A30BB6F62_222:
; //	asm	nop				
	nop
; //_A30BB6F62_223:;				
_A30BB6F62_223:
; //	asm	nop				
	nop
; //_A30BB6F62_224:;				
_A30BB6F62_224:
; //	asm	nop				
	nop
; //_A30BB6F62_225:;				
_A30BB6F62_225:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_226:;				
_A30BB6F62_226:
; //	asm	nop				
	nop
; //_A30BB6F62_227:;				
_A30BB6F62_227:
; //	asm	nop				
	nop
; //_A30BB6F62_228:;				
_A30BB6F62_228:
; //	asm	nop				
	nop
; //_A30BB6F62_229:;				
_A30BB6F62_229:
; //	asm	nop				
	nop
; //_A30BB6F62_230:;				
_A30BB6F62_230:
; //	asm	nop				
	nop
; //_A30BB6F62_231:;				
_A30BB6F62_231:
; //	asm	nop				
	nop
; //_A30BB6F62_232:;				
_A30BB6F62_232:
; //	asm	nop				
	nop
; //_A30BB6F62_233:;				
_A30BB6F62_233:
; //	asm	nop				
	nop
; //_A30BB6F62_234:;				
_A30BB6F62_234:
; //	asm	nop				
	nop
; //_A30BB6F62_235:;				
_A30BB6F62_235:
; //	asm	nop				
	nop
; //_A30BB6F62_236:;				
_A30BB6F62_236:
; //	asm	nop				
	nop
; //_A30BB6F62_237:;				
_A30BB6F62_237:
; //	asm	nop				
	nop
; //_A30BB6F62_238:;				
_A30BB6F62_238:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_239:;				
_A30BB6F62_239:
; //	asm	nop				
	nop
; //_A30BB6F62_240:;				
_A30BB6F62_240:
; //	asm	nop				
	nop
; //_A30BB6F62_241:;				
_A30BB6F62_241:
; //	asm	nop				
	nop
; //_A30BB6F62_242:;				
_A30BB6F62_242:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_243:;				
_A30BB6F62_243:
; //	asm	nop				
	nop
; //_A30BB6F62_244:;				
_A30BB6F62_244:
; //	asm	nop				
	nop
; //_A30BB6F62_245:;				
_A30BB6F62_245:
; //	asm	nop				
	nop
; //_A30BB6F62_246:;				
_A30BB6F62_246:
; //	asm	nop				
	nop
; //_A30BB6F62_247:;				
_A30BB6F62_247:
; //	asm	nop				
	nop
; //_A30BB6F62_248:;				
_A30BB6F62_248:
; //	asm	nop				
	nop
; //_A30BB6F62_249:;				
_A30BB6F62_249:
; //	asm	nop				
	nop
; //_A30BB6F62_250:;				
_A30BB6F62_250:
; //	asm	nop				
	nop
; //_A30BB6F62_251:;				
_A30BB6F62_251:
; //	asm	nop				
	nop
; //_A30BB6F62_252:;				
_A30BB6F62_252:
; //	asm	nop				
	nop
; //_A30BB6F62_253:;				
_A30BB6F62_253:
; //	asm	nop				
	nop
; //_A30BB6F62_254:;				
_A30BB6F62_254:
; //	asm	nop				
	nop
; //_A30BB6F62_255:;				
_A30BB6F62_255:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_256:;				
_A30BB6F62_256:
; //	asm	nop				
	nop
; //_A30BB6F62_257:;				
_A30BB6F62_257:
; //	asm	nop				
	nop
; //_A30BB6F62_258:;				
_A30BB6F62_258:
; //	asm	nop				
	nop
; //_A30BB6F62_259:;				
_A30BB6F62_259:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_260:;				
_A30BB6F62_260:
; //	asm	nop				
	nop
; //_A30BB6F62_261:;				
_A30BB6F62_261:
; //	asm	nop				
	nop
; //_A30BB6F62_262:;				
_A30BB6F62_262:
; //	asm	nop				
	nop
; //_A30BB6F62_263:;				
_A30BB6F62_263:
; //	asm	nop				
	nop
; //_A30BB6F62_264:;				
_A30BB6F62_264:
; //	asm	nop				
	nop
; //_A30BB6F62_265:;				
_A30BB6F62_265:
; //	asm	nop				
	nop
; //_A30BB6F62_266:;				
_A30BB6F62_266:
; //	asm	nop				
	nop
; //_A30BB6F62_267:;				
_A30BB6F62_267:
; //	asm	nop				
	nop
; //_A30BB6F62_268:;				
_A30BB6F62_268:
; //	asm	nop				
	nop
; //_A30BB6F62_269:;				
_A30BB6F62_269:
; //	asm	nop				
	nop
; //_A30BB6F62_270:;				
_A30BB6F62_270:
; //	asm	nop				
	nop
; //_A30BB6F62_271:;				
_A30BB6F62_271:
; //	asm	nop				
	nop
; //_A30BB6F62_272:;				
_A30BB6F62_272:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_273:;				
_A30BB6F62_273:
; //	asm	nop				
	nop
; //_A30BB6F62_274:;				
_A30BB6F62_274:
; //	asm	nop				
	nop
; //_A30BB6F62_275:;				
_A30BB6F62_275:
; //	asm	nop				
	nop
; //_A30BB6F62_276:;				
_A30BB6F62_276:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_277:;				
_A30BB6F62_277:
; //	asm	nop				
	nop
; //_A30BB6F62_278:;				
_A30BB6F62_278:
; //	asm	nop				
	nop
; //_A30BB6F62_279:;				
_A30BB6F62_279:
; //	asm	nop				
	nop
; //_A30BB6F62_280:;				
_A30BB6F62_280:
; //	asm	nop				
	nop
; //_A30BB6F62_281:;				
_A30BB6F62_281:
; //	asm	nop				
	nop
; //_A30BB6F62_282:;				
_A30BB6F62_282:
; //	asm	nop				
	nop
; //_A30BB6F62_283:;				
_A30BB6F62_283:
; //	asm	nop				
	nop
; //_A30BB6F62_284:;				
_A30BB6F62_284:
; //	asm	nop				
	nop
; //_A30BB6F62_285:;				
_A30BB6F62_285:
; //	asm	nop				
	nop
; //_A30BB6F62_286:;				
_A30BB6F62_286:
; //	asm	nop				
	nop
; //_A30BB6F62_287:;				
_A30BB6F62_287:
; //	asm	nop				
	nop
; //_A30BB6F62_288:;				
_A30BB6F62_288:
; //	asm	nop				
	nop
; //_A30BB6F62_289:;				
_A30BB6F62_289:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_290:;				
_A30BB6F62_290:
; //	asm	nop				
	nop
; //_A30BB6F62_291:;				
_A30BB6F62_291:
; //	asm	nop				
	nop
; //_A30BB6F62_292:;				
_A30BB6F62_292:
; //	asm	nop				
	nop
; //_A30BB6F62_293:;				
_A30BB6F62_293:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_294:;				
_A30BB6F62_294:
; //	asm	nop				
	nop
; //_A30BB6F62_295:;				
_A30BB6F62_295:
; //	asm	nop				
	nop
; //_A30BB6F62_296:;				
_A30BB6F62_296:
; //	asm	nop				
	nop
; //_A30BB6F62_297:;				
_A30BB6F62_297:
; //	asm	nop				
	nop
; //_A30BB6F62_298:;				
_A30BB6F62_298:
; //	asm	nop				
	nop
; //_A30BB6F62_299:;				
_A30BB6F62_299:
; //	asm	nop				
	nop
; //_A30BB6F62_300:;				
_A30BB6F62_300:
; //	asm	nop				
	nop
; //_A30BB6F62_301:;				
_A30BB6F62_301:
; //	asm	nop				
	nop
; //_A30BB6F62_302:;				
_A30BB6F62_302:
; //	asm	nop				
	nop
; //_A30BB6F62_303:;				
_A30BB6F62_303:
; //	asm	nop				
	nop
; //_A30BB6F62_304:;				
_A30BB6F62_304:
; //	asm	nop				
	nop
; //_A30BB6F62_305:;				
_A30BB6F62_305:
; //	asm	nop				
	nop
; //_A30BB6F62_306:;				
_A30BB6F62_306:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_307:;				
_A30BB6F62_307:
; //	asm	nop				
	nop
; //_A30BB6F62_308:;				
_A30BB6F62_308:
; //	asm	nop				
	nop
; //_A30BB6F62_309:;				
_A30BB6F62_309:
; //	asm	nop				
	nop
; //_A30BB6F62_310:;				
_A30BB6F62_310:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_311:;				
_A30BB6F62_311:
; //	asm	nop				
	nop
; //_A30BB6F62_312:;				
_A30BB6F62_312:
; //	asm	nop				
	nop
; //_A30BB6F62_313:;				
_A30BB6F62_313:
; //	asm	nop				
	nop
; //_A30BB6F62_314:;				
_A30BB6F62_314:
; //	asm	nop				
	nop
; //_A30BB6F62_315:;				
_A30BB6F62_315:
; //	asm	nop				
	nop
; //_A30BB6F62_316:;				
_A30BB6F62_316:
; //	asm	nop				
	nop
; //_A30BB6F62_317:;				
_A30BB6F62_317:
; //	asm	nop				
	nop
; //_A30BB6F62_318:;				
_A30BB6F62_318:
; //	asm	nop				
	nop
; //_A30BB6F62_319:;				
_A30BB6F62_319:
; //	asm	nop				
	nop
; //_A30BB6F62_320:;				
_A30BB6F62_320:
; //	asm	nop				
	nop
; //_A30BB6F62_321:;				
_A30BB6F62_321:
; //	asm	nop				
	nop
; //_A30BB6F62_322:;				
_A30BB6F62_322:
; //	asm	nop				
	nop
; //_A30BB6F62_323:;				
_A30BB6F62_323:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_324:;				
_A30BB6F62_324:
; //	asm	nop				
	nop
; //_A30BB6F62_325:;				
_A30BB6F62_325:
; //	asm	nop				
	nop
; //_A30BB6F62_326:;				
_A30BB6F62_326:
; //	asm	nop				
	nop
; //_A30BB6F62_327:;				
_A30BB6F62_327:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_328:;				
_A30BB6F62_328:
; //	asm	nop				
	nop
; //_A30BB6F62_329:;				
_A30BB6F62_329:
; //	asm	nop				
	nop
; //_A30BB6F62_330:;				
_A30BB6F62_330:
; //	asm	nop				
	nop
; //_A30BB6F62_331:;				
_A30BB6F62_331:
; //	asm	nop				
	nop
; //_A30BB6F62_332:;				
_A30BB6F62_332:
; //	asm	nop				
	nop
; //_A30BB6F62_333:;				
_A30BB6F62_333:
; //	asm	nop				
	nop
; //_A30BB6F62_334:;				
_A30BB6F62_334:
; //	asm	nop				
	nop
; //_A30BB6F62_335:;				
_A30BB6F62_335:
; //	asm	nop				
	nop
; //_A30BB6F62_336:;				
_A30BB6F62_336:
; //	asm	nop				
	nop
; //_A30BB6F62_337:;				
_A30BB6F62_337:
; //	asm	nop				
	nop
; //_A30BB6F62_338:;				
_A30BB6F62_338:
; //	asm	nop				
	nop
; //_A30BB6F62_339:;				
_A30BB6F62_339:
; //	asm	nop				
	nop
; //_A30BB6F62_340:;				
_A30BB6F62_340:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_341:;				
_A30BB6F62_341:
; //	asm	nop				
	nop
; //_A30BB6F62_342:;				
_A30BB6F62_342:
; //	asm	nop				
	nop
; //_A30BB6F62_343:;				
_A30BB6F62_343:
; //	asm	nop				
	nop
; //_A30BB6F62_344:;				
_A30BB6F62_344:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_345:;				
_A30BB6F62_345:
; //	asm	nop				
	nop
; //_A30BB6F62_346:;				
_A30BB6F62_346:
; //	asm	nop				
	nop
; //_A30BB6F62_347:;				
_A30BB6F62_347:
; //	asm	nop				
	nop
; //_A30BB6F62_348:;				
_A30BB6F62_348:
; //	asm	nop				
	nop
; //_A30BB6F62_349:;				
_A30BB6F62_349:
; //	asm	nop				
	nop
; //_A30BB6F62_350:;				
_A30BB6F62_350:
; //	asm	nop				
	nop
; //_A30BB6F62_351:;				
_A30BB6F62_351:
; //	asm	nop				
	nop
; //_A30BB6F62_352:;				
_A30BB6F62_352:
; //	asm	nop				
	nop
; //_A30BB6F62_353:;				
_A30BB6F62_353:
; //	asm	nop				
	nop
; //_A30BB6F62_354:;				
_A30BB6F62_354:
; //	asm	nop				
	nop
; //_A30BB6F62_355:;				
_A30BB6F62_355:
; //	asm	nop				
	nop
; //_A30BB6F62_356:;				
_A30BB6F62_356:
; //	asm	nop				
	nop
; //_A30BB6F62_357:;				
_A30BB6F62_357:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_358:;				
_A30BB6F62_358:
; //	asm	nop				
	nop
; //_A30BB6F62_359:;				
_A30BB6F62_359:
; //	asm	nop				
	nop
; //_A30BB6F62_360:;				
_A30BB6F62_360:
; //	asm	nop				
	nop
; //_A30BB6F62_361:;				
_A30BB6F62_361:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_362:;				
_A30BB6F62_362:
; //	asm	nop				
	nop
; //_A30BB6F62_363:;				
_A30BB6F62_363:
; //	asm	nop				
	nop
; //_A30BB6F62_364:;				
_A30BB6F62_364:
; //	asm	nop				
	nop
; //_A30BB6F62_365:;				
_A30BB6F62_365:
; //	asm	nop				
	nop
; //_A30BB6F62_366:;				
_A30BB6F62_366:
; //	asm	nop				
	nop
; //_A30BB6F62_367:;				
_A30BB6F62_367:
; //	asm	nop				
	nop
; //_A30BB6F62_368:;				
_A30BB6F62_368:
; //	asm	nop				
	nop
; //_A30BB6F62_369:;				
_A30BB6F62_369:
; //	asm	nop				
	nop
; //_A30BB6F62_370:;				
_A30BB6F62_370:
; //	asm	nop				
	nop
; //_A30BB6F62_371:;				
_A30BB6F62_371:
; //	asm	nop				
	nop
; //_A30BB6F62_372:;				
_A30BB6F62_372:
; //	asm	nop				
	nop
; //_A30BB6F62_373:;				
_A30BB6F62_373:
; //	asm	nop				
	nop
; //_A30BB6F62_374:;				
_A30BB6F62_374:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_375:;				
_A30BB6F62_375:
; //	asm	nop				
	nop
; //_A30BB6F62_376:;				
_A30BB6F62_376:
; //	asm	nop				
	nop
; //_A30BB6F62_377:;				
_A30BB6F62_377:
; //	asm	nop				
	nop
; //_A30BB6F62_378:;				
_A30BB6F62_378:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_379:;				
_A30BB6F62_379:
; //	asm	nop				
	nop
; //_A30BB6F62_380:;				
_A30BB6F62_380:
; //	asm	nop				
	nop
; //_A30BB6F62_381:;				
_A30BB6F62_381:
; //	asm	nop				
	nop
; //_A30BB6F62_382:;				
_A30BB6F62_382:
; //	asm	nop				
	nop
; //_A30BB6F62_383:;				
_A30BB6F62_383:
; //	asm	nop				
	nop
; //_A30BB6F62_384:;				
_A30BB6F62_384:
; //	asm	nop				
	nop
; //_A30BB6F62_385:;				
_A30BB6F62_385:
; //	asm	nop				
	nop
; //_A30BB6F62_386:;				
_A30BB6F62_386:
; //	asm	nop				
	nop
; //_A30BB6F62_387:;				
_A30BB6F62_387:
; //	asm	nop				
	nop
; //_A30BB6F62_388:;				
_A30BB6F62_388:
; //	asm	nop				
	nop
; //_A30BB6F62_389:;				
_A30BB6F62_389:
; //	asm	nop				
	nop
; //_A30BB6F62_390:;				
_A30BB6F62_390:
; //	asm	nop				
	nop
; //_A30BB6F62_391:;				
_A30BB6F62_391:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_392:;				
_A30BB6F62_392:
; //	asm	nop				
	nop
; //_A30BB6F62_393:;				
_A30BB6F62_393:
; //	asm	nop				
	nop
; //_A30BB6F62_394:;				
_A30BB6F62_394:
; //	asm	nop				
	nop
; //_A30BB6F62_395:;				
_A30BB6F62_395:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_396:;				
_A30BB6F62_396:
; //	asm	nop				
	nop
; //_A30BB6F62_397:;				
_A30BB6F62_397:
; //	asm	nop				
	nop
; //_A30BB6F62_398:;				
_A30BB6F62_398:
; //	asm	nop				
	nop
; //_A30BB6F62_399:;				
_A30BB6F62_399:
; //	asm	nop				
	nop
; //_A30BB6F62_400:;				
_A30BB6F62_400:
; //	asm	nop				
	nop
; //_A30BB6F62_401:;				
_A30BB6F62_401:
; //	asm	nop				
	nop
; //_A30BB6F62_402:;				
_A30BB6F62_402:
; //	asm	nop				
	nop
; //_A30BB6F62_403:;				
_A30BB6F62_403:
; //	asm	nop				
	nop
; //_A30BB6F62_404:;				
_A30BB6F62_404:
; //	asm	nop				
	nop
; //_A30BB6F62_405:;				
_A30BB6F62_405:
; //	asm	nop				
	nop
; //_A30BB6F62_406:;				
_A30BB6F62_406:
; //	asm	nop				
	nop
; //_A30BB6F62_407:;				
_A30BB6F62_407:
; //	asm	nop				
	nop
; //_A30BB6F62_408:;				
_A30BB6F62_408:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_409:;				
_A30BB6F62_409:
; //	asm	nop				
	nop
; //_A30BB6F62_410:;				
_A30BB6F62_410:
; //	asm	nop				
	nop
; //_A30BB6F62_411:;				
_A30BB6F62_411:
; //	asm	nop				
	nop
; //_A30BB6F62_412:;				
_A30BB6F62_412:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_413:;				
_A30BB6F62_413:
; //	asm	nop				
	nop
; //_A30BB6F62_414:;				
_A30BB6F62_414:
; //	asm	nop				
	nop
; //_A30BB6F62_415:;				
_A30BB6F62_415:
; //	asm	nop				
	nop
; //_A30BB6F62_416:;				
_A30BB6F62_416:
; //	asm	nop				
	nop
; //_A30BB6F62_417:;				
_A30BB6F62_417:
; //	asm	nop				
	nop
; //_A30BB6F62_418:;				
_A30BB6F62_418:
; //	asm	nop				
	nop
; //_A30BB6F62_419:;				
_A30BB6F62_419:
; //	asm	nop				
	nop
; //_A30BB6F62_420:;				
_A30BB6F62_420:
; //	asm	nop				
	nop
; //_A30BB6F62_421:;				
_A30BB6F62_421:
; //	asm	nop				
	nop
; //_A30BB6F62_422:;				
_A30BB6F62_422:
; //	asm	nop				
	nop
; //_A30BB6F62_423:;				
_A30BB6F62_423:
; //	asm	nop				
	nop
; //_A30BB6F62_424:;				
_A30BB6F62_424:
; //	asm	nop				
	nop
; //_A30BB6F62_425:;				
_A30BB6F62_425:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_426:;				
_A30BB6F62_426:
; //	asm	nop				
	nop
; //_A30BB6F62_427:;				
_A30BB6F62_427:
; //	asm	nop				
	nop
; //_A30BB6F62_428:;				
_A30BB6F62_428:
; //	asm	nop				
	nop
; //_A30BB6F62_429:;				
_A30BB6F62_429:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_430:;				
_A30BB6F62_430:
; //	asm	nop				
	nop
; //_A30BB6F62_431:;				
_A30BB6F62_431:
; //	asm	nop				
	nop
; //_A30BB6F62_432:;				
_A30BB6F62_432:
; //	asm	nop				
	nop
; //_A30BB6F62_433:;				
_A30BB6F62_433:
; //	asm	nop				
	nop
; //_A30BB6F62_434:;				
_A30BB6F62_434:
; //	asm	nop				
	nop
; //_A30BB6F62_435:;				
_A30BB6F62_435:
; //	asm	nop				
	nop
; //_A30BB6F62_436:;				
_A30BB6F62_436:
; //	asm	nop				
	nop
; //_A30BB6F62_437:;				
_A30BB6F62_437:
; //	asm	nop				
	nop
; //_A30BB6F62_438:;				
_A30BB6F62_438:
; //	asm	nop				
	nop
; //_A30BB6F62_439:;				
_A30BB6F62_439:
; //	asm	nop				
	nop
; //_A30BB6F62_440:;				
_A30BB6F62_440:
; //	asm	nop				
	nop
; //_A30BB6F62_441:;				
_A30BB6F62_441:
; //	asm	nop				
	nop
; //_A30BB6F62_442:;				
_A30BB6F62_442:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_443:;				
_A30BB6F62_443:
; //	asm	nop				
	nop
; //_A30BB6F62_444:;				
_A30BB6F62_444:
; //	asm	nop				
	nop
; //_A30BB6F62_445:;				
_A30BB6F62_445:
; //	asm	nop				
	nop
; //_A30BB6F62_446:;				
_A30BB6F62_446:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_447:;				
_A30BB6F62_447:
; //	asm	nop				
	nop
; //_A30BB6F62_448:;				
_A30BB6F62_448:
; //	asm	nop				
	nop
; //_A30BB6F62_449:;				
_A30BB6F62_449:
; //	asm	nop				
	nop
; //_A30BB6F62_450:;				
_A30BB6F62_450:
; //	asm	nop				
	nop
; //_A30BB6F62_451:;				
_A30BB6F62_451:
; //	asm	nop				
	nop
; //_A30BB6F62_452:;				
_A30BB6F62_452:
; //	asm	nop				
	nop
; //_A30BB6F62_453:;				
_A30BB6F62_453:
; //	asm	nop				
	nop
; //_A30BB6F62_454:;				
_A30BB6F62_454:
; //	asm	nop				
	nop
; //_A30BB6F62_455:;				
_A30BB6F62_455:
; //	asm	nop				
	nop
; //_A30BB6F62_456:;				
_A30BB6F62_456:
; //	asm	nop				
	nop
; //_A30BB6F62_457:;				
_A30BB6F62_457:
; //	asm	nop				
	nop
; //_A30BB6F62_458:;				
_A30BB6F62_458:
; //	asm	nop				
	nop
; //_A30BB6F62_459:;				
_A30BB6F62_459:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_460:;				
_A30BB6F62_460:
; //	asm	nop				
	nop
; //_A30BB6F62_461:;				
_A30BB6F62_461:
; //	asm	nop				
	nop
; //_A30BB6F62_462:;				
_A30BB6F62_462:
; //	asm	nop				
	nop
; //_A30BB6F62_463:;				
_A30BB6F62_463:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_464:;				
_A30BB6F62_464:
; //	asm	nop				
	nop
; //_A30BB6F62_465:;				
_A30BB6F62_465:
; //	asm	nop				
	nop
; //_A30BB6F62_466:;				
_A30BB6F62_466:
; //	asm	nop				
	nop
; //_A30BB6F62_467:;				
_A30BB6F62_467:
; //	asm	nop				
	nop
; //_A30BB6F62_468:;				
_A30BB6F62_468:
; //	asm	nop				
	nop
; //_A30BB6F62_469:;				
_A30BB6F62_469:
; //	asm	nop				
	nop
; //_A30BB6F62_470:;				
_A30BB6F62_470:
; //	asm	nop				
	nop
; //_A30BB6F62_471:;				
_A30BB6F62_471:
; //	asm	nop				
	nop
; //_A30BB6F62_472:;				
_A30BB6F62_472:
; //	asm	nop				
	nop
; //_A30BB6F62_473:;				
_A30BB6F62_473:
; //	asm	nop				
	nop
; //_A30BB6F62_474:;				
_A30BB6F62_474:
; //	asm	nop				
	nop
; //_A30BB6F62_475:;				
_A30BB6F62_475:
; //	asm	nop				
	nop
; //_A30BB6F62_476:;				
_A30BB6F62_476:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_477:;				
_A30BB6F62_477:
; //	asm	nop				
	nop
; //_A30BB6F62_478:;				
_A30BB6F62_478:
; //	asm	nop				
	nop
; //_A30BB6F62_479:;				
_A30BB6F62_479:
; //	asm	nop				
	nop
; //_A30BB6F62_480:;				
_A30BB6F62_480:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_481:;				
_A30BB6F62_481:
; //	asm	nop				
	nop
; //_A30BB6F62_482:;				
_A30BB6F62_482:
; //	asm	nop				
	nop
; //_A30BB6F62_483:;				
_A30BB6F62_483:
; //	asm	nop				
	nop
; //_A30BB6F62_484:;				
_A30BB6F62_484:
; //	asm	nop				
	nop
; //_A30BB6F62_485:;				
_A30BB6F62_485:
; //	asm	nop				
	nop
; //_A30BB6F62_486:;				
_A30BB6F62_486:
; //	asm	nop				
	nop
; //_A30BB6F62_487:;				
_A30BB6F62_487:
; //	asm	nop				
	nop
; //_A30BB6F62_488:;				
_A30BB6F62_488:
; //	asm	nop				
	nop
; //_A30BB6F62_489:;				
_A30BB6F62_489:
; //	asm	nop				
	nop
; //_A30BB6F62_490:;				
_A30BB6F62_490:
; //	asm	nop				
	nop
; //_A30BB6F62_491:;				
_A30BB6F62_491:
; //	asm	nop				
	nop
; //_A30BB6F62_492:;				
_A30BB6F62_492:
; //	asm	nop				
	nop
; //_A30BB6F62_493:;				
_A30BB6F62_493:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_494:;				
_A30BB6F62_494:
; //	asm	nop				
	nop
; //_A30BB6F62_495:;				
_A30BB6F62_495:
; //	asm	nop				
	nop
; //_A30BB6F62_496:;				
_A30BB6F62_496:
; //	asm	nop				
	nop
; //_A30BB6F62_497:;				
_A30BB6F62_497:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_498:;				
_A30BB6F62_498:
; //	asm	nop				
	nop
; //_A30BB6F62_499:;				
_A30BB6F62_499:
; //	asm	nop				
	nop
; //_A30BB6F62_500:;				
_A30BB6F62_500:
; //	asm	nop				
	nop
; //_A30BB6F62_501:;				
_A30BB6F62_501:
; //	asm	nop				
	nop
; //_A30BB6F62_502:;				
_A30BB6F62_502:
; //	asm	nop				
	nop
; //_A30BB6F62_503:;				
_A30BB6F62_503:
; //	asm	nop				
	nop
; //_A30BB6F62_504:;				
_A30BB6F62_504:
; //	asm	nop				
	nop
; //_A30BB6F62_505:;				
_A30BB6F62_505:
; //	asm	nop				
	nop
; //_A30BB6F62_506:;				
_A30BB6F62_506:
; //	asm	nop				
	nop
; //_A30BB6F62_507:;				
_A30BB6F62_507:
; //	asm	nop				
	nop
; //_A30BB6F62_508:;				
_A30BB6F62_508:
; //	asm	nop				
	nop
; //_A30BB6F62_509:;				
_A30BB6F62_509:
; //	asm	nop				
	nop
; //_A30BB6F62_510:;				
_A30BB6F62_510:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_511:;				
_A30BB6F62_511:
; //	asm	nop				
	nop
; //_A30BB6F62_512:;				
_A30BB6F62_512:
; //	asm	nop				
	nop
; //_A30BB6F62_513:;				
_A30BB6F62_513:
; //	asm	nop				
	nop
; //_A30BB6F62_514:;				
_A30BB6F62_514:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_515:;				
_A30BB6F62_515:
; //	asm	nop				
	nop
; //_A30BB6F62_516:;				
_A30BB6F62_516:
; //	asm	nop				
	nop
; //_A30BB6F62_517:;				
_A30BB6F62_517:
; //	asm	nop				
	nop
; //_A30BB6F62_518:;				
_A30BB6F62_518:
; //	asm	nop				
	nop
; //_A30BB6F62_519:;				
_A30BB6F62_519:
; //	asm	nop				
	nop
; //_A30BB6F62_520:;				
_A30BB6F62_520:
; //	asm	nop				
	nop
; //_A30BB6F62_521:;				
_A30BB6F62_521:
; //	asm	nop				
	nop
; //_A30BB6F62_522:;				
_A30BB6F62_522:
; //	asm	nop				
	nop
; //_A30BB6F62_523:;				
_A30BB6F62_523:
; //	asm	nop				
	nop
; //_A30BB6F62_524:;				
_A30BB6F62_524:
; //	asm	nop				
	nop
; //_A30BB6F62_525:;				
_A30BB6F62_525:
; //	asm	nop				
	nop
; //_A30BB6F62_526:;				
_A30BB6F62_526:
; //	asm	nop				
	nop
; //_A30BB6F62_527:;				
_A30BB6F62_527:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_528:;				
_A30BB6F62_528:
; //	asm	nop				
	nop
; //_A30BB6F62_529:;				
_A30BB6F62_529:
; //	asm	nop				
	nop
; //_A30BB6F62_530:;				
_A30BB6F62_530:
; //	asm	nop				
	nop
; //_A30BB6F62_531:;				
_A30BB6F62_531:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_53:;					
LD63FD439_53:
; //_A30BB6F62_532:;				
_A30BB6F62_532:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_533:;				
_A30BB6F62_533:
; //	asm	nop				
	nop
; //_A30BB6F62_534:;				
_A30BB6F62_534:
; //	asm	nop				
	nop
; //_A30BB6F62_535:;				
_A30BB6F62_535:
; //	asm	nop				
	nop
; //_A30BB6F62_536:;				
_A30BB6F62_536:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_537:;				
_A30BB6F62_537:
; //	asm	nop				
	nop
; //_A30BB6F62_538:;				
_A30BB6F62_538:
; //	asm	nop				
	nop
; //_A30BB6F62_539:;				
_A30BB6F62_539:
; //	asm	nop				
	nop
; //_A30BB6F62_540:;				
_A30BB6F62_540:
; //	asm	nop				
	nop
; //_A30BB6F62_541:;				
_A30BB6F62_541:
; //	asm	nop				
	nop
; //_A30BB6F62_542:;				
_A30BB6F62_542:
; //	asm	nop				
	nop
; //_A30BB6F62_543:;				
_A30BB6F62_543:
; //	asm	nop				
	nop
; //_A30BB6F62_544:;				
_A30BB6F62_544:
; //	asm	nop				
	nop
; //_A30BB6F62_545:;				
_A30BB6F62_545:
; //	asm	nop				
	nop
; //_A30BB6F62_546:;				
_A30BB6F62_546:
; //	asm	nop				
	nop
; //_A30BB6F62_547:;				
_A30BB6F62_547:
; //	asm	nop				
	nop
; //_A30BB6F62_548:;				
_A30BB6F62_548:
; //	asm	nop				
	nop
; //_A30BB6F62_549:;				
_A30BB6F62_549:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_550:;				
_A30BB6F62_550:
; //	asm	nop				
	nop
; //_A30BB6F62_551:;				
_A30BB6F62_551:
; //	asm	nop				
	nop
; //_A30BB6F62_552:;				
_A30BB6F62_552:
; //	asm	nop				
	nop
; //_A30BB6F62_553:;				
_A30BB6F62_553:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_554:;				
_A30BB6F62_554:
; //	asm	nop				
	nop
; //_A30BB6F62_555:;				
_A30BB6F62_555:
; //	asm	nop				
	nop
; //_A30BB6F62_556:;				
_A30BB6F62_556:
; //	asm	nop				
	nop
; //_A30BB6F62_557:;				
_A30BB6F62_557:
; //	asm	nop				
	nop
; //_A30BB6F62_558:;				
_A30BB6F62_558:
; //	asm	nop				
	nop
; //_A30BB6F62_559:;				
_A30BB6F62_559:
; //	asm	nop				
	nop
; //_A30BB6F62_560:;				
_A30BB6F62_560:
; //	asm	nop				
	nop
; //_A30BB6F62_561:;				
_A30BB6F62_561:
; //	asm	nop				
	nop
; //_A30BB6F62_562:;				
_A30BB6F62_562:
; //	asm	nop				
	nop
; //_A30BB6F62_563:;				
_A30BB6F62_563:
; //	asm	nop				
	nop
; //_A30BB6F62_564:;				
_A30BB6F62_564:
; //	asm	nop				
	nop
; //_A30BB6F62_565:;				
_A30BB6F62_565:
; //	asm	nop				
	nop
; //_A30BB6F62_566:;				
_A30BB6F62_566:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_567:;				
_A30BB6F62_567:
; //	asm	nop				
	nop
; //_A30BB6F62_568:;				
_A30BB6F62_568:
; //	asm	nop				
	nop
; //_A30BB6F62_569:;				
_A30BB6F62_569:
; //	asm	nop				
	nop
; //_A30BB6F62_570:;				
_A30BB6F62_570:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_571:;				
_A30BB6F62_571:
; //	asm	nop				
	nop
; //_A30BB6F62_572:;				
_A30BB6F62_572:
; //	asm	nop				
	nop
; //_A30BB6F62_573:;				
_A30BB6F62_573:
; //	asm	nop				
	nop
; //_A30BB6F62_574:;				
_A30BB6F62_574:
; //	asm	nop				
	nop
; //_A30BB6F62_575:;				
_A30BB6F62_575:
; //	asm	nop				
	nop
; //_A30BB6F62_576:;				
_A30BB6F62_576:
; //	asm	nop				
	nop
; //_A30BB6F62_577:;				
_A30BB6F62_577:
; //	asm	nop				
	nop
; //_A30BB6F62_578:;				
_A30BB6F62_578:
; //	asm	nop				
	nop
; //_A30BB6F62_579:;				
_A30BB6F62_579:
; //	asm	nop				
	nop
; //_A30BB6F62_580:;				
_A30BB6F62_580:
; //	asm	nop				
	nop
; //_A30BB6F62_581:;				
_A30BB6F62_581:
; //	asm	nop				
	nop
; //_A30BB6F62_582:;				
_A30BB6F62_582:
; //	asm	nop				
	nop
; //_A30BB6F62_583:;				
_A30BB6F62_583:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_584:;				
_A30BB6F62_584:
; //	asm	nop				
	nop
; //_A30BB6F62_585:;				
_A30BB6F62_585:
; //	asm	nop				
	nop
; //_A30BB6F62_586:;				
_A30BB6F62_586:
; //	asm	nop				
	nop
; //_A30BB6F62_587:;				
_A30BB6F62_587:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_588:;				
_A30BB6F62_588:
; //	asm	nop				
	nop
; //_A30BB6F62_589:;				
_A30BB6F62_589:
; //	asm	nop				
	nop
; //_A30BB6F62_590:;				
_A30BB6F62_590:
; //	asm	nop				
	nop
; //_A30BB6F62_591:;				
_A30BB6F62_591:
; //	asm	nop				
	nop
; //_A30BB6F62_592:;				
_A30BB6F62_592:
; //	asm	nop				
	nop
; //_A30BB6F62_593:;				
_A30BB6F62_593:
; //	asm	nop				
	nop
; //_A30BB6F62_594:;				
_A30BB6F62_594:
; //	asm	nop				
	nop
; //_A30BB6F62_595:;				
_A30BB6F62_595:
; //	asm	nop				
	nop
; //_A30BB6F62_596:;				
_A30BB6F62_596:
; //	asm	nop				
	nop
; //_A30BB6F62_597:;				
_A30BB6F62_597:
; //	asm	nop				
	nop
; //_A30BB6F62_598:;				
_A30BB6F62_598:
; //	asm	nop				
	nop
; //_A30BB6F62_599:;				
_A30BB6F62_599:
; //	asm	nop				
	nop
; //_A30BB6F62_600:;				
_A30BB6F62_600:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_601:;				
_A30BB6F62_601:
; //	asm	nop				
	nop
; //_A30BB6F62_602:;				
_A30BB6F62_602:
; //	asm	nop				
	nop
; //_A30BB6F62_603:;				
_A30BB6F62_603:
; //	asm	nop				
	nop
; //_A30BB6F62_604:;				
_A30BB6F62_604:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_605:;				
_A30BB6F62_605:
; //	asm	nop				
	nop
; //_A30BB6F62_606:;				
_A30BB6F62_606:
; //	asm	nop				
	nop
; //_A30BB6F62_607:;				
_A30BB6F62_607:
; //	asm	nop				
	nop
; //_A30BB6F62_608:;				
_A30BB6F62_608:
; //	asm	nop				
	nop
; //_A30BB6F62_609:;				
_A30BB6F62_609:
; //	asm	nop				
	nop
; //_A30BB6F62_610:;				
_A30BB6F62_610:
; //	asm	nop				
	nop
; //_A30BB6F62_611:;				
_A30BB6F62_611:
; //	asm	nop				
	nop
; //_A30BB6F62_612:;				
_A30BB6F62_612:
; //	asm	nop				
	nop
; //_A30BB6F62_613:;				
_A30BB6F62_613:
; //	asm	nop				
	nop
; //_A30BB6F62_614:;				
_A30BB6F62_614:
; //	asm	nop				
	nop
; //_A30BB6F62_615:;				
_A30BB6F62_615:
; //	asm	nop				
	nop
; //_A30BB6F62_616:;				
_A30BB6F62_616:
; //	asm	nop				
	nop
; //_A30BB6F62_617:;				
_A30BB6F62_617:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_618:;				
_A30BB6F62_618:
; //	asm	nop				
	nop
; //_A30BB6F62_619:;				
_A30BB6F62_619:
; //	asm	nop				
	nop
; //_A30BB6F62_620:;				
_A30BB6F62_620:
; //	asm	nop				
	nop
; //_A30BB6F62_621:;				
_A30BB6F62_621:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_622:;				
_A30BB6F62_622:
; //	asm	nop				
	nop
; //_A30BB6F62_623:;				
_A30BB6F62_623:
; //	asm	nop				
	nop
; //_A30BB6F62_624:;				
_A30BB6F62_624:
; //	asm	nop				
	nop
; //_A30BB6F62_625:;				
_A30BB6F62_625:
; //	asm	nop				
	nop
; //_A30BB6F62_626:;				
_A30BB6F62_626:
; //	asm	nop				
	nop
; //_A30BB6F62_627:;				
_A30BB6F62_627:
; //	asm	nop				
	nop
; //_A30BB6F62_628:;				
_A30BB6F62_628:
; //	asm	nop				
	nop
; //_A30BB6F62_629:;				
_A30BB6F62_629:
; //	asm	nop				
	nop
; //_A30BB6F62_630:;				
_A30BB6F62_630:
; //	asm	nop				
	nop
; //_A30BB6F62_631:;				
_A30BB6F62_631:
; //	asm	nop				
	nop
; //_A30BB6F62_632:;				
_A30BB6F62_632:
; //	asm	nop				
	nop
; //_A30BB6F62_633:;				
_A30BB6F62_633:
; //	asm	nop				
	nop
; //_A30BB6F62_634:;				
_A30BB6F62_634:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_635:;				
_A30BB6F62_635:
; //	asm	nop				
	nop
; //_A30BB6F62_636:;				
_A30BB6F62_636:
; //	asm	nop				
	nop
; //_A30BB6F62_637:;				
_A30BB6F62_637:
; //	asm	nop				
	nop
; //_A30BB6F62_638:;				
_A30BB6F62_638:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_639:;				
_A30BB6F62_639:
; //	asm	nop				
	nop
; //_A30BB6F62_640:;				
_A30BB6F62_640:
; //	asm	nop				
	nop
; //_A30BB6F62_641:;				
_A30BB6F62_641:
; //	asm	nop				
	nop
; //_A30BB6F62_642:;				
_A30BB6F62_642:
; //	asm	nop				
	nop
; //_A30BB6F62_643:;				
_A30BB6F62_643:
; //	asm	nop				
	nop
; //_A30BB6F62_644:;				
_A30BB6F62_644:
; //	asm	nop				
	nop
; //_A30BB6F62_645:;				
_A30BB6F62_645:
; //	asm	nop				
	nop
; //_A30BB6F62_646:;				
_A30BB6F62_646:
; //	asm	nop				
	nop
; //_A30BB6F62_647:;				
_A30BB6F62_647:
; //	asm	nop				
	nop
; //_A30BB6F62_648:;				
_A30BB6F62_648:
; //	asm	nop				
	nop
; //_A30BB6F62_649:;				
_A30BB6F62_649:
; //	asm	nop				
	nop
; //_A30BB6F62_650:;				
_A30BB6F62_650:
; //	asm	nop				
	nop
; //_A30BB6F62_651:;				
_A30BB6F62_651:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_652:;				
_A30BB6F62_652:
; //	asm	nop				
	nop
; //_A30BB6F62_653:;				
_A30BB6F62_653:
; //	asm	nop				
	nop
; //_A30BB6F62_654:;				
_A30BB6F62_654:
; //	asm	nop				
	nop
; //_A30BB6F62_655:;				
_A30BB6F62_655:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_656:;				
_A30BB6F62_656:
; //	asm	nop				
	nop
; //_A30BB6F62_657:;				
_A30BB6F62_657:
; //	asm	nop				
	nop
; //_A30BB6F62_658:;				
_A30BB6F62_658:
; //	asm	nop				
	nop
; //_A30BB6F62_659:;				
_A30BB6F62_659:
; //	asm	nop				
	nop
; //_A30BB6F62_660:;				
_A30BB6F62_660:
; //	asm	nop				
	nop
; //_A30BB6F62_661:;				
_A30BB6F62_661:
; //	asm	nop				
	nop
; //_A30BB6F62_662:;				
_A30BB6F62_662:
; //	asm	nop				
	nop
; //_A30BB6F62_663:;				
_A30BB6F62_663:
; //	asm	nop				
	nop
; //_A30BB6F62_664:;				
_A30BB6F62_664:
; //	asm	nop				
	nop
; //_A30BB6F62_665:;				
_A30BB6F62_665:
; //	asm	nop				
	nop
; //_A30BB6F62_666:;				
_A30BB6F62_666:
; //	asm	nop				
	nop
; //_A30BB6F62_667:;				
_A30BB6F62_667:
; //	asm	nop				
	nop
; //_A30BB6F62_668:;				
_A30BB6F62_668:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_669:;				
_A30BB6F62_669:
; //	asm	nop				
	nop
; //_A30BB6F62_670:;				
_A30BB6F62_670:
; //	asm	nop				
	nop
; //_A30BB6F62_671:;				
_A30BB6F62_671:
; //	asm	nop				
	nop
; //_A30BB6F62_672:;				
_A30BB6F62_672:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_673:;				
_A30BB6F62_673:
; //	asm	nop				
	nop
; //_A30BB6F62_674:;				
_A30BB6F62_674:
; //	asm	nop				
	nop
; //_A30BB6F62_675:;				
_A30BB6F62_675:
; //	asm	nop				
	nop
; //_A30BB6F62_676:;				
_A30BB6F62_676:
; //	asm	nop				
	nop
; //_A30BB6F62_677:;				
_A30BB6F62_677:
; //	asm	nop				
	nop
; //_A30BB6F62_678:;				
_A30BB6F62_678:
; //	asm	nop				
	nop
; //_A30BB6F62_679:;				
_A30BB6F62_679:
; //	asm	nop				
	nop
; //_A30BB6F62_680:;				
_A30BB6F62_680:
; //	asm	nop				
	nop
; //_A30BB6F62_681:;				
_A30BB6F62_681:
; //	asm	nop				
	nop
; //_A30BB6F62_682:;				
_A30BB6F62_682:
; //	asm	nop				
	nop
; //_A30BB6F62_683:;				
_A30BB6F62_683:
; //	asm	nop				
	nop
; //_A30BB6F62_684:;				
_A30BB6F62_684:
; //	asm	nop				
	nop
; //_A30BB6F62_685:;				
_A30BB6F62_685:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_686:;				
_A30BB6F62_686:
; //	asm	nop				
	nop
; //_A30BB6F62_687:;				
_A30BB6F62_687:
; //	asm	nop				
	nop
; //_A30BB6F62_688:;				
_A30BB6F62_688:
; //	asm	nop				
	nop
; //_A30BB6F62_689:;				
_A30BB6F62_689:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_690:;				
_A30BB6F62_690:
; //	asm	nop				
	nop
; //_A30BB6F62_691:;				
_A30BB6F62_691:
; //	asm	nop				
	nop
; //_A30BB6F62_692:;				
_A30BB6F62_692:
; //	asm	nop				
	nop
; //_A30BB6F62_693:;				
_A30BB6F62_693:
; //	asm	nop				
	nop
; //_A30BB6F62_694:;				
_A30BB6F62_694:
; //	asm	nop				
	nop
; //_A30BB6F62_695:;				
_A30BB6F62_695:
; //	asm	nop				
	nop
; //_A30BB6F62_696:;				
_A30BB6F62_696:
; //	asm	nop				
	nop
; //_A30BB6F62_697:;				
_A30BB6F62_697:
; //	asm	nop				
	nop
; //_A30BB6F62_698:;				
_A30BB6F62_698:
; //	asm	nop				
	nop
; //_A30BB6F62_699:;				
_A30BB6F62_699:
; //	asm	nop				
	nop
; //_A30BB6F62_700:;				
_A30BB6F62_700:
; //	asm	nop				
	nop
; //_A30BB6F62_701:;				
_A30BB6F62_701:
; //	asm	nop				
	nop
; //_A30BB6F62_702:;				
_A30BB6F62_702:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_703:;				
_A30BB6F62_703:
; //	asm	nop				
	nop
; //_A30BB6F62_704:;				
_A30BB6F62_704:
; //	asm	nop				
	nop
; //_A30BB6F62_705:;				
_A30BB6F62_705:
; //	asm	nop				
	nop
; //_A30BB6F62_706:;				
_A30BB6F62_706:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_707:;				
_A30BB6F62_707:
; //	asm	nop				
	nop
; //_A30BB6F62_708:;				
_A30BB6F62_708:
; //	asm	nop				
	nop
; //_A30BB6F62_709:;				
_A30BB6F62_709:
; //	asm	nop				
	nop
; //_A30BB6F62_710:;				
_A30BB6F62_710:
; //	asm	nop				
	nop
; //_A30BB6F62_711:;				
_A30BB6F62_711:
; //	asm	nop				
	nop
; //_A30BB6F62_712:;				
_A30BB6F62_712:
; //	asm	nop				
	nop
; //_A30BB6F62_713:;				
_A30BB6F62_713:
; //	asm	nop				
	nop
; //_A30BB6F62_714:;				
_A30BB6F62_714:
; //	asm	nop				
	nop
; //_A30BB6F62_715:;				
_A30BB6F62_715:
; //	asm	nop				
	nop
; //_A30BB6F62_716:;				
_A30BB6F62_716:
; //	asm	nop				
	nop
; //_A30BB6F62_717:;				
_A30BB6F62_717:
; //	asm	nop				
	nop
; //_A30BB6F62_718:;				
_A30BB6F62_718:
; //	asm	nop				
	nop
; //_A30BB6F62_719:;				
_A30BB6F62_719:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_720:;				
_A30BB6F62_720:
; //	asm	nop				
	nop
; //_A30BB6F62_721:;				
_A30BB6F62_721:
; //	asm	nop				
	nop
; //_A30BB6F62_722:;				
_A30BB6F62_722:
; //	asm	nop				
	nop
; //_A30BB6F62_723:;				
_A30BB6F62_723:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_724:;				
_A30BB6F62_724:
; //	asm	nop				
	nop
; //_A30BB6F62_725:;				
_A30BB6F62_725:
; //	asm	nop				
	nop
; //_A30BB6F62_726:;				
_A30BB6F62_726:
; //	asm	nop				
	nop
; //_A30BB6F62_727:;				
_A30BB6F62_727:
; //	asm	nop				
	nop
; //_A30BB6F62_728:;				
_A30BB6F62_728:
; //	asm	nop				
	nop
; //_A30BB6F62_729:;				
_A30BB6F62_729:
; //	asm	nop				
	nop
; //_A30BB6F62_730:;				
_A30BB6F62_730:
; //	asm	nop				
	nop
; //_A30BB6F62_731:;				
_A30BB6F62_731:
; //	asm	nop				
	nop
; //_A30BB6F62_732:;				
_A30BB6F62_732:
; //	asm	nop				
	nop
; //_A30BB6F62_733:;				
_A30BB6F62_733:
; //	asm	nop				
	nop
; //_A30BB6F62_734:;				
_A30BB6F62_734:
; //	asm	nop				
	nop
; //_A30BB6F62_735:;				
_A30BB6F62_735:
; //	asm	nop				
	nop
; //_A30BB6F62_736:;				
_A30BB6F62_736:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_737:;				
_A30BB6F62_737:
; //	asm	nop				
	nop
; //_A30BB6F62_738:;				
_A30BB6F62_738:
; //	asm	nop				
	nop
; //_A30BB6F62_739:;				
_A30BB6F62_739:
; //	asm	nop				
	nop
; //_A30BB6F62_740:;				
_A30BB6F62_740:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_741:;				
_A30BB6F62_741:
; //	asm	nop				
	nop
; //_A30BB6F62_742:;				
_A30BB6F62_742:
; //	asm	nop				
	nop
; //_A30BB6F62_743:;				
_A30BB6F62_743:
; //	asm	nop				
	nop
; //_A30BB6F62_744:;				
_A30BB6F62_744:
; //	asm	nop				
	nop
; //_A30BB6F62_745:;				
_A30BB6F62_745:
; //	asm	nop				
	nop
; //_A30BB6F62_746:;				
_A30BB6F62_746:
; //	asm	nop				
	nop
; //_A30BB6F62_747:;				
_A30BB6F62_747:
; //	asm	nop				
	nop
; //_A30BB6F62_748:;				
_A30BB6F62_748:
; //	asm	nop				
	nop
; //_A30BB6F62_749:;				
_A30BB6F62_749:
; //	asm	nop				
	nop
; //_A30BB6F62_750:;				
_A30BB6F62_750:
; //	asm	nop				
	nop
; //_A30BB6F62_751:;				
_A30BB6F62_751:
; //	asm	nop				
	nop
; //_A30BB6F62_752:;				
_A30BB6F62_752:
; //	asm	nop				
	nop
; //_A30BB6F62_753:;				
_A30BB6F62_753:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_754:;				
_A30BB6F62_754:
; //	asm	nop				
	nop
; //_A30BB6F62_755:;				
_A30BB6F62_755:
; //	asm	nop				
	nop
; //_A30BB6F62_756:;				
_A30BB6F62_756:
; //	asm	nop				
	nop
; //_A30BB6F62_757:;				
_A30BB6F62_757:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_758:;				
_A30BB6F62_758:
; //	asm	nop				
	nop
; //_A30BB6F62_759:;				
_A30BB6F62_759:
; //	asm	nop				
	nop
; //_A30BB6F62_760:;				
_A30BB6F62_760:
; //	asm	nop				
	nop
; //_A30BB6F62_761:;				
_A30BB6F62_761:
; //	asm	nop				
	nop
; //_A30BB6F62_762:;				
_A30BB6F62_762:
; //	asm	nop				
	nop
; //_A30BB6F62_763:;				
_A30BB6F62_763:
; //	asm	nop				
	nop
; //_A30BB6F62_764:;				
_A30BB6F62_764:
; //	asm	nop				
	nop
; //_A30BB6F62_765:;				
_A30BB6F62_765:
; //	asm	nop				
	nop
; //_A30BB6F62_766:;				
_A30BB6F62_766:
; //	asm	nop				
	nop
; //_A30BB6F62_767:;				
_A30BB6F62_767:
; //	asm	nop				
	nop
; //_A30BB6F62_768:;				
_A30BB6F62_768:
; //	asm	nop				
	nop
; //_A30BB6F62_769:;				
_A30BB6F62_769:
; //	asm	nop				
	nop
; //_A30BB6F62_770:;				
_A30BB6F62_770:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_771:;				
_A30BB6F62_771:
; //	asm	nop				
	nop
; //_A30BB6F62_772:;				
_A30BB6F62_772:
; //	asm	nop				
	nop
; //_A30BB6F62_773:;				
_A30BB6F62_773:
; //	asm	nop				
	nop
; //_A30BB6F62_774:;				
_A30BB6F62_774:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_775:;				
_A30BB6F62_775:
; //	asm	nop				
	nop
; //_A30BB6F62_776:;				
_A30BB6F62_776:
; //	asm	nop				
	nop
; //_A30BB6F62_777:;				
_A30BB6F62_777:
; //	asm	nop				
	nop
; //_A30BB6F62_778:;				
_A30BB6F62_778:
; //	asm	nop				
	nop
; //_A30BB6F62_779:;				
_A30BB6F62_779:
; //	asm	nop				
	nop
; //_A30BB6F62_780:;				
_A30BB6F62_780:
; //	asm	nop				
	nop
; //_A30BB6F62_781:;				
_A30BB6F62_781:
; //	asm	nop				
	nop
; //_A30BB6F62_782:;				
_A30BB6F62_782:
; //	asm	nop				
	nop
; //_A30BB6F62_783:;				
_A30BB6F62_783:
; //	asm	nop				
	nop
; //_A30BB6F62_784:;				
_A30BB6F62_784:
; //	asm	nop				
	nop
; //_A30BB6F62_785:;				
_A30BB6F62_785:
; //	asm	nop				
	nop
; //_A30BB6F62_786:;				
_A30BB6F62_786:
; //	asm	nop				
	nop
; //_A30BB6F62_787:;				
_A30BB6F62_787:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_788:;				
_A30BB6F62_788:
; //	asm	nop				
	nop
; //_A30BB6F62_789:;				
_A30BB6F62_789:
; //	asm	nop				
	nop
; //_A30BB6F62_790:;				
_A30BB6F62_790:
; //	asm	nop				
	nop
; //_A30BB6F62_791:;				
_A30BB6F62_791:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_792:;				
_A30BB6F62_792:
; //	asm	nop				
	nop
; //_A30BB6F62_793:;				
_A30BB6F62_793:
; //	asm	nop				
	nop
; //_A30BB6F62_794:;				
_A30BB6F62_794:
; //	asm	nop				
	nop
; //_A30BB6F62_795:;				
_A30BB6F62_795:
; //	asm	nop				
	nop
; //_A30BB6F62_796:;				
_A30BB6F62_796:
; //	asm	nop				
	nop
; //_A30BB6F62_797:;				
_A30BB6F62_797:
; //	asm	nop				
	nop
; //_A30BB6F62_798:;				
_A30BB6F62_798:
; //	asm	nop				
	nop
; //_A30BB6F62_799:;				
_A30BB6F62_799:
; //	asm	nop				
	nop
; //_A30BB6F62_800:;				
_A30BB6F62_800:
; //	asm	nop				
	nop
; //_A30BB6F62_801:;				
_A30BB6F62_801:
; //	asm	nop				
	nop
; //_A30BB6F62_802:;				
_A30BB6F62_802:
; //	asm	nop				
	nop
; //_A30BB6F62_803:;				
_A30BB6F62_803:
; //	asm	nop				
	nop
; //_A30BB6F62_804:;				
_A30BB6F62_804:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_805:;				
_A30BB6F62_805:
; //	asm	nop				
	nop
; //_A30BB6F62_806:;				
_A30BB6F62_806:
; //	asm	nop				
	nop
; //_A30BB6F62_807:;				
_A30BB6F62_807:
; //	asm	nop				
	nop
; //_A30BB6F62_808:;				
_A30BB6F62_808:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_809:;				
_A30BB6F62_809:
; //	asm	nop				
	nop
; //_A30BB6F62_810:;				
_A30BB6F62_810:
; //	asm	nop				
	nop
; //_A30BB6F62_811:;				
_A30BB6F62_811:
; //	asm	nop				
	nop
; //_A30BB6F62_812:;				
_A30BB6F62_812:
; //	asm	nop				
	nop
; //_A30BB6F62_813:;				
_A30BB6F62_813:
; //	asm	nop				
	nop
; //_A30BB6F62_814:;				
_A30BB6F62_814:
; //	asm	nop				
	nop
; //_A30BB6F62_815:;				
_A30BB6F62_815:
; //	asm	nop				
	nop
; //_A30BB6F62_816:;				
_A30BB6F62_816:
; //	asm	nop				
	nop
; //_A30BB6F62_817:;				
_A30BB6F62_817:
; //	asm	nop				
	nop
; //_A30BB6F62_818:;				
_A30BB6F62_818:
; //	asm	nop				
	nop
; //_A30BB6F62_819:;				
_A30BB6F62_819:
; //	asm	nop				
	nop
; //_A30BB6F62_820:;				
_A30BB6F62_820:
; //	asm	nop				
	nop
; //_A30BB6F62_821:;				
_A30BB6F62_821:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_822:;				
_A30BB6F62_822:
; //	asm	nop				
	nop
; //_A30BB6F62_823:;				
_A30BB6F62_823:
; //	asm	nop				
	nop
; //_A30BB6F62_824:;				
_A30BB6F62_824:
; //	asm	nop				
	nop
; //_A30BB6F62_825:;				
_A30BB6F62_825:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_826:;				
_A30BB6F62_826:
; //	asm	nop				
	nop
; //_A30BB6F62_827:;				
_A30BB6F62_827:
; //	asm	nop				
	nop
; //_A30BB6F62_828:;				
_A30BB6F62_828:
; //	asm	nop				
	nop
; //_A30BB6F62_829:;				
_A30BB6F62_829:
; //	asm	nop				
	nop
; //_A30BB6F62_830:;				
_A30BB6F62_830:
; //	asm	nop				
	nop
; //_A30BB6F62_831:;				
_A30BB6F62_831:
; //	asm	nop				
	nop
; //_A30BB6F62_832:;				
_A30BB6F62_832:
; //	asm	nop				
	nop
; //_A30BB6F62_833:;				
_A30BB6F62_833:
; //	asm	nop				
	nop
; //_A30BB6F62_834:;				
_A30BB6F62_834:
; //	asm	nop				
	nop
; //_A30BB6F62_835:;				
_A30BB6F62_835:
; //	asm	nop				
	nop
; //_A30BB6F62_836:;				
_A30BB6F62_836:
; //	asm	nop				
	nop
; //_A30BB6F62_837:;				
_A30BB6F62_837:
; //	asm	nop				
	nop
; //_A30BB6F62_838:;				
_A30BB6F62_838:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_839:;				
_A30BB6F62_839:
; //	asm	nop				
	nop
; //_A30BB6F62_840:;				
_A30BB6F62_840:
; //	asm	nop				
	nop
; //_A30BB6F62_841:;				
_A30BB6F62_841:
; //	asm	nop				
	nop
; //_A30BB6F62_842:;				
_A30BB6F62_842:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_843:;				
_A30BB6F62_843:
; //	asm	nop				
	nop
; //_A30BB6F62_844:;				
_A30BB6F62_844:
; //	asm	nop				
	nop
; //_A30BB6F62_845:;				
_A30BB6F62_845:
; //	asm	nop				
	nop
; //_A30BB6F62_846:;				
_A30BB6F62_846:
; //	asm	nop				
	nop
; //_A30BB6F62_847:;				
_A30BB6F62_847:
; //	asm	nop				
	nop
; //_A30BB6F62_848:;				
_A30BB6F62_848:
; //	asm	nop				
	nop
; //_A30BB6F62_849:;				
_A30BB6F62_849:
; //	asm	nop				
	nop
; //_A30BB6F62_850:;				
_A30BB6F62_850:
; //	asm	nop				
	nop
; //_A30BB6F62_851:;				
_A30BB6F62_851:
; //	asm	nop				
	nop
; //_A30BB6F62_852:;				
_A30BB6F62_852:
; //	asm	nop				
	nop
; //_A30BB6F62_853:;				
_A30BB6F62_853:
; //	asm	nop				
	nop
; //_A30BB6F62_854:;				
_A30BB6F62_854:
; //	asm	nop				
	nop
; //_A30BB6F62_855:;				
_A30BB6F62_855:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_856:;				
_A30BB6F62_856:
; //	asm	nop				
	nop
; //_A30BB6F62_857:;				
_A30BB6F62_857:
; //	asm	nop				
	nop
; //_A30BB6F62_858:;				
_A30BB6F62_858:
; //	asm	nop				
	nop
; //_A30BB6F62_859:;				
_A30BB6F62_859:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_860:;				
_A30BB6F62_860:
; //	asm	nop				
	nop
; //_A30BB6F62_861:;				
_A30BB6F62_861:
; //	asm	nop				
	nop
; //_A30BB6F62_862:;				
_A30BB6F62_862:
; //	asm	nop				
	nop
; //_A30BB6F62_863:;				
_A30BB6F62_863:
; //	asm	nop				
	nop
; //_A30BB6F62_864:;				
_A30BB6F62_864:
; //	asm	nop				
	nop
; //_A30BB6F62_865:;				
_A30BB6F62_865:
; //	asm	nop				
	nop
; //_A30BB6F62_866:;				
_A30BB6F62_866:
; //	asm	nop				
	nop
; //_A30BB6F62_867:;				
_A30BB6F62_867:
; //	asm	nop				
	nop
; //_A30BB6F62_868:;				
_A30BB6F62_868:
; //	asm	nop				
	nop
; //_A30BB6F62_869:;				
_A30BB6F62_869:
; //	asm	nop				
	nop
; //_A30BB6F62_870:;				
_A30BB6F62_870:
; //	asm	nop				
	nop
; //_A30BB6F62_871:;				
_A30BB6F62_871:
; //	asm	nop				
	nop
; //_A30BB6F62_872:;				
_A30BB6F62_872:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_873:;				
_A30BB6F62_873:
; //	asm	nop				
	nop
; //_A30BB6F62_874:;				
_A30BB6F62_874:
; //	asm	nop				
	nop
; //_A30BB6F62_875:;				
_A30BB6F62_875:
; //	asm	nop				
	nop
; //_A30BB6F62_876:;				
_A30BB6F62_876:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_877:;				
_A30BB6F62_877:
; //	asm	nop				
	nop
; //_A30BB6F62_878:;				
_A30BB6F62_878:
; //	asm	nop				
	nop
; //_A30BB6F62_879:;				
_A30BB6F62_879:
; //	asm	nop				
	nop
; //_A30BB6F62_880:;				
_A30BB6F62_880:
; //	asm	nop				
	nop
; //_A30BB6F62_881:;				
_A30BB6F62_881:
; //	asm	nop				
	nop
; //_A30BB6F62_882:;				
_A30BB6F62_882:
; //	asm	nop				
	nop
; //_A30BB6F62_883:;				
_A30BB6F62_883:
; //	asm	nop				
	nop
; //_A30BB6F62_884:;				
_A30BB6F62_884:
; //	asm	nop				
	nop
; //_A30BB6F62_885:;				
_A30BB6F62_885:
; //	asm	nop				
	nop
; //_A30BB6F62_886:;				
_A30BB6F62_886:
; //	asm	nop				
	nop
; //_A30BB6F62_887:;				
_A30BB6F62_887:
; //	asm	nop				
	nop
; //_A30BB6F62_888:;				
_A30BB6F62_888:
; //	asm	nop				
	nop
; //_A30BB6F62_889:;				
_A30BB6F62_889:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_890:;				
_A30BB6F62_890:
; //	asm	nop				
	nop
; //_A30BB6F62_891:;				
_A30BB6F62_891:
; //	asm	nop				
	nop
; //_A30BB6F62_892:;				
_A30BB6F62_892:
; //	asm	nop				
	nop
; //_A30BB6F62_893:;				
_A30BB6F62_893:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_894:;				
_A30BB6F62_894:
; //	asm	nop				
	nop
; //_A30BB6F62_895:;				
_A30BB6F62_895:
; //	asm	nop				
	nop
; //_A30BB6F62_896:;				
_A30BB6F62_896:
; //	asm	nop				
	nop
; //_A30BB6F62_897:;				
_A30BB6F62_897:
; //	asm	nop				
	nop
; //_A30BB6F62_898:;				
_A30BB6F62_898:
; //	asm	nop				
	nop
; //_A30BB6F62_899:;				
_A30BB6F62_899:
; //	asm	nop				
	nop
; //_A30BB6F62_900:;				
_A30BB6F62_900:
; //	asm	nop				
	nop
; //_A30BB6F62_901:;				
_A30BB6F62_901:
; //	asm	nop				
	nop
; //_A30BB6F62_902:;				
_A30BB6F62_902:
; //	asm	nop				
	nop
; //_A30BB6F62_903:;				
_A30BB6F62_903:
; //	asm	nop				
	nop
; //_A30BB6F62_904:;				
_A30BB6F62_904:
; //	asm	nop				
	nop
; //_A30BB6F62_905:;				
_A30BB6F62_905:
; //	asm	nop				
	nop
; //_A30BB6F62_906:;				
_A30BB6F62_906:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_907:;				
_A30BB6F62_907:
; //	asm	nop				
	nop
; //_A30BB6F62_908:;				
_A30BB6F62_908:
; //	asm	nop				
	nop
; //_A30BB6F62_909:;				
_A30BB6F62_909:
; //	asm	nop				
	nop
; //_A30BB6F62_910:;				
_A30BB6F62_910:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_911:;				
_A30BB6F62_911:
; //	asm	nop				
	nop
; //_A30BB6F62_912:;				
_A30BB6F62_912:
; //	asm	nop				
	nop
; //_A30BB6F62_913:;				
_A30BB6F62_913:
; //	asm	nop				
	nop
; //_A30BB6F62_914:;				
_A30BB6F62_914:
; //	asm	nop				
	nop
; //_A30BB6F62_915:;				
_A30BB6F62_915:
; //	asm	nop				
	nop
; //_A30BB6F62_916:;				
_A30BB6F62_916:
; //	asm	nop				
	nop
; //_A30BB6F62_917:;				
_A30BB6F62_917:
; //	asm	nop				
	nop
; //_A30BB6F62_918:;				
_A30BB6F62_918:
; //	asm	nop				
	nop
; //_A30BB6F62_919:;				
_A30BB6F62_919:
; //	asm	nop				
	nop
; //_A30BB6F62_920:;				
_A30BB6F62_920:
; //	asm	nop				
	nop
; //_A30BB6F62_921:;				
_A30BB6F62_921:
; //	asm	nop				
	nop
; //_A30BB6F62_922:;				
_A30BB6F62_922:
; //	asm	nop				
	nop
; //_A30BB6F62_923:;				
_A30BB6F62_923:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_924:;				
_A30BB6F62_924:
; //	asm	nop				
	nop
; //_A30BB6F62_925:;				
_A30BB6F62_925:
; //	asm	nop				
	nop
; //_A30BB6F62_926:;				
_A30BB6F62_926:
; //	asm	nop				
	nop
; //_A30BB6F62_927:;				
_A30BB6F62_927:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_928:;				
_A30BB6F62_928:
; //	asm	nop				
	nop
; //_A30BB6F62_929:;				
_A30BB6F62_929:
; //	asm	nop				
	nop
; //_A30BB6F62_930:;				
_A30BB6F62_930:
; //	asm	nop				
	nop
; //_A30BB6F62_931:;				
_A30BB6F62_931:
; //	asm	nop				
	nop
; //_A30BB6F62_932:;				
_A30BB6F62_932:
; //	asm	nop				
	nop
; //_A30BB6F62_933:;				
_A30BB6F62_933:
; //	asm	nop				
	nop
; //_A30BB6F62_934:;				
_A30BB6F62_934:
; //	asm	nop				
	nop
; //_A30BB6F62_935:;				
_A30BB6F62_935:
; //	asm	nop				
	nop
; //_A30BB6F62_936:;				
_A30BB6F62_936:
; //	asm	nop				
	nop
; //_A30BB6F62_937:;				
_A30BB6F62_937:
; //	asm	nop				
	nop
; //_A30BB6F62_938:;				
_A30BB6F62_938:
; //	asm	nop				
	nop
; //_A30BB6F62_939:;				
_A30BB6F62_939:
; //	asm	nop				
	nop
; //_A30BB6F62_940:;				
_A30BB6F62_940:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_54:;					
LD63FD439_54:
; //_A30BB6F62_941:;				
_A30BB6F62_941:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_942:;				
_A30BB6F62_942:
; //	asm	nop				
	nop
; //_A30BB6F62_943:;				
_A30BB6F62_943:
; //	asm	nop				
	nop
; //_A30BB6F62_944:;				
_A30BB6F62_944:
; //	asm	nop				
	nop
; //_A30BB6F62_945:;				
_A30BB6F62_945:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_946:;				
_A30BB6F62_946:
; //	asm	nop				
	nop
; //_A30BB6F62_947:;				
_A30BB6F62_947:
; //	asm	nop				
	nop
; //_A30BB6F62_948:;				
_A30BB6F62_948:
; //	asm	nop				
	nop
; //_A30BB6F62_949:;				
_A30BB6F62_949:
; //	asm	nop				
	nop
; //_A30BB6F62_950:;				
_A30BB6F62_950:
; //	asm	nop				
	nop
; //_A30BB6F62_951:;				
_A30BB6F62_951:
; //	asm	nop				
	nop
; //_A30BB6F62_952:;				
_A30BB6F62_952:
; //	asm	nop				
	nop
; //_A30BB6F62_953:;				
_A30BB6F62_953:
; //	asm	nop				
	nop
; //_A30BB6F62_954:;				
_A30BB6F62_954:
; //	asm	nop				
	nop
; //_A30BB6F62_955:;				
_A30BB6F62_955:
; //	asm	nop				
	nop
; //_A30BB6F62_956:;				
_A30BB6F62_956:
; //	asm	nop				
	nop
; //_A30BB6F62_957:;				
_A30BB6F62_957:
; //	asm	nop				
	nop
; //_A30BB6F62_958:;				
_A30BB6F62_958:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_959:;				
_A30BB6F62_959:
; //	asm	nop				
	nop
; //_A30BB6F62_960:;				
_A30BB6F62_960:
; //	asm	nop				
	nop
; //_A30BB6F62_961:;				
_A30BB6F62_961:
; //	asm	nop				
	nop
; //_A30BB6F62_962:;				
_A30BB6F62_962:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_963:;				
_A30BB6F62_963:
; //	asm	nop				
	nop
; //_A30BB6F62_964:;				
_A30BB6F62_964:
; //	asm	nop				
	nop
; //_A30BB6F62_965:;				
_A30BB6F62_965:
; //	asm	nop				
	nop
; //_A30BB6F62_966:;				
_A30BB6F62_966:
; //	asm	nop				
	nop
; //_A30BB6F62_967:;				
_A30BB6F62_967:
; //	asm	nop				
	nop
; //_A30BB6F62_968:;				
_A30BB6F62_968:
; //	asm	nop				
	nop
; //_A30BB6F62_969:;				
_A30BB6F62_969:
; //	asm	nop				
	nop
; //_A30BB6F62_970:;				
_A30BB6F62_970:
; //	asm	nop				
	nop
; //_A30BB6F62_971:;				
_A30BB6F62_971:
; //	asm	nop				
	nop
; //_A30BB6F62_972:;				
_A30BB6F62_972:
; //	asm	nop				
	nop
; //_A30BB6F62_973:;				
_A30BB6F62_973:
; //	asm	nop				
	nop
; //_A30BB6F62_974:;				
_A30BB6F62_974:
; //	asm	nop				
	nop
; //_A30BB6F62_975:;				
_A30BB6F62_975:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_976:;				
_A30BB6F62_976:
; //	asm	nop				
	nop
; //_A30BB6F62_977:;				
_A30BB6F62_977:
; //	asm	nop				
	nop
; //_A30BB6F62_978:;				
_A30BB6F62_978:
; //	asm	nop				
	nop
; //_A30BB6F62_979:;				
_A30BB6F62_979:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_980:;				
_A30BB6F62_980:
; //	asm	nop				
	nop
; //_A30BB6F62_981:;				
_A30BB6F62_981:
; //	asm	nop				
	nop
; //_A30BB6F62_982:;				
_A30BB6F62_982:
; //	asm	nop				
	nop
; //_A30BB6F62_983:;				
_A30BB6F62_983:
; //	asm	nop				
	nop
; //_A30BB6F62_984:;				
_A30BB6F62_984:
; //	asm	nop				
	nop
; //_A30BB6F62_985:;				
_A30BB6F62_985:
; //	asm	nop				
	nop
; //_A30BB6F62_986:;				
_A30BB6F62_986:
; //	asm	nop				
	nop
; //_A30BB6F62_987:;				
_A30BB6F62_987:
; //	asm	nop				
	nop
; //_A30BB6F62_988:;				
_A30BB6F62_988:
; //	asm	nop				
	nop
; //_A30BB6F62_989:;				
_A30BB6F62_989:
; //	asm	nop				
	nop
; //_A30BB6F62_990:;				
_A30BB6F62_990:
; //	asm	nop				
	nop
; //_A30BB6F62_991:;				
_A30BB6F62_991:
; //	asm	nop				
	nop
; //_A30BB6F62_992:;				
_A30BB6F62_992:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_993:;				
_A30BB6F62_993:
; //	asm	nop				
	nop
; //_A30BB6F62_994:;				
_A30BB6F62_994:
; //	asm	nop				
	nop
; //_A30BB6F62_995:;				
_A30BB6F62_995:
; //	asm	nop				
	nop
; //_A30BB6F62_996:;				
_A30BB6F62_996:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_997:;				
_A30BB6F62_997:
; //	asm	nop				
	nop
; //_A30BB6F62_998:;				
_A30BB6F62_998:
; //	asm	nop				
	nop
; //_A30BB6F62_999:;				
_A30BB6F62_999:
; //	asm	nop				
	nop
; //_A30BB6F62_1000:;				
_A30BB6F62_1000:
; //	asm	nop				
	nop
; //_A30BB6F62_1001:;				
_A30BB6F62_1001:
; //	asm	nop				
	nop
; //_A30BB6F62_1002:;				
_A30BB6F62_1002:
; //	asm	nop				
	nop
; //_A30BB6F62_1003:;				
_A30BB6F62_1003:
; //	asm	nop				
	nop
; //_A30BB6F62_1004:;				
_A30BB6F62_1004:
; //	asm	nop				
	nop
; //_A30BB6F62_1005:;				
_A30BB6F62_1005:
; //	asm	nop				
	nop
; //_A30BB6F62_1006:;				
_A30BB6F62_1006:
; //	asm	nop				
	nop
; //_A30BB6F62_1007:;				
_A30BB6F62_1007:
; //	asm	nop				
	nop
; //_A30BB6F62_1008:;				
_A30BB6F62_1008:
; //	asm	nop				
	nop
; //_A30BB6F62_1009:;				
_A30BB6F62_1009:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1010:;				
_A30BB6F62_1010:
; //	asm	nop				
	nop
; //_A30BB6F62_1011:;				
_A30BB6F62_1011:
; //	asm	nop				
	nop
; //_A30BB6F62_1012:;				
_A30BB6F62_1012:
; //	asm	nop				
	nop
; //_A30BB6F62_1013:;				
_A30BB6F62_1013:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1014:;				
_A30BB6F62_1014:
; //	asm	nop				
	nop
; //_A30BB6F62_1015:;				
_A30BB6F62_1015:
; //	asm	nop				
	nop
; //_A30BB6F62_1016:;				
_A30BB6F62_1016:
; //	asm	nop				
	nop
; //_A30BB6F62_1017:;				
_A30BB6F62_1017:
; //	asm	nop				
	nop
; //_A30BB6F62_1018:;				
_A30BB6F62_1018:
; //	asm	nop				
	nop
; //_A30BB6F62_1019:;				
_A30BB6F62_1019:
; //	asm	nop				
	nop
; //_A30BB6F62_1020:;				
_A30BB6F62_1020:
; //	asm	nop				
	nop
; //_A30BB6F62_1021:;				
_A30BB6F62_1021:
; //	asm	nop				
	nop
; //_A30BB6F62_1022:;				
_A30BB6F62_1022:
; //	asm	nop				
	nop
; //_A30BB6F62_1023:;				
_A30BB6F62_1023:
; //	asm	nop				
	nop
; //_A30BB6F62_1024:;				
_A30BB6F62_1024:
; //	asm	nop				
	nop
; //_A30BB6F62_1025:;				
_A30BB6F62_1025:
; //	asm	nop				
	nop
; //_A30BB6F62_1026:;				
_A30BB6F62_1026:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1027:;				
_A30BB6F62_1027:
; //	asm	nop				
	nop
; //_A30BB6F62_1028:;				
_A30BB6F62_1028:
; //	asm	nop				
	nop
; //_A30BB6F62_1029:;				
_A30BB6F62_1029:
; //	asm	nop				
	nop
; //_A30BB6F62_1030:;				
_A30BB6F62_1030:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1031:;				
_A30BB6F62_1031:
; //	asm	nop				
	nop
; //_A30BB6F62_1032:;				
_A30BB6F62_1032:
; //	asm	nop				
	nop
; //_A30BB6F62_1033:;				
_A30BB6F62_1033:
; //	asm	nop				
	nop
; //_A30BB6F62_1034:;				
_A30BB6F62_1034:
; //	asm	nop				
	nop
; //_A30BB6F62_1035:;				
_A30BB6F62_1035:
; //	asm	nop				
	nop
; //_A30BB6F62_1036:;				
_A30BB6F62_1036:
; //	asm	nop				
	nop
; //_A30BB6F62_1037:;				
_A30BB6F62_1037:
; //	asm	nop				
	nop
; //_A30BB6F62_1038:;				
_A30BB6F62_1038:
; //	asm	nop				
	nop
; //_A30BB6F62_1039:;				
_A30BB6F62_1039:
; //	asm	nop				
	nop
; //_A30BB6F62_1040:;				
_A30BB6F62_1040:
; //	asm	nop				
	nop
; //_A30BB6F62_1041:;				
_A30BB6F62_1041:
; //	asm	nop				
	nop
; //_A30BB6F62_1042:;				
_A30BB6F62_1042:
; //	asm	nop				
	nop
; //_A30BB6F62_1043:;				
_A30BB6F62_1043:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1044:;				
_A30BB6F62_1044:
; //	asm	nop				
	nop
; //_A30BB6F62_1045:;				
_A30BB6F62_1045:
; //	asm	nop				
	nop
; //_A30BB6F62_1046:;				
_A30BB6F62_1046:
; //	asm	nop				
	nop
; //_A30BB6F62_1047:;				
_A30BB6F62_1047:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1048:;				
_A30BB6F62_1048:
; //	asm	nop				
	nop
; //_A30BB6F62_1049:;				
_A30BB6F62_1049:
; //	asm	nop				
	nop
; //_A30BB6F62_1050:;				
_A30BB6F62_1050:
; //	asm	nop				
	nop
; //_A30BB6F62_1051:;				
_A30BB6F62_1051:
; //	asm	nop				
	nop
; //_A30BB6F62_1052:;				
_A30BB6F62_1052:
; //	asm	nop				
	nop
; //_A30BB6F62_1053:;				
_A30BB6F62_1053:
; //	asm	nop				
	nop
; //_A30BB6F62_1054:;				
_A30BB6F62_1054:
; //	asm	nop				
	nop
; //_A30BB6F62_1055:;				
_A30BB6F62_1055:
; //	asm	nop				
	nop
; //_A30BB6F62_1056:;				
_A30BB6F62_1056:
; //	asm	nop				
	nop
; //_A30BB6F62_1057:;				
_A30BB6F62_1057:
; //	asm	nop				
	nop
; //_A30BB6F62_1058:;				
_A30BB6F62_1058:
; //	asm	nop				
	nop
; //_A30BB6F62_1059:;				
_A30BB6F62_1059:
; //	asm	nop				
	nop
; //_A30BB6F62_1060:;				
_A30BB6F62_1060:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1061:;				
_A30BB6F62_1061:
; //	asm	nop				
	nop
; //_A30BB6F62_1062:;				
_A30BB6F62_1062:
; //	asm	nop				
	nop
; //_A30BB6F62_1063:;				
_A30BB6F62_1063:
; //	asm	nop				
	nop
; //_A30BB6F62_1064:;				
_A30BB6F62_1064:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1065:;				
_A30BB6F62_1065:
; //	asm	nop				
	nop
; //_A30BB6F62_1066:;				
_A30BB6F62_1066:
; //	asm	nop				
	nop
; //_A30BB6F62_1067:;				
_A30BB6F62_1067:
; //	asm	nop				
	nop
; //_A30BB6F62_1068:;				
_A30BB6F62_1068:
; //	asm	nop				
	nop
; //_A30BB6F62_1069:;				
_A30BB6F62_1069:
; //	asm	nop				
	nop
; //_A30BB6F62_1070:;				
_A30BB6F62_1070:
; //	asm	nop				
	nop
; //_A30BB6F62_1071:;				
_A30BB6F62_1071:
; //	asm	nop				
	nop
; //_A30BB6F62_1072:;				
_A30BB6F62_1072:
; //	asm	nop				
	nop
; //_A30BB6F62_1073:;				
_A30BB6F62_1073:
; //	asm	nop				
	nop
; //_A30BB6F62_1074:;				
_A30BB6F62_1074:
; //	asm	nop				
	nop
; //_A30BB6F62_1075:;				
_A30BB6F62_1075:
; //	asm	nop				
	nop
; //_A30BB6F62_1076:;				
_A30BB6F62_1076:
; //	asm	nop				
	nop
; //_A30BB6F62_1077:;				
_A30BB6F62_1077:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1078:;				
_A30BB6F62_1078:
; //	asm	nop				
	nop
; //_A30BB6F62_1079:;				
_A30BB6F62_1079:
; //	asm	nop				
	nop
; //_A30BB6F62_1080:;				
_A30BB6F62_1080:
; //	asm	nop				
	nop
; //_A30BB6F62_1081:;				
_A30BB6F62_1081:
; //	asm	nop				
	nop
; //_A30BB6F62_1082:;				
_A30BB6F62_1082:
; //	asm	nop				
	nop
; //_A30BB6F62_1083:;				
_A30BB6F62_1083:
; //	asm	nop				
	nop
; //_A30BB6F62_1084:;				
_A30BB6F62_1084:
; //	asm	nop				
	nop
; //_A30BB6F62_1085:;				
_A30BB6F62_1085:
; //	asm	nop				
	nop
; //_A30BB6F62_1086:;				
_A30BB6F62_1086:
; //	asm	nop				
	nop
; //_A30BB6F62_1087:;				
_A30BB6F62_1087:
; //	asm	nop				
	nop
; //_A30BB6F62_1088:;				
_A30BB6F62_1088:
; //	asm	nop				
	nop
; //_A30BB6F62_1089:;				
_A30BB6F62_1089:
; //	asm	nop				
	nop
; //_A30BB6F62_1090:;				
_A30BB6F62_1090:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1091:;				
_A30BB6F62_1091:
; //	asm	nop				
	nop
; //_A30BB6F62_1092:;				
_A30BB6F62_1092:
; //	asm	nop				
	nop
; //_A30BB6F62_1093:;				
_A30BB6F62_1093:
; //	asm	nop				
	nop
; //_A30BB6F62_1094:;				
_A30BB6F62_1094:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1095:;				
_A30BB6F62_1095:
; //	asm	nop				
	nop
; //_A30BB6F62_1096:;				
_A30BB6F62_1096:
; //	asm	nop				
	nop
; //_A30BB6F62_1097:;				
_A30BB6F62_1097:
; //	asm	nop				
	nop
; //_A30BB6F62_1098:;				
_A30BB6F62_1098:
; //	asm	nop				
	nop
; //_A30BB6F62_1099:;				
_A30BB6F62_1099:
; //	asm	nop				
	nop
; //_A30BB6F62_1100:;				
_A30BB6F62_1100:
; //	asm	nop				
	nop
; //_A30BB6F62_1101:;				
_A30BB6F62_1101:
; //	asm	nop				
	nop
; //_A30BB6F62_1102:;				
_A30BB6F62_1102:
; //	asm	nop				
	nop
; //_A30BB6F62_1103:;				
_A30BB6F62_1103:
; //	asm	nop				
	nop
; //_A30BB6F62_1104:;				
_A30BB6F62_1104:
; //	asm	nop				
	nop
; //_A30BB6F62_1105:;				
_A30BB6F62_1105:
; //	asm	nop				
	nop
; //_A30BB6F62_1106:;				
_A30BB6F62_1106:
; //	asm	nop				
	nop
; //_A30BB6F62_1107:;				
_A30BB6F62_1107:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1108:;				
_A30BB6F62_1108:
; //	asm	nop				
	nop
; //_A30BB6F62_1109:;				
_A30BB6F62_1109:
; //	asm	nop				
	nop
; //_A30BB6F62_1110:;				
_A30BB6F62_1110:
; //	asm	nop				
	nop
; //_A30BB6F62_1111:;				
_A30BB6F62_1111:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1112:;				
_A30BB6F62_1112:
; //	asm	nop				
	nop
; //_A30BB6F62_1113:;				
_A30BB6F62_1113:
; //	asm	nop				
	nop
; //_A30BB6F62_1114:;				
_A30BB6F62_1114:
; //	asm	nop				
	nop
; //_A30BB6F62_1115:;				
_A30BB6F62_1115:
; //	asm	nop				
	nop
; //_A30BB6F62_1116:;				
_A30BB6F62_1116:
; //	asm	nop				
	nop
; //_A30BB6F62_1117:;				
_A30BB6F62_1117:
; //	asm	nop				
	nop
; //_A30BB6F62_1118:;				
_A30BB6F62_1118:
; //	asm	nop				
	nop
; //_A30BB6F62_1119:;				
_A30BB6F62_1119:
; //	asm	nop				
	nop
; //_A30BB6F62_1120:;				
_A30BB6F62_1120:
; //	asm	nop				
	nop
; //_A30BB6F62_1121:;				
_A30BB6F62_1121:
; //	asm	nop				
	nop
; //_A30BB6F62_1122:;				
_A30BB6F62_1122:
; //	asm	nop				
	nop
; //_A30BB6F62_1123:;				
_A30BB6F62_1123:
; //	asm	nop				
	nop
; //_A30BB6F62_1124:;				
_A30BB6F62_1124:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1125:;				
_A30BB6F62_1125:
; //	asm	nop				
	nop
; //_A30BB6F62_1126:;				
_A30BB6F62_1126:
; //	asm	nop				
	nop
; //_A30BB6F62_1127:;				
_A30BB6F62_1127:
; //	asm	nop				
	nop
; //_A30BB6F62_1128:;				
_A30BB6F62_1128:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1129:;				
_A30BB6F62_1129:
; //	asm	nop				
	nop
; //_A30BB6F62_1130:;				
_A30BB6F62_1130:
; //	asm	nop				
	nop
; //_A30BB6F62_1131:;				
_A30BB6F62_1131:
; //	asm	nop				
	nop
; //_A30BB6F62_1132:;				
_A30BB6F62_1132:
; //	asm	nop				
	nop
; //_A30BB6F62_1133:;				
_A30BB6F62_1133:
; //	asm	nop				
	nop
; //_A30BB6F62_1134:;				
_A30BB6F62_1134:
; //	asm	nop				
	nop
; //_A30BB6F62_1135:;				
_A30BB6F62_1135:
; //	asm	nop				
	nop
; //_A30BB6F62_1136:;				
_A30BB6F62_1136:
; //	asm	nop				
	nop
; //_A30BB6F62_1137:;				
_A30BB6F62_1137:
; //	asm	nop				
	nop
; //_A30BB6F62_1138:;				
_A30BB6F62_1138:
; //	asm	nop				
	nop
; //_A30BB6F62_1139:;				
_A30BB6F62_1139:
; //	asm	nop				
	nop
; //_A30BB6F62_1140:;				
_A30BB6F62_1140:
; //	asm	nop				
	nop
; //_A30BB6F62_1141:;				
_A30BB6F62_1141:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1142:;				
_A30BB6F62_1142:
; //	asm	nop				
	nop
; //_A30BB6F62_1143:;				
_A30BB6F62_1143:
; //	asm	nop				
	nop
; //_A30BB6F62_1144:;				
_A30BB6F62_1144:
; //	asm	nop				
	nop
; //_A30BB6F62_1145:;				
_A30BB6F62_1145:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1146:;				
_A30BB6F62_1146:
; //	asm	nop				
	nop
; //_A30BB6F62_1147:;				
_A30BB6F62_1147:
; //	asm	nop				
	nop
; //_A30BB6F62_1148:;				
_A30BB6F62_1148:
; //	asm	nop				
	nop
; //_A30BB6F62_1149:;				
_A30BB6F62_1149:
; //	asm	nop				
	nop
; //_A30BB6F62_1150:;				
_A30BB6F62_1150:
; //	asm	nop				
	nop
; //_A30BB6F62_1151:;				
_A30BB6F62_1151:
; //	asm	nop				
	nop
; //_A30BB6F62_1152:;				
_A30BB6F62_1152:
; //	asm	nop				
	nop
; //_A30BB6F62_1153:;				
_A30BB6F62_1153:
; //	asm	nop				
	nop
; //_A30BB6F62_1154:;				
_A30BB6F62_1154:
; //	asm	nop				
	nop
; //_A30BB6F62_1155:;				
_A30BB6F62_1155:
; //	asm	nop				
	nop
; //_A30BB6F62_1156:;				
_A30BB6F62_1156:
; //	asm	nop				
	nop
; //_A30BB6F62_1157:;				
_A30BB6F62_1157:
; //	asm	nop				
	nop
; //_A30BB6F62_1158:;				
_A30BB6F62_1158:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1159:;				
_A30BB6F62_1159:
; //	asm	nop				
	nop
; //_A30BB6F62_1160:;				
_A30BB6F62_1160:
; //	asm	nop				
	nop
; //_A30BB6F62_1161:;				
_A30BB6F62_1161:
; //	asm	nop				
	nop
; //_A30BB6F62_1162:;				
_A30BB6F62_1162:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1163:;				
_A30BB6F62_1163:
; //	asm	nop				
	nop
; //_A30BB6F62_1164:;				
_A30BB6F62_1164:
; //	asm	nop				
	nop
; //_A30BB6F62_1165:;				
_A30BB6F62_1165:
; //	asm	nop				
	nop
; //_A30BB6F62_1166:;				
_A30BB6F62_1166:
; //	asm	nop				
	nop
; //_A30BB6F62_1167:;				
_A30BB6F62_1167:
; //	asm	nop				
	nop
; //_A30BB6F62_1168:;				
_A30BB6F62_1168:
; //	asm	nop				
	nop
; //_A30BB6F62_1169:;				
_A30BB6F62_1169:
; //	asm	nop				
	nop
; //_A30BB6F62_1170:;				
_A30BB6F62_1170:
; //	asm	nop				
	nop
; //_A30BB6F62_1171:;				
_A30BB6F62_1171:
; //	asm	nop				
	nop
; //_A30BB6F62_1172:;				
_A30BB6F62_1172:
; //	asm	nop				
	nop
; //_A30BB6F62_1173:;				
_A30BB6F62_1173:
; //	asm	nop				
	nop
; //_A30BB6F62_1174:;				
_A30BB6F62_1174:
; //	asm	nop				
	nop
; //_A30BB6F62_1175:;				
_A30BB6F62_1175:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1176:;				
_A30BB6F62_1176:
; //	asm	nop				
	nop
; //_A30BB6F62_1177:;				
_A30BB6F62_1177:
; //	asm	nop				
	nop
; //_A30BB6F62_1178:;				
_A30BB6F62_1178:
; //	asm	nop				
	nop
; //_A30BB6F62_1179:;				
_A30BB6F62_1179:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1180:;				
_A30BB6F62_1180:
; //	asm	nop				
	nop
; //_A30BB6F62_1181:;				
_A30BB6F62_1181:
; //	asm	nop				
	nop
; //_A30BB6F62_1182:;				
_A30BB6F62_1182:
; //	asm	nop				
	nop
; //_A30BB6F62_1183:;				
_A30BB6F62_1183:
; //	asm	nop				
	nop
; //_A30BB6F62_1184:;				
_A30BB6F62_1184:
; //	asm	nop				
	nop
; //_A30BB6F62_1185:;				
_A30BB6F62_1185:
; //	asm	nop				
	nop
; //_A30BB6F62_1186:;				
_A30BB6F62_1186:
; //	asm	nop				
	nop
; //_A30BB6F62_1187:;				
_A30BB6F62_1187:
; //	asm	nop				
	nop
; //_A30BB6F62_1188:;				
_A30BB6F62_1188:
; //	asm	nop				
	nop
; //_A30BB6F62_1189:;				
_A30BB6F62_1189:
; //	asm	nop				
	nop
; //_A30BB6F62_1190:;				
_A30BB6F62_1190:
; //	asm	nop				
	nop
; //_A30BB6F62_1191:;				
_A30BB6F62_1191:
; //	asm	nop				
	nop
; //_A30BB6F62_1192:;				
_A30BB6F62_1192:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1193:;				
_A30BB6F62_1193:
; //	asm	nop				
	nop
; //_A30BB6F62_1194:;				
_A30BB6F62_1194:
; //	asm	nop				
	nop
; //_A30BB6F62_1195:;				
_A30BB6F62_1195:
; //	asm	nop				
	nop
; //_A30BB6F62_1196:;				
_A30BB6F62_1196:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1197:;				
_A30BB6F62_1197:
; //	asm	nop				
	nop
; //_A30BB6F62_1198:;				
_A30BB6F62_1198:
; //	asm	nop				
	nop
; //_A30BB6F62_1199:;				
_A30BB6F62_1199:
; //	asm	nop				
	nop
; //_A30BB6F62_1200:;				
_A30BB6F62_1200:
; //	asm	nop				
	nop
; //_A30BB6F62_1201:;				
_A30BB6F62_1201:
; //	asm	nop				
	nop
; //_A30BB6F62_1202:;				
_A30BB6F62_1202:
; //	asm	nop				
	nop
; //_A30BB6F62_1203:;				
_A30BB6F62_1203:
; //	asm	nop				
	nop
; //_A30BB6F62_1204:;				
_A30BB6F62_1204:
; //	asm	nop				
	nop
; //_A30BB6F62_1205:;				
_A30BB6F62_1205:
; //	asm	nop				
	nop
; //_A30BB6F62_1206:;				
_A30BB6F62_1206:
; //	asm	nop				
	nop
; //_A30BB6F62_1207:;				
_A30BB6F62_1207:
; //	asm	nop				
	nop
; //_A30BB6F62_1208:;				
_A30BB6F62_1208:
; //	asm	nop				
	nop
; //_A30BB6F62_1209:;				
_A30BB6F62_1209:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1210:;				
_A30BB6F62_1210:
; //	asm	nop				
	nop
; //_A30BB6F62_1211:;				
_A30BB6F62_1211:
; //	asm	nop				
	nop
; //_A30BB6F62_1212:;				
_A30BB6F62_1212:
; //	asm	nop				
	nop
; //_A30BB6F62_1213:;				
_A30BB6F62_1213:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1214:;				
_A30BB6F62_1214:
; //	asm	nop				
	nop
; //_A30BB6F62_1215:;				
_A30BB6F62_1215:
; //	asm	nop				
	nop
; //_A30BB6F62_1216:;				
_A30BB6F62_1216:
; //	asm	nop				
	nop
; //_A30BB6F62_1217:;				
_A30BB6F62_1217:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1218:;				
_A30BB6F62_1218:
; //	asm	nop				
	nop
; //_A30BB6F62_1219:;				
_A30BB6F62_1219:
; //	asm	nop				
	nop
; //_A30BB6F62_1220:;				
_A30BB6F62_1220:
; //	asm	nop				
	nop
; //_A30BB6F62_1221:;				
_A30BB6F62_1221:
; //	asm	nop				
	nop
; //_A30BB6F62_1222:;				
_A30BB6F62_1222:
; //	asm	nop				
	nop
; //_A30BB6F62_1223:;				
_A30BB6F62_1223:
; //	asm	nop				
	nop
; //_A30BB6F62_1224:;				
_A30BB6F62_1224:
; //	asm	nop				
	nop
; //_A30BB6F62_1225:;				
_A30BB6F62_1225:
; //	asm	nop				
	nop
; //_A30BB6F62_1226:;				
_A30BB6F62_1226:
; //	asm	nop				
	nop
; //_A30BB6F62_1227:;				
_A30BB6F62_1227:
; //	asm	nop				
	nop
; //_A30BB6F62_1228:;				
_A30BB6F62_1228:
; //	asm	nop				
	nop
; //_A30BB6F62_1229:;				
_A30BB6F62_1229:
; //	asm	nop				
	nop
; //_A30BB6F62_1230:;				
_A30BB6F62_1230:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1231:;				
_A30BB6F62_1231:
; //	asm	nop				
	nop
; //_A30BB6F62_1232:;				
_A30BB6F62_1232:
; //	asm	nop				
	nop
; //_A30BB6F62_1233:;				
_A30BB6F62_1233:
; //	asm	nop				
	nop
; //_A30BB6F62_1234:;				
_A30BB6F62_1234:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1235:;				
_A30BB6F62_1235:
; //	asm	nop				
	nop
; //_A30BB6F62_1236:;				
_A30BB6F62_1236:
; //	asm	nop				
	nop
; //_A30BB6F62_1237:;				
_A30BB6F62_1237:
; //	asm	nop				
	nop
; //_A30BB6F62_1238:;				
_A30BB6F62_1238:
; //	asm	nop				
	nop
; //_A30BB6F62_1239:;				
_A30BB6F62_1239:
; //	asm	nop				
	nop
; //_A30BB6F62_1240:;				
_A30BB6F62_1240:
; //	asm	nop				
	nop
; //_A30BB6F62_1241:;				
_A30BB6F62_1241:
; //	asm	nop				
	nop
; //_A30BB6F62_1242:;				
_A30BB6F62_1242:
; //	asm	nop				
	nop
; //_A30BB6F62_1243:;				
_A30BB6F62_1243:
; //	asm	nop				
	nop
; //_A30BB6F62_1244:;				
_A30BB6F62_1244:
; //	asm	nop				
	nop
; //_A30BB6F62_1245:;				
_A30BB6F62_1245:
; //	asm	nop				
	nop
; //_A30BB6F62_1246:;				
_A30BB6F62_1246:
; //	asm	nop				
	nop
; //_A30BB6F62_1247:;				
_A30BB6F62_1247:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1248:;				
_A30BB6F62_1248:
; //	asm	nop				
	nop
; //_A30BB6F62_1249:;				
_A30BB6F62_1249:
; //	asm	nop				
	nop
; //_A30BB6F62_1250:;				
_A30BB6F62_1250:
; //	asm	nop				
	nop
; //_A30BB6F62_1251:;				
_A30BB6F62_1251:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1252:;				
_A30BB6F62_1252:
; //	asm	nop				
	nop
; //_A30BB6F62_1253:;				
_A30BB6F62_1253:
; //	asm	nop				
	nop
; //_A30BB6F62_1254:;				
_A30BB6F62_1254:
; //	asm	nop				
	nop
; //_A30BB6F62_1255:;				
_A30BB6F62_1255:
; //	asm	nop				
	nop
; //_A30BB6F62_1256:;				
_A30BB6F62_1256:
; //	asm	nop				
	nop
; //_A30BB6F62_1257:;				
_A30BB6F62_1257:
; //	asm	nop				
	nop
; //_A30BB6F62_1258:;				
_A30BB6F62_1258:
; //	asm	nop				
	nop
; //_A30BB6F62_1259:;				
_A30BB6F62_1259:
; //	asm	nop				
	nop
; //_A30BB6F62_1260:;				
_A30BB6F62_1260:
; //	asm	nop				
	nop
; //_A30BB6F62_1261:;				
_A30BB6F62_1261:
; //	asm	nop				
	nop
; //_A30BB6F62_1262:;				
_A30BB6F62_1262:
; //	asm	nop				
	nop
; //_A30BB6F62_1263:;				
_A30BB6F62_1263:
; //	asm	nop				
	nop
; //_A30BB6F62_1264:;				
_A30BB6F62_1264:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1265:;				
_A30BB6F62_1265:
; //	asm	nop				
	nop
; //_A30BB6F62_1266:;				
_A30BB6F62_1266:
; //	asm	nop				
	nop
; //_A30BB6F62_1267:;				
_A30BB6F62_1267:
; //	asm	nop				
	nop
; //_A30BB6F62_1268:;				
_A30BB6F62_1268:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1269:;				
_A30BB6F62_1269:
; //	asm	nop				
	nop
; //_A30BB6F62_1270:;				
_A30BB6F62_1270:
; //	asm	nop				
	nop
; //_A30BB6F62_1271:;				
_A30BB6F62_1271:
; //	asm	nop				
	nop
; //_A30BB6F62_1272:;				
_A30BB6F62_1272:
; //	asm	nop				
	nop
; //_A30BB6F62_1273:;				
_A30BB6F62_1273:
; //	asm	nop				
	nop
; //_A30BB6F62_1274:;				
_A30BB6F62_1274:
; //	asm	nop				
	nop
; //_A30BB6F62_1275:;				
_A30BB6F62_1275:
; //	asm	nop				
	nop
; //_A30BB6F62_1276:;				
_A30BB6F62_1276:
; //	asm	nop				
	nop
; //_A30BB6F62_1277:;				
_A30BB6F62_1277:
; //	asm	nop				
	nop
; //_A30BB6F62_1278:;				
_A30BB6F62_1278:
; //	asm	nop				
	nop
; //_A30BB6F62_1279:;				
_A30BB6F62_1279:
; //	asm	nop				
	nop
; //_A30BB6F62_1280:;				
_A30BB6F62_1280:
; //	asm	nop				
	nop
; //_A30BB6F62_1281:;				
_A30BB6F62_1281:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1282:;				
_A30BB6F62_1282:
; //	asm	nop				
	nop
; //_A30BB6F62_1283:;				
_A30BB6F62_1283:
; //	asm	nop				
	nop
; //_A30BB6F62_1284:;				
_A30BB6F62_1284:
; //	asm	nop				
	nop
; //_A30BB6F62_1285:;				
_A30BB6F62_1285:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1286:;				
_A30BB6F62_1286:
; //	asm	nop				
	nop
; //_A30BB6F62_1287:;				
_A30BB6F62_1287:
; //	asm	nop				
	nop
; //_A30BB6F62_1288:;				
_A30BB6F62_1288:
; //	asm	nop				
	nop
; //_A30BB6F62_1289:;				
_A30BB6F62_1289:
; //	asm	nop				
	nop
; //_A30BB6F62_1290:;				
_A30BB6F62_1290:
; //	asm	nop				
	nop
; //_A30BB6F62_1291:;				
_A30BB6F62_1291:
; //	asm	nop				
	nop
; //_A30BB6F62_1292:;				
_A30BB6F62_1292:
; //	asm	nop				
	nop
; //_A30BB6F62_1293:;				
_A30BB6F62_1293:
; //	asm	nop				
	nop
; //_A30BB6F62_1294:;				
_A30BB6F62_1294:
; //	asm	nop				
	nop
; //_A30BB6F62_1295:;				
_A30BB6F62_1295:
; //	asm	nop				
	nop
; //_A30BB6F62_1296:;				
_A30BB6F62_1296:
; //	asm	nop				
	nop
; //_A30BB6F62_1297:;				
_A30BB6F62_1297:
; //	asm	nop				
	nop
; //_A30BB6F62_1298:;				
_A30BB6F62_1298:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1299:;				
_A30BB6F62_1299:
; //	asm	nop				
	nop
; //_A30BB6F62_1300:;				
_A30BB6F62_1300:
; //	asm	nop				
	nop
; //_A30BB6F62_1301:;				
_A30BB6F62_1301:
; //	asm	nop				
	nop
; //_A30BB6F62_1302:;				
_A30BB6F62_1302:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1303:;				
_A30BB6F62_1303:
; //	asm	nop				
	nop
; //_A30BB6F62_1304:;				
_A30BB6F62_1304:
; //	asm	nop				
	nop
; //_A30BB6F62_1305:;				
_A30BB6F62_1305:
; //	asm	nop				
	nop
; //_A30BB6F62_1306:;				
_A30BB6F62_1306:
; //	asm	nop				
	nop
; //_A30BB6F62_1307:;				
_A30BB6F62_1307:
; //	asm	nop				
	nop
; //_A30BB6F62_1308:;				
_A30BB6F62_1308:
; //	asm	nop				
	nop
; //_A30BB6F62_1309:;				
_A30BB6F62_1309:
; //	asm	nop				
	nop
; //_A30BB6F62_1310:;				
_A30BB6F62_1310:
; //	asm	nop				
	nop
; //_A30BB6F62_1311:;				
_A30BB6F62_1311:
; //	asm	nop				
	nop
; //_A30BB6F62_1312:;				
_A30BB6F62_1312:
; //	asm	nop				
	nop
; //_A30BB6F62_1313:;				
_A30BB6F62_1313:
; //	asm	nop				
	nop
; //_A30BB6F62_1314:;				
_A30BB6F62_1314:
; //	asm	nop				
	nop
; //_A30BB6F62_1315:;				
_A30BB6F62_1315:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1316:;				
_A30BB6F62_1316:
; //	asm	nop				
	nop
; //_A30BB6F62_1317:;				
_A30BB6F62_1317:
; //	asm	nop				
	nop
; //_A30BB6F62_1318:;				
_A30BB6F62_1318:
; //	asm	nop				
	nop
; //_A30BB6F62_1319:;				
_A30BB6F62_1319:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1320:;				
_A30BB6F62_1320:
; //	asm	nop				
	nop
; //_A30BB6F62_1321:;				
_A30BB6F62_1321:
; //	asm	nop				
	nop
; //_A30BB6F62_1322:;				
_A30BB6F62_1322:
; //	asm	nop				
	nop
; //_A30BB6F62_1323:;				
_A30BB6F62_1323:
; //	asm	nop				
	nop
; //_A30BB6F62_1324:;				
_A30BB6F62_1324:
; //	asm	nop				
	nop
; //_A30BB6F62_1325:;				
_A30BB6F62_1325:
; //	asm	nop				
	nop
; //_A30BB6F62_1326:;				
_A30BB6F62_1326:
; //	asm	nop				
	nop
; //_A30BB6F62_1327:;				
_A30BB6F62_1327:
; //	asm	nop				
	nop
; //_A30BB6F62_1328:;				
_A30BB6F62_1328:
; //	asm	nop				
	nop
; //_A30BB6F62_1329:;				
_A30BB6F62_1329:
; //	asm	nop				
	nop
; //_A30BB6F62_1330:;				
_A30BB6F62_1330:
; //	asm	nop				
	nop
; //_A30BB6F62_1331:;				
_A30BB6F62_1331:
; //	asm	nop				
	nop
; //_A30BB6F62_1332:;				
_A30BB6F62_1332:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1333:;				
_A30BB6F62_1333:
; //	asm	nop				
	nop
; //_A30BB6F62_1334:;				
_A30BB6F62_1334:
; //	asm	nop				
	nop
; //_A30BB6F62_1335:;				
_A30BB6F62_1335:
; //	asm	nop				
	nop
; //_A30BB6F62_1336:;				
_A30BB6F62_1336:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1337:;				
_A30BB6F62_1337:
; //	asm	nop				
	nop
; //_A30BB6F62_1338:;				
_A30BB6F62_1338:
; //	asm	nop				
	nop
; //_A30BB6F62_1339:;				
_A30BB6F62_1339:
; //	asm	nop				
	nop
; //_A30BB6F62_1340:;				
_A30BB6F62_1340:
; //	asm	nop				
	nop
; //_A30BB6F62_1341:;				
_A30BB6F62_1341:
; //	asm	nop				
	nop
; //_A30BB6F62_1342:;				
_A30BB6F62_1342:
; //	asm	nop				
	nop
; //_A30BB6F62_1343:;				
_A30BB6F62_1343:
; //	asm	nop				
	nop
; //_A30BB6F62_1344:;				
_A30BB6F62_1344:
; //	asm	nop				
	nop
; //_A30BB6F62_1345:;				
_A30BB6F62_1345:
; //	asm	nop				
	nop
; //_A30BB6F62_1346:;				
_A30BB6F62_1346:
; //	asm	nop				
	nop
; //_A30BB6F62_1347:;				
_A30BB6F62_1347:
; //	asm	nop				
	nop
; //_A30BB6F62_1348:;				
_A30BB6F62_1348:
; //	asm	nop				
	nop
; //_A30BB6F62_1349:;				
_A30BB6F62_1349:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_55:;					
LD63FD439_55:
; //_A30BB6F62_1350:;				
_A30BB6F62_1350:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1351:;				
_A30BB6F62_1351:
; //	asm	nop				
	nop
; //_A30BB6F62_1352:;				
_A30BB6F62_1352:
; //	asm	nop				
	nop
; //_A30BB6F62_1353:;				
_A30BB6F62_1353:
; //	asm	nop				
	nop
; //_A30BB6F62_1354:;				
_A30BB6F62_1354:
; //	asm	nop				
	nop
; //_A30BB6F62_1355:;				
_A30BB6F62_1355:
; //	asm	nop				
	nop
; //_A30BB6F62_1356:;				
_A30BB6F62_1356:
; //	asm	nop				
	nop
; //_A30BB6F62_1357:;				
_A30BB6F62_1357:
; //	asm	nop				
	nop
; //_A30BB6F62_1358:;				
_A30BB6F62_1358:
; //	asm	nop				
	nop
; //_A30BB6F62_1359:;				
_A30BB6F62_1359:
; //	asm	nop				
	nop
; //_A30BB6F62_1360:;				
_A30BB6F62_1360:
; //	asm	nop				
	nop
; //_A30BB6F62_1361:;				
_A30BB6F62_1361:
; //	asm	nop				
	nop
; //_A30BB6F62_1362:;				
_A30BB6F62_1362:
; //	asm	nop				
	nop
; //_A30BB6F62_1363:;				
_A30BB6F62_1363:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1364:;				
_A30BB6F62_1364:
; //	asm	nop				
	nop
; //_A30BB6F62_1365:;				
_A30BB6F62_1365:
; //	asm	nop				
	nop
; //_A30BB6F62_1366:;				
_A30BB6F62_1366:
; //	asm	nop				
	nop
; //_A30BB6F62_1367:;				
_A30BB6F62_1367:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1368:;				
_A30BB6F62_1368:
; //	asm	nop				
	nop
; //_A30BB6F62_1369:;				
_A30BB6F62_1369:
; //	asm	nop				
	nop
; //_A30BB6F62_1370:;				
_A30BB6F62_1370:
; //	asm	nop				
	nop
; //_A30BB6F62_1371:;				
_A30BB6F62_1371:
; //	asm	nop				
	nop
; //_A30BB6F62_1372:;				
_A30BB6F62_1372:
; //	asm	nop				
	nop
; //_A30BB6F62_1373:;				
_A30BB6F62_1373:
; //	asm	nop				
	nop
; //_A30BB6F62_1374:;				
_A30BB6F62_1374:
; //	asm	nop				
	nop
; //_A30BB6F62_1375:;				
_A30BB6F62_1375:
; //	asm	nop				
	nop
; //_A30BB6F62_1376:;				
_A30BB6F62_1376:
; //	asm	nop				
	nop
; //_A30BB6F62_1377:;				
_A30BB6F62_1377:
; //	asm	nop				
	nop
; //_A30BB6F62_1378:;				
_A30BB6F62_1378:
; //	asm	nop				
	nop
; //_A30BB6F62_1379:;				
_A30BB6F62_1379:
; //	asm	nop				
	nop
; //_A30BB6F62_1380:;				
_A30BB6F62_1380:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1381:;				
_A30BB6F62_1381:
; //	asm	nop				
	nop
; //_A30BB6F62_1382:;				
_A30BB6F62_1382:
; //	asm	nop				
	nop
; //_A30BB6F62_1383:;				
_A30BB6F62_1383:
; //	asm	nop				
	nop
; //_A30BB6F62_1384:;				
_A30BB6F62_1384:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1385:;				
_A30BB6F62_1385:
; //	asm	nop				
	nop
; //_A30BB6F62_1386:;				
_A30BB6F62_1386:
; //	asm	nop				
	nop
; //_A30BB6F62_1387:;				
_A30BB6F62_1387:
; //	asm	nop				
	nop
; //_A30BB6F62_1388:;				
_A30BB6F62_1388:
; //	asm	nop				
	nop
; //_A30BB6F62_1389:;				
_A30BB6F62_1389:
; //	asm	nop				
	nop
; //_A30BB6F62_1390:;				
_A30BB6F62_1390:
; //	asm	nop				
	nop
; //_A30BB6F62_1391:;				
_A30BB6F62_1391:
; //	asm	nop				
	nop
; //_A30BB6F62_1392:;				
_A30BB6F62_1392:
; //	asm	nop				
	nop
; //_A30BB6F62_1393:;				
_A30BB6F62_1393:
; //	asm	nop				
	nop
; //_A30BB6F62_1394:;				
_A30BB6F62_1394:
; //	asm	nop				
	nop
; //_A30BB6F62_1395:;				
_A30BB6F62_1395:
; //	asm	nop				
	nop
; //_A30BB6F62_1396:;				
_A30BB6F62_1396:
; //	asm	nop				
	nop
; //_A30BB6F62_1397:;				
_A30BB6F62_1397:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1398:;				
_A30BB6F62_1398:
; //	asm	nop				
	nop
; //_A30BB6F62_1399:;				
_A30BB6F62_1399:
; //	asm	nop				
	nop
; //_A30BB6F62_1400:;				
_A30BB6F62_1400:
; //	asm	nop				
	nop
; //_A30BB6F62_1401:;				
_A30BB6F62_1401:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1402:;				
_A30BB6F62_1402:
; //	asm	nop				
	nop
; //_A30BB6F62_1403:;				
_A30BB6F62_1403:
; //	asm	nop				
	nop
; //_A30BB6F62_1404:;				
_A30BB6F62_1404:
; //	asm	nop				
	nop
; //_A30BB6F62_1405:;				
_A30BB6F62_1405:
; //	asm	nop				
	nop
; //_A30BB6F62_1406:;				
_A30BB6F62_1406:
; //	asm	nop				
	nop
; //_A30BB6F62_1407:;				
_A30BB6F62_1407:
; //	asm	nop				
	nop
; //_A30BB6F62_1408:;				
_A30BB6F62_1408:
; //	asm	nop				
	nop
; //_A30BB6F62_1409:;				
_A30BB6F62_1409:
; //	asm	nop				
	nop
; //_A30BB6F62_1410:;				
_A30BB6F62_1410:
; //	asm	nop				
	nop
; //_A30BB6F62_1411:;				
_A30BB6F62_1411:
; //	asm	nop				
	nop
; //_A30BB6F62_1412:;				
_A30BB6F62_1412:
; //	asm	nop				
	nop
; //_A30BB6F62_1413:;				
_A30BB6F62_1413:
; //	asm	nop				
	nop
; //_A30BB6F62_1414:;				
_A30BB6F62_1414:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1415:;				
_A30BB6F62_1415:
; //	asm	nop				
	nop
; //_A30BB6F62_1416:;				
_A30BB6F62_1416:
; //	asm	nop				
	nop
; //_A30BB6F62_1417:;				
_A30BB6F62_1417:
; //	asm	nop				
	nop
; //_A30BB6F62_1418:;				
_A30BB6F62_1418:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1419:;				
_A30BB6F62_1419:
; //	asm	nop				
	nop
; //_A30BB6F62_1420:;				
_A30BB6F62_1420:
; //	asm	nop				
	nop
; //_A30BB6F62_1421:;				
_A30BB6F62_1421:
; //	asm	nop				
	nop
; //_A30BB6F62_1422:;				
_A30BB6F62_1422:
; //	asm	nop				
	nop
; //_A30BB6F62_1423:;				
_A30BB6F62_1423:
; //	asm	nop				
	nop
; //_A30BB6F62_1424:;				
_A30BB6F62_1424:
; //	asm	nop				
	nop
; //_A30BB6F62_1425:;				
_A30BB6F62_1425:
; //	asm	nop				
	nop
; //_A30BB6F62_1426:;				
_A30BB6F62_1426:
; //	asm	nop				
	nop
; //_A30BB6F62_1427:;				
_A30BB6F62_1427:
; //	asm	nop				
	nop
; //_A30BB6F62_1428:;				
_A30BB6F62_1428:
; //	asm	nop				
	nop
; //_A30BB6F62_1429:;				
_A30BB6F62_1429:
; //	asm	nop				
	nop
; //_A30BB6F62_1430:;				
_A30BB6F62_1430:
; //	asm	nop				
	nop
; //_A30BB6F62_1431:;				
_A30BB6F62_1431:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1432:;				
_A30BB6F62_1432:
; //	asm	nop				
	nop
; //_A30BB6F62_1433:;				
_A30BB6F62_1433:
; //	asm	nop				
	nop
; //_A30BB6F62_1434:;				
_A30BB6F62_1434:
; //	asm	nop				
	nop
; //_A30BB6F62_1435:;				
_A30BB6F62_1435:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1436:;				
_A30BB6F62_1436:
; //	asm	nop				
	nop
; //_A30BB6F62_1437:;				
_A30BB6F62_1437:
; //	asm	nop				
	nop
; //_A30BB6F62_1438:;				
_A30BB6F62_1438:
; //	asm	nop				
	nop
; //_A30BB6F62_1439:;				
_A30BB6F62_1439:
; //	asm	nop				
	nop
; //_A30BB6F62_1440:;				
_A30BB6F62_1440:
; //	asm	nop				
	nop
; //_A30BB6F62_1441:;				
_A30BB6F62_1441:
; //	asm	nop				
	nop
; //_A30BB6F62_1442:;				
_A30BB6F62_1442:
; //	asm	nop				
	nop
; //_A30BB6F62_1443:;				
_A30BB6F62_1443:
; //	asm	nop				
	nop
; //_A30BB6F62_1444:;				
_A30BB6F62_1444:
; //	asm	nop				
	nop
; //_A30BB6F62_1445:;				
_A30BB6F62_1445:
; //	asm	nop				
	nop
; //_A30BB6F62_1446:;				
_A30BB6F62_1446:
; //	asm	nop				
	nop
; //_A30BB6F62_1447:;				
_A30BB6F62_1447:
; //	asm	nop				
	nop
; //_A30BB6F62_1448:;				
_A30BB6F62_1448:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1449:;				
_A30BB6F62_1449:
; //	asm	nop				
	nop
; //_A30BB6F62_1450:;				
_A30BB6F62_1450:
; //	asm	nop				
	nop
; //_A30BB6F62_1451:;				
_A30BB6F62_1451:
; //	asm	nop				
	nop
; //_A30BB6F62_1452:;				
_A30BB6F62_1452:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1453:;				
_A30BB6F62_1453:
; //	asm	nop				
	nop
; //_A30BB6F62_1454:;				
_A30BB6F62_1454:
; //	asm	nop				
	nop
; //_A30BB6F62_1455:;				
_A30BB6F62_1455:
; //	asm	nop				
	nop
; //_A30BB6F62_1456:;				
_A30BB6F62_1456:
; //	asm	nop				
	nop
; //_A30BB6F62_1457:;				
_A30BB6F62_1457:
; //	asm	nop				
	nop
; //_A30BB6F62_1458:;				
_A30BB6F62_1458:
; //	asm	nop				
	nop
; //_A30BB6F62_1459:;				
_A30BB6F62_1459:
; //	asm	nop				
	nop
; //_A30BB6F62_1460:;				
_A30BB6F62_1460:
; //	asm	nop				
	nop
; //_A30BB6F62_1461:;				
_A30BB6F62_1461:
; //	asm	nop				
	nop
; //_A30BB6F62_1462:;				
_A30BB6F62_1462:
; //	asm	nop				
	nop
; //_A30BB6F62_1463:;				
_A30BB6F62_1463:
; //	asm	nop				
	nop
; //_A30BB6F62_1464:;				
_A30BB6F62_1464:
; //	asm	nop				
	nop
; //_A30BB6F62_1465:;				
_A30BB6F62_1465:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1466:;				
_A30BB6F62_1466:
; //	asm	nop				
	nop
; //_A30BB6F62_1467:;				
_A30BB6F62_1467:
; //	asm	nop				
	nop
; //_A30BB6F62_1468:;				
_A30BB6F62_1468:
; //	asm	nop				
	nop
; //_A30BB6F62_1469:;				
_A30BB6F62_1469:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1470:;				
_A30BB6F62_1470:
; //	asm	nop				
	nop
; //_A30BB6F62_1471:;				
_A30BB6F62_1471:
; //	asm	nop				
	nop
; //_A30BB6F62_1472:;				
_A30BB6F62_1472:
; //	asm	nop				
	nop
; //_A30BB6F62_1473:;				
_A30BB6F62_1473:
; //	asm	nop				
	nop
; //_A30BB6F62_1474:;				
_A30BB6F62_1474:
; //	asm	nop				
	nop
; //_A30BB6F62_1475:;				
_A30BB6F62_1475:
; //	asm	nop				
	nop
; //_A30BB6F62_1476:;				
_A30BB6F62_1476:
; //	asm	nop				
	nop
; //_A30BB6F62_1477:;				
_A30BB6F62_1477:
; //	asm	nop				
	nop
; //_A30BB6F62_1478:;				
_A30BB6F62_1478:
; //	asm	nop				
	nop
; //_A30BB6F62_1479:;				
_A30BB6F62_1479:
; //	asm	nop				
	nop
; //_A30BB6F62_1480:;				
_A30BB6F62_1480:
; //	asm	nop				
	nop
; //_A30BB6F62_1481:;				
_A30BB6F62_1481:
; //	asm	nop				
	nop
; //_A30BB6F62_1482:;				
_A30BB6F62_1482:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1483:;				
_A30BB6F62_1483:
; //	asm	nop				
	nop
; //_A30BB6F62_1484:;				
_A30BB6F62_1484:
; //	asm	nop				
	nop
; //_A30BB6F62_1485:;				
_A30BB6F62_1485:
; //	asm	nop				
	nop
; //_A30BB6F62_1486:;				
_A30BB6F62_1486:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1487:;				
_A30BB6F62_1487:
; //	asm	nop				
	nop
; //_A30BB6F62_1488:;				
_A30BB6F62_1488:
; //	asm	nop				
	nop
; //_A30BB6F62_1489:;				
_A30BB6F62_1489:
; //	asm	nop				
	nop
; //_A30BB6F62_1490:;				
_A30BB6F62_1490:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1491:;				
_A30BB6F62_1491:
; //	asm	nop				
	nop
; //_A30BB6F62_1492:;				
_A30BB6F62_1492:
; //	asm	nop				
	nop
; //_A30BB6F62_1493:;				
_A30BB6F62_1493:
; //	asm	nop				
	nop
; //_A30BB6F62_1494:;				
_A30BB6F62_1494:
; //	asm	nop				
	nop
; //_A30BB6F62_1495:;				
_A30BB6F62_1495:
; //	asm	nop				
	nop
; //_A30BB6F62_1496:;				
_A30BB6F62_1496:
; //	asm	nop				
	nop
; //_A30BB6F62_1497:;				
_A30BB6F62_1497:
; //	asm	nop				
	nop
; //_A30BB6F62_1498:;				
_A30BB6F62_1498:
; //	asm	nop				
	nop
; //_A30BB6F62_1499:;				
_A30BB6F62_1499:
; //	asm	nop				
	nop
; //_A30BB6F62_1500:;				
_A30BB6F62_1500:
; //	asm	nop				
	nop
; //_A30BB6F62_1501:;				
_A30BB6F62_1501:
; //	asm	nop				
	nop
; //_A30BB6F62_1502:;				
_A30BB6F62_1502:
; //	asm	nop				
	nop
; //_A30BB6F62_1503:;				
_A30BB6F62_1503:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1504:;				
_A30BB6F62_1504:
; //	asm	nop				
	nop
; //_A30BB6F62_1505:;				
_A30BB6F62_1505:
; //	asm	nop				
	nop
; //_A30BB6F62_1506:;				
_A30BB6F62_1506:
; //	asm	nop				
	nop
; //_A30BB6F62_1507:;				
_A30BB6F62_1507:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1508:;				
_A30BB6F62_1508:
; //	asm	nop				
	nop
; //_A30BB6F62_1509:;				
_A30BB6F62_1509:
; //	asm	nop				
	nop
; //_A30BB6F62_1510:;				
_A30BB6F62_1510:
; //	asm	nop				
	nop
; //_A30BB6F62_1511:;				
_A30BB6F62_1511:
; //	asm	nop				
	nop
; //_A30BB6F62_1512:;				
_A30BB6F62_1512:
; //	asm	nop				
	nop
; //_A30BB6F62_1513:;				
_A30BB6F62_1513:
; //	asm	nop				
	nop
; //_A30BB6F62_1514:;				
_A30BB6F62_1514:
; //	asm	nop				
	nop
; //_A30BB6F62_1515:;				
_A30BB6F62_1515:
; //	asm	nop				
	nop
; //_A30BB6F62_1516:;				
_A30BB6F62_1516:
; //	asm	nop				
	nop
; //_A30BB6F62_1517:;				
_A30BB6F62_1517:
; //	asm	nop				
	nop
; //_A30BB6F62_1518:;				
_A30BB6F62_1518:
; //	asm	nop				
	nop
; //_A30BB6F62_1519:;				
_A30BB6F62_1519:
; //	asm	nop				
	nop
; //_A30BB6F62_1520:;				
_A30BB6F62_1520:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1521:;				
_A30BB6F62_1521:
; //	asm	nop				
	nop
; //_A30BB6F62_1522:;				
_A30BB6F62_1522:
; //	asm	nop				
	nop
; //_A30BB6F62_1523:;				
_A30BB6F62_1523:
; //	asm	nop				
	nop
; //_A30BB6F62_1524:;				
_A30BB6F62_1524:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1525:;				
_A30BB6F62_1525:
; //	asm	nop				
	nop
; //_A30BB6F62_1526:;				
_A30BB6F62_1526:
; //	asm	nop				
	nop
; //_A30BB6F62_1527:;				
_A30BB6F62_1527:
; //	asm	nop				
	nop
; //_A30BB6F62_1528:;				
_A30BB6F62_1528:
; //	asm	nop				
	nop
; //_A30BB6F62_1529:;				
_A30BB6F62_1529:
; //	asm	nop				
	nop
; //_A30BB6F62_1530:;				
_A30BB6F62_1530:
; //	asm	nop				
	nop
; //_A30BB6F62_1531:;				
_A30BB6F62_1531:
; //	asm	nop				
	nop
; //_A30BB6F62_1532:;				
_A30BB6F62_1532:
; //	asm	nop				
	nop
; //_A30BB6F62_1533:;				
_A30BB6F62_1533:
; //	asm	nop				
	nop
; //_A30BB6F62_1534:;				
_A30BB6F62_1534:
; //	asm	nop				
	nop
; //_A30BB6F62_1535:;				
_A30BB6F62_1535:
; //	asm	nop				
	nop
; //_A30BB6F62_1536:;				
_A30BB6F62_1536:
; //	asm	nop				
	nop
; //_A30BB6F62_1537:;				
_A30BB6F62_1537:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1538:;				
_A30BB6F62_1538:
; //	asm	nop				
	nop
; //_A30BB6F62_1539:;				
_A30BB6F62_1539:
; //	asm	nop				
	nop
; //_A30BB6F62_1540:;				
_A30BB6F62_1540:
; //	asm	nop				
	nop
; //_A30BB6F62_1541:;				
_A30BB6F62_1541:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1542:;				
_A30BB6F62_1542:
; //	asm	nop				
	nop
; //_A30BB6F62_1543:;				
_A30BB6F62_1543:
; //	asm	nop				
	nop
; //_A30BB6F62_1544:;				
_A30BB6F62_1544:
; //	asm	nop				
	nop
; //_A30BB6F62_1545:;				
_A30BB6F62_1545:
; //	asm	nop				
	nop
; //_A30BB6F62_1546:;				
_A30BB6F62_1546:
; //	asm	nop				
	nop
; //_A30BB6F62_1547:;				
_A30BB6F62_1547:
; //	asm	nop				
	nop
; //_A30BB6F62_1548:;				
_A30BB6F62_1548:
; //	asm	nop				
	nop
; //_A30BB6F62_1549:;				
_A30BB6F62_1549:
; //	asm	nop				
	nop
; //_A30BB6F62_1550:;				
_A30BB6F62_1550:
; //	asm	nop				
	nop
; //_A30BB6F62_1551:;				
_A30BB6F62_1551:
; //	asm	nop				
	nop
; //_A30BB6F62_1552:;				
_A30BB6F62_1552:
; //	asm	nop				
	nop
; //_A30BB6F62_1553:;				
_A30BB6F62_1553:
; //	asm	nop				
	nop
; //_A30BB6F62_1554:;				
_A30BB6F62_1554:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1555:;				
_A30BB6F62_1555:
; //	asm	nop				
	nop
; //_A30BB6F62_1556:;				
_A30BB6F62_1556:
; //	asm	nop				
	nop
; //_A30BB6F62_1557:;				
_A30BB6F62_1557:
; //	asm	nop				
	nop
; //_A30BB6F62_1558:;				
_A30BB6F62_1558:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1559:;				
_A30BB6F62_1559:
; //	asm	nop				
	nop
; //_A30BB6F62_1560:;				
_A30BB6F62_1560:
; //	asm	nop				
	nop
; //_A30BB6F62_1561:;				
_A30BB6F62_1561:
; //	asm	nop				
	nop
; //_A30BB6F62_1562:;				
_A30BB6F62_1562:
; //	asm	nop				
	nop
; //_A30BB6F62_1563:;				
_A30BB6F62_1563:
; //	asm	nop				
	nop
; //_A30BB6F62_1564:;				
_A30BB6F62_1564:
; //	asm	nop				
	nop
; //_A30BB6F62_1565:;				
_A30BB6F62_1565:
; //	asm	nop				
	nop
; //_A30BB6F62_1566:;				
_A30BB6F62_1566:
; //	asm	nop				
	nop
; //_A30BB6F62_1567:;				
_A30BB6F62_1567:
; //	asm	nop				
	nop
; //_A30BB6F62_1568:;				
_A30BB6F62_1568:
; //	asm	nop				
	nop
; //_A30BB6F62_1569:;				
_A30BB6F62_1569:
; //	asm	nop				
	nop
; //_A30BB6F62_1570:;				
_A30BB6F62_1570:
; //	asm	nop				
	nop
; //_A30BB6F62_1571:;				
_A30BB6F62_1571:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1572:;				
_A30BB6F62_1572:
; //	asm	nop				
	nop
; //_A30BB6F62_1573:;				
_A30BB6F62_1573:
; //	asm	nop				
	nop
; //_A30BB6F62_1574:;				
_A30BB6F62_1574:
; //	asm	nop				
	nop
; //_A30BB6F62_1575:;				
_A30BB6F62_1575:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1576:;				
_A30BB6F62_1576:
; //	asm	nop				
	nop
; //_A30BB6F62_1577:;				
_A30BB6F62_1577:
; //	asm	nop				
	nop
; //_A30BB6F62_1578:;				
_A30BB6F62_1578:
; //	asm	nop				
	nop
; //_A30BB6F62_1579:;				
_A30BB6F62_1579:
; //	asm	nop				
	nop
; //_A30BB6F62_1580:;				
_A30BB6F62_1580:
; //	asm	nop				
	nop
; //_A30BB6F62_1581:;				
_A30BB6F62_1581:
; //	asm	nop				
	nop
; //_A30BB6F62_1582:;				
_A30BB6F62_1582:
; //	asm	nop				
	nop
; //_A30BB6F62_1583:;				
_A30BB6F62_1583:
; //	asm	nop				
	nop
; //_A30BB6F62_1584:;				
_A30BB6F62_1584:
; //	asm	nop				
	nop
; //_A30BB6F62_1585:;				
_A30BB6F62_1585:
; //	asm	nop				
	nop
; //_A30BB6F62_1586:;				
_A30BB6F62_1586:
; //	asm	nop				
	nop
; //_A30BB6F62_1587:;				
_A30BB6F62_1587:
; //	asm	nop				
	nop
; //_A30BB6F62_1588:;				
_A30BB6F62_1588:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1589:;				
_A30BB6F62_1589:
; //	asm	nop				
	nop
; //_A30BB6F62_1590:;				
_A30BB6F62_1590:
; //	asm	nop				
	nop
; //_A30BB6F62_1591:;				
_A30BB6F62_1591:
; //	asm	nop				
	nop
; //_A30BB6F62_1592:;				
_A30BB6F62_1592:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1593:;				
_A30BB6F62_1593:
; //	asm	nop				
	nop
; //_A30BB6F62_1594:;				
_A30BB6F62_1594:
; //	asm	nop				
	nop
; //_A30BB6F62_1595:;				
_A30BB6F62_1595:
; //	asm	nop				
	nop
; //_A30BB6F62_1596:;				
_A30BB6F62_1596:
; //	asm	nop				
	nop
; //_A30BB6F62_1597:;				
_A30BB6F62_1597:
; //	asm	nop				
	nop
; //_A30BB6F62_1598:;				
_A30BB6F62_1598:
; //	asm	nop				
	nop
; //_A30BB6F62_1599:;				
_A30BB6F62_1599:
; //	asm	nop				
	nop
; //_A30BB6F62_1600:;				
_A30BB6F62_1600:
; //	asm	nop				
	nop
; //_A30BB6F62_1601:;				
_A30BB6F62_1601:
; //	asm	nop				
	nop
; //_A30BB6F62_1602:;				
_A30BB6F62_1602:
; //	asm	nop				
	nop
; //_A30BB6F62_1603:;				
_A30BB6F62_1603:
; //	asm	nop				
	nop
; //_A30BB6F62_1604:;				
_A30BB6F62_1604:
; //	asm	nop				
	nop
; //_A30BB6F62_1605:;				
_A30BB6F62_1605:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1606:;				
_A30BB6F62_1606:
; //	asm	nop				
	nop
; //_A30BB6F62_1607:;				
_A30BB6F62_1607:
; //	asm	nop				
	nop
; //_A30BB6F62_1608:;				
_A30BB6F62_1608:
; //	asm	nop				
	nop
; //_A30BB6F62_1609:;				
_A30BB6F62_1609:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1610:;				
_A30BB6F62_1610:
; //	asm	nop				
	nop
; //_A30BB6F62_1611:;				
_A30BB6F62_1611:
; //	asm	nop				
	nop
; //_A30BB6F62_1612:;				
_A30BB6F62_1612:
; //	asm	nop				
	nop
; //_A30BB6F62_1613:;				
_A30BB6F62_1613:
; //	asm	nop				
	nop
; //_A30BB6F62_1614:;				
_A30BB6F62_1614:
; //	asm	nop				
	nop
; //_A30BB6F62_1615:;				
_A30BB6F62_1615:
; //	asm	nop				
	nop
; //_A30BB6F62_1616:;				
_A30BB6F62_1616:
; //	asm	nop				
	nop
; //_A30BB6F62_1617:;				
_A30BB6F62_1617:
; //	asm	nop				
	nop
; //_A30BB6F62_1618:;				
_A30BB6F62_1618:
; //	asm	nop				
	nop
; //_A30BB6F62_1619:;				
_A30BB6F62_1619:
; //	asm	nop				
	nop
; //_A30BB6F62_1620:;				
_A30BB6F62_1620:
; //	asm	nop				
	nop
; //_A30BB6F62_1621:;				
_A30BB6F62_1621:
; //	asm	nop				
	nop
; //_A30BB6F62_1622:;				
_A30BB6F62_1622:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1623:;				
_A30BB6F62_1623:
; //	asm	nop				
	nop
; //_A30BB6F62_1624:;				
_A30BB6F62_1624:
; //	asm	nop				
	nop
; //_A30BB6F62_1625:;				
_A30BB6F62_1625:
; //	asm	nop				
	nop
; //_A30BB6F62_1626:;				
_A30BB6F62_1626:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1627:;				
_A30BB6F62_1627:
; //	asm	nop				
	nop
; //_A30BB6F62_1628:;				
_A30BB6F62_1628:
; //	asm	nop				
	nop
; //_A30BB6F62_1629:;				
_A30BB6F62_1629:
; //	asm	nop				
	nop
; //_A30BB6F62_1630:;				
_A30BB6F62_1630:
; //	asm	nop				
	nop
; //_A30BB6F62_1631:;				
_A30BB6F62_1631:
; //	asm	nop				
	nop
; //_A30BB6F62_1632:;				
_A30BB6F62_1632:
; //	asm	nop				
	nop
; //_A30BB6F62_1633:;				
_A30BB6F62_1633:
; //	asm	nop				
	nop
; //_A30BB6F62_1634:;				
_A30BB6F62_1634:
; //	asm	nop				
	nop
; //_A30BB6F62_1635:;				
_A30BB6F62_1635:
; //	asm	nop				
	nop
; //_A30BB6F62_1636:;				
_A30BB6F62_1636:
; //	asm	nop				
	nop
; //_A30BB6F62_1637:;				
_A30BB6F62_1637:
; //	asm	nop				
	nop
; //_A30BB6F62_1638:;				
_A30BB6F62_1638:
; //	asm	nop				
	nop
; //_A30BB6F62_1639:;				
_A30BB6F62_1639:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1640:;				
_A30BB6F62_1640:
; //	asm	nop				
	nop
; //_A30BB6F62_1641:;				
_A30BB6F62_1641:
; //	asm	nop				
	nop
; //_A30BB6F62_1642:;				
_A30BB6F62_1642:
; //	asm	nop				
	nop
; //_A30BB6F62_1643:;				
_A30BB6F62_1643:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1644:;				
_A30BB6F62_1644:
; //	asm	nop				
	nop
; //_A30BB6F62_1645:;				
_A30BB6F62_1645:
; //	asm	nop				
	nop
; //_A30BB6F62_1646:;				
_A30BB6F62_1646:
; //	asm	nop				
	nop
; //_A30BB6F62_1647:;				
_A30BB6F62_1647:
; //	asm	nop				
	nop
; //_A30BB6F62_1648:;				
_A30BB6F62_1648:
; //	asm	nop				
	nop
; //_A30BB6F62_1649:;				
_A30BB6F62_1649:
; //	asm	nop				
	nop
; //_A30BB6F62_1650:;				
_A30BB6F62_1650:
; //	asm	nop				
	nop
; //_A30BB6F62_1651:;				
_A30BB6F62_1651:
; //	asm	nop				
	nop
; //_A30BB6F62_1652:;				
_A30BB6F62_1652:
; //	asm	nop				
	nop
; //_A30BB6F62_1653:;				
_A30BB6F62_1653:
; //	asm	nop				
	nop
; //_A30BB6F62_1654:;				
_A30BB6F62_1654:
; //	asm	nop				
	nop
; //_A30BB6F62_1655:;				
_A30BB6F62_1655:
; //	asm	nop				
	nop
; //_A30BB6F62_1656:;				
_A30BB6F62_1656:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1657:;				
_A30BB6F62_1657:
; //	asm	nop				
	nop
; //_A30BB6F62_1658:;				
_A30BB6F62_1658:
; //	asm	nop				
	nop
; //_A30BB6F62_1659:;				
_A30BB6F62_1659:
; //	asm	nop				
	nop
; //_A30BB6F62_1660:;				
_A30BB6F62_1660:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1661:;				
_A30BB6F62_1661:
; //	asm	nop				
	nop
; //_A30BB6F62_1662:;				
_A30BB6F62_1662:
; //	asm	nop				
	nop
; //_A30BB6F62_1663:;				
_A30BB6F62_1663:
; //	asm	nop				
	nop
; //_A30BB6F62_1664:;				
_A30BB6F62_1664:
; //	asm	nop				
	nop
; //_A30BB6F62_1665:;				
_A30BB6F62_1665:
; //	asm	nop				
	nop
; //_A30BB6F62_1666:;				
_A30BB6F62_1666:
; //	asm	nop				
	nop
; //_A30BB6F62_1667:;				
_A30BB6F62_1667:
; //	asm	nop				
	nop
; //_A30BB6F62_1668:;				
_A30BB6F62_1668:
; //	asm	nop				
	nop
; //_A30BB6F62_1669:;				
_A30BB6F62_1669:
; //	asm	nop				
	nop
; //_A30BB6F62_1670:;				
_A30BB6F62_1670:
; //	asm	nop				
	nop
; //_A30BB6F62_1671:;				
_A30BB6F62_1671:
; //	asm	nop				
	nop
; //_A30BB6F62_1672:;				
_A30BB6F62_1672:
; //	asm	nop				
	nop
; //_A30BB6F62_1673:;				
_A30BB6F62_1673:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1674:;				
_A30BB6F62_1674:
; //	asm	nop				
	nop
; //_A30BB6F62_1675:;				
_A30BB6F62_1675:
; //	asm	nop				
	nop
; //_A30BB6F62_1676:;				
_A30BB6F62_1676:
; //	asm	nop				
	nop
; //_A30BB6F62_1677:;				
_A30BB6F62_1677:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1678:;				
_A30BB6F62_1678:
; //	asm	nop				
	nop
; //_A30BB6F62_1679:;				
_A30BB6F62_1679:
; //	asm	nop				
	nop
; //_A30BB6F62_1680:;				
_A30BB6F62_1680:
; //	asm	nop				
	nop
; //_A30BB6F62_1681:;				
_A30BB6F62_1681:
; //	asm	nop				
	nop
; //_A30BB6F62_1682:;				
_A30BB6F62_1682:
; //	asm	nop				
	nop
; //_A30BB6F62_1683:;				
_A30BB6F62_1683:
; //	asm	nop				
	nop
; //_A30BB6F62_1684:;				
_A30BB6F62_1684:
; //	asm	nop				
	nop
; //_A30BB6F62_1685:;				
_A30BB6F62_1685:
; //	asm	nop				
	nop
; //_A30BB6F62_1686:;				
_A30BB6F62_1686:
; //	asm	nop				
	nop
; //_A30BB6F62_1687:;				
_A30BB6F62_1687:
; //	asm	nop				
	nop
; //_A30BB6F62_1688:;				
_A30BB6F62_1688:
; //	asm	nop				
	nop
; //_A30BB6F62_1689:;				
_A30BB6F62_1689:
; //	asm	nop				
	nop
; //_A30BB6F62_1690:;				
_A30BB6F62_1690:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1691:;				
_A30BB6F62_1691:
; //	asm	nop				
	nop
; //_A30BB6F62_1692:;				
_A30BB6F62_1692:
; //	asm	nop				
	nop
; //_A30BB6F62_1693:;				
_A30BB6F62_1693:
; //	asm	nop				
	nop
; //_A30BB6F62_1694:;				
_A30BB6F62_1694:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1695:;				
_A30BB6F62_1695:
; //	asm	nop				
	nop
; //_A30BB6F62_1696:;				
_A30BB6F62_1696:
; //	asm	nop				
	nop
; //_A30BB6F62_1697:;				
_A30BB6F62_1697:
; //	asm	nop				
	nop
; //_A30BB6F62_1698:;				
_A30BB6F62_1698:
; //	asm	nop				
	nop
; //_A30BB6F62_1699:;				
_A30BB6F62_1699:
; //	asm	nop				
	nop
; //_A30BB6F62_1700:;				
_A30BB6F62_1700:
; //	asm	nop				
	nop
; //_A30BB6F62_1701:;				
_A30BB6F62_1701:
; //	asm	nop				
	nop
; //_A30BB6F62_1702:;				
_A30BB6F62_1702:
; //	asm	nop				
	nop
; //_A30BB6F62_1703:;				
_A30BB6F62_1703:
; //	asm	nop				
	nop
; //_A30BB6F62_1704:;				
_A30BB6F62_1704:
; //	asm	nop				
	nop
; //_A30BB6F62_1705:;				
_A30BB6F62_1705:
; //	asm	nop				
	nop
; //_A30BB6F62_1706:;				
_A30BB6F62_1706:
; //	asm	nop				
	nop
; //_A30BB6F62_1707:;				
_A30BB6F62_1707:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1708:;				
_A30BB6F62_1708:
; //	asm	nop				
	nop
; //_A30BB6F62_1709:;				
_A30BB6F62_1709:
; //	asm	nop				
	nop
; //_A30BB6F62_1710:;				
_A30BB6F62_1710:
; //	asm	nop				
	nop
; //_A30BB6F62_1711:;				
_A30BB6F62_1711:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1712:;				
_A30BB6F62_1712:
; //	asm	nop				
	nop
; //_A30BB6F62_1713:;				
_A30BB6F62_1713:
; //	asm	nop				
	nop
; //_A30BB6F62_1714:;				
_A30BB6F62_1714:
; //	asm	nop				
	nop
; //_A30BB6F62_1715:;				
_A30BB6F62_1715:
; //	asm	nop				
	nop
; //_A30BB6F62_1716:;				
_A30BB6F62_1716:
; //	asm	nop				
	nop
; //_A30BB6F62_1717:;				
_A30BB6F62_1717:
; //	asm	nop				
	nop
; //_A30BB6F62_1718:;				
_A30BB6F62_1718:
; //	asm	nop				
	nop
; //_A30BB6F62_1719:;				
_A30BB6F62_1719:
; //	asm	nop				
	nop
; //_A30BB6F62_1720:;				
_A30BB6F62_1720:
; //	asm	nop				
	nop
; //_A30BB6F62_1721:;				
_A30BB6F62_1721:
; //	asm	nop				
	nop
; //_A30BB6F62_1722:;				
_A30BB6F62_1722:
; //	asm	nop				
	nop
; //_A30BB6F62_1723:;				
_A30BB6F62_1723:
; //	asm	nop				
	nop
; //_A30BB6F62_1724:;				
_A30BB6F62_1724:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1725:;				
_A30BB6F62_1725:
; //	asm	nop				
	nop
; //_A30BB6F62_1726:;				
_A30BB6F62_1726:
; //	asm	nop				
	nop
; //_A30BB6F62_1727:;				
_A30BB6F62_1727:
; //	asm	nop				
	nop
; //_A30BB6F62_1728:;				
_A30BB6F62_1728:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1729:;				
_A30BB6F62_1729:
; //	asm	nop				
	nop
; //_A30BB6F62_1730:;				
_A30BB6F62_1730:
; //	asm	nop				
	nop
; //_A30BB6F62_1731:;				
_A30BB6F62_1731:
; //	asm	nop				
	nop
; //_A30BB6F62_1732:;				
_A30BB6F62_1732:
; //	asm	nop				
	nop
; //_A30BB6F62_1733:;				
_A30BB6F62_1733:
; //	asm	nop				
	nop
; //_A30BB6F62_1734:;				
_A30BB6F62_1734:
; //	asm	nop				
	nop
; //_A30BB6F62_1735:;				
_A30BB6F62_1735:
; //	asm	nop				
	nop
; //_A30BB6F62_1736:;				
_A30BB6F62_1736:
; //	asm	nop				
	nop
; //_A30BB6F62_1737:;				
_A30BB6F62_1737:
; //	asm	nop				
	nop
; //_A30BB6F62_1738:;				
_A30BB6F62_1738:
; //	asm	nop				
	nop
; //_A30BB6F62_1739:;				
_A30BB6F62_1739:
; //	asm	nop				
	nop
; //_A30BB6F62_1740:;				
_A30BB6F62_1740:
; //	asm	nop				
	nop
; //_A30BB6F62_1741:;				
_A30BB6F62_1741:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1742:;				
_A30BB6F62_1742:
; //	asm	nop				
	nop
; //_A30BB6F62_1743:;				
_A30BB6F62_1743:
; //	asm	nop				
	nop
; //_A30BB6F62_1744:;				
_A30BB6F62_1744:
; //	asm	nop				
	nop
; //_A30BB6F62_1745:;				
_A30BB6F62_1745:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1746:;				
_A30BB6F62_1746:
; //	asm	nop				
	nop
; //_A30BB6F62_1747:;				
_A30BB6F62_1747:
; //	asm	nop				
	nop
; //_A30BB6F62_1748:;				
_A30BB6F62_1748:
; //	asm	nop				
	nop
; //_A30BB6F62_1749:;				
_A30BB6F62_1749:
; //	asm	nop				
	nop
; //_A30BB6F62_1750:;				
_A30BB6F62_1750:
; //	asm	nop				
	nop
; //_A30BB6F62_1751:;				
_A30BB6F62_1751:
; //	asm	nop				
	nop
; //_A30BB6F62_1752:;				
_A30BB6F62_1752:
; //	asm	nop				
	nop
; //_A30BB6F62_1753:;				
_A30BB6F62_1753:
; //	asm	nop				
	nop
; //_A30BB6F62_1754:;				
_A30BB6F62_1754:
; //	asm	nop				
	nop
; //_A30BB6F62_1755:;				
_A30BB6F62_1755:
; //	asm	nop				
	nop
; //_A30BB6F62_1756:;				
_A30BB6F62_1756:
; //	asm	nop				
	nop
; //_A30BB6F62_1757:;				
_A30BB6F62_1757:
; //	asm	nop				
	nop
; //_A30BB6F62_1758:;				
_A30BB6F62_1758:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_56:;					
LD63FD439_56:
; //_A30BB6F62_1759:;				
_A30BB6F62_1759:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1760:;				
_A30BB6F62_1760:
; //	asm	nop				
	nop
; //_A30BB6F62_1761:;				
_A30BB6F62_1761:
; //	asm	nop				
	nop
; //_A30BB6F62_1762:;				
_A30BB6F62_1762:
; //	asm	nop				
	nop
; //_A30BB6F62_1763:;				
_A30BB6F62_1763:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1764:;				
_A30BB6F62_1764:
; //	asm	nop				
	nop
; //_A30BB6F62_1765:;				
_A30BB6F62_1765:
; //	asm	nop				
	nop
; //_A30BB6F62_1766:;				
_A30BB6F62_1766:
; //	asm	nop				
	nop
; //_A30BB6F62_1767:;				
_A30BB6F62_1767:
; //	asm	nop				
	nop
; //_A30BB6F62_1768:;				
_A30BB6F62_1768:
; //	asm	nop				
	nop
; //_A30BB6F62_1769:;				
_A30BB6F62_1769:
; //	asm	nop				
	nop
; //_A30BB6F62_1770:;				
_A30BB6F62_1770:
; //	asm	nop				
	nop
; //_A30BB6F62_1771:;				
_A30BB6F62_1771:
; //	asm	nop				
	nop
; //_A30BB6F62_1772:;				
_A30BB6F62_1772:
; //	asm	nop				
	nop
; //_A30BB6F62_1773:;				
_A30BB6F62_1773:
; //	asm	nop				
	nop
; //_A30BB6F62_1774:;				
_A30BB6F62_1774:
; //	asm	nop				
	nop
; //_A30BB6F62_1775:;				
_A30BB6F62_1775:
; //	asm	nop				
	nop
; //_A30BB6F62_1776:;				
_A30BB6F62_1776:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1777:;				
_A30BB6F62_1777:
; //	asm	nop				
	nop
; //_A30BB6F62_1778:;				
_A30BB6F62_1778:
; //	asm	nop				
	nop
; //_A30BB6F62_1779:;				
_A30BB6F62_1779:
; //	asm	nop				
	nop
; //_A30BB6F62_1780:;				
_A30BB6F62_1780:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1781:;				
_A30BB6F62_1781:
; //	asm	nop				
	nop
; //_A30BB6F62_1782:;				
_A30BB6F62_1782:
; //	asm	nop				
	nop
; //_A30BB6F62_1783:;				
_A30BB6F62_1783:
; //	asm	nop				
	nop
; //_A30BB6F62_1784:;				
_A30BB6F62_1784:
; //	asm	nop				
	nop
; //_A30BB6F62_1785:;				
_A30BB6F62_1785:
; //	asm	nop				
	nop
; //_A30BB6F62_1786:;				
_A30BB6F62_1786:
; //	asm	nop				
	nop
; //_A30BB6F62_1787:;				
_A30BB6F62_1787:
; //	asm	nop				
	nop
; //_A30BB6F62_1788:;				
_A30BB6F62_1788:
; //	asm	nop				
	nop
; //_A30BB6F62_1789:;				
_A30BB6F62_1789:
; //	asm	nop				
	nop
; //_A30BB6F62_1790:;				
_A30BB6F62_1790:
; //	asm	nop				
	nop
; //_A30BB6F62_1791:;				
_A30BB6F62_1791:
; //	asm	nop				
	nop
; //_A30BB6F62_1792:;				
_A30BB6F62_1792:
; //	asm	nop				
	nop
; //_A30BB6F62_1793:;				
_A30BB6F62_1793:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1794:;				
_A30BB6F62_1794:
; //	asm	nop				
	nop
; //_A30BB6F62_1795:;				
_A30BB6F62_1795:
; //	asm	nop				
	nop
; //_A30BB6F62_1796:;				
_A30BB6F62_1796:
; //	asm	nop				
	nop
; //_A30BB6F62_1797:;				
_A30BB6F62_1797:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1798:;				
_A30BB6F62_1798:
; //	asm	nop				
	nop
; //_A30BB6F62_1799:;				
_A30BB6F62_1799:
; //	asm	nop				
	nop
; //_A30BB6F62_1800:;				
_A30BB6F62_1800:
; //	asm	nop				
	nop
; //_A30BB6F62_1801:;				
_A30BB6F62_1801:
; //	asm	nop				
	nop
; //_A30BB6F62_1802:;				
_A30BB6F62_1802:
; //	asm	nop				
	nop
; //_A30BB6F62_1803:;				
_A30BB6F62_1803:
; //	asm	nop				
	nop
; //_A30BB6F62_1804:;				
_A30BB6F62_1804:
; //	asm	nop				
	nop
; //_A30BB6F62_1805:;				
_A30BB6F62_1805:
; //	asm	nop				
	nop
; //_A30BB6F62_1806:;				
_A30BB6F62_1806:
; //	asm	nop				
	nop
; //_A30BB6F62_1807:;				
_A30BB6F62_1807:
; //	asm	nop				
	nop
; //_A30BB6F62_1808:;				
_A30BB6F62_1808:
; //	asm	nop				
	nop
; //_A30BB6F62_1809:;				
_A30BB6F62_1809:
; //	asm	nop				
	nop
; //_A30BB6F62_1810:;				
_A30BB6F62_1810:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1811:;				
_A30BB6F62_1811:
; //	asm	nop				
	nop
; //_A30BB6F62_1812:;				
_A30BB6F62_1812:
; //	asm	nop				
	nop
; //_A30BB6F62_1813:;				
_A30BB6F62_1813:
; //	asm	nop				
	nop
; //_A30BB6F62_1814:;				
_A30BB6F62_1814:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1815:;				
_A30BB6F62_1815:
; //	asm	nop				
	nop
; //_A30BB6F62_1816:;				
_A30BB6F62_1816:
; //	asm	nop				
	nop
; //_A30BB6F62_1817:;				
_A30BB6F62_1817:
; //	asm	nop				
	nop
; //_A30BB6F62_1818:;				
_A30BB6F62_1818:
; //	asm	nop				
	nop
; //_A30BB6F62_1819:;				
_A30BB6F62_1819:
; //	asm	nop				
	nop
; //_A30BB6F62_1820:;				
_A30BB6F62_1820:
; //	asm	nop				
	nop
; //_A30BB6F62_1821:;				
_A30BB6F62_1821:
; //	asm	nop				
	nop
; //_A30BB6F62_1822:;				
_A30BB6F62_1822:
; //	asm	nop				
	nop
; //_A30BB6F62_1823:;				
_A30BB6F62_1823:
; //	asm	nop				
	nop
; //_A30BB6F62_1824:;				
_A30BB6F62_1824:
; //	asm	nop				
	nop
; //_A30BB6F62_1825:;				
_A30BB6F62_1825:
; //	asm	nop				
	nop
; //_A30BB6F62_1826:;				
_A30BB6F62_1826:
; //	asm	nop				
	nop
; //_A30BB6F62_1827:;				
_A30BB6F62_1827:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1828:;				
_A30BB6F62_1828:
; //	asm	nop				
	nop
; //_A30BB6F62_1829:;				
_A30BB6F62_1829:
; //	asm	nop				
	nop
; //_A30BB6F62_1830:;				
_A30BB6F62_1830:
; //	asm	nop				
	nop
; //_A30BB6F62_1831:;				
_A30BB6F62_1831:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1832:;				
_A30BB6F62_1832:
; //	asm	nop				
	nop
; //_A30BB6F62_1833:;				
_A30BB6F62_1833:
; //	asm	nop				
	nop
; //_A30BB6F62_1834:;				
_A30BB6F62_1834:
; //	asm	nop				
	nop
; //_A30BB6F62_1835:;				
_A30BB6F62_1835:
; //	asm	nop				
	nop
; //_A30BB6F62_1836:;				
_A30BB6F62_1836:
; //	asm	nop				
	nop
; //_A30BB6F62_1837:;				
_A30BB6F62_1837:
; //	asm	nop				
	nop
; //_A30BB6F62_1838:;				
_A30BB6F62_1838:
; //	asm	nop				
	nop
; //_A30BB6F62_1839:;				
_A30BB6F62_1839:
; //	asm	nop				
	nop
; //_A30BB6F62_1840:;				
_A30BB6F62_1840:
; //	asm	nop				
	nop
; //_A30BB6F62_1841:;				
_A30BB6F62_1841:
; //	asm	nop				
	nop
; //_A30BB6F62_1842:;				
_A30BB6F62_1842:
; //	asm	nop				
	nop
; //_A30BB6F62_1843:;				
_A30BB6F62_1843:
; //	asm	nop				
	nop
; //_A30BB6F62_1844:;				
_A30BB6F62_1844:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1845:;				
_A30BB6F62_1845:
; //	asm	nop				
	nop
; //_A30BB6F62_1846:;				
_A30BB6F62_1846:
; //	asm	nop				
	nop
; //_A30BB6F62_1847:;				
_A30BB6F62_1847:
; //	asm	nop				
	nop
; //_A30BB6F62_1848:;				
_A30BB6F62_1848:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1849:;				
_A30BB6F62_1849:
; //	asm	nop				
	nop
; //_A30BB6F62_1850:;				
_A30BB6F62_1850:
; //	asm	nop				
	nop
; //_A30BB6F62_1851:;				
_A30BB6F62_1851:
; //	asm	nop				
	nop
; //_A30BB6F62_1852:;				
_A30BB6F62_1852:
; //	asm	nop				
	nop
; //_A30BB6F62_1853:;				
_A30BB6F62_1853:
; //	asm	nop				
	nop
; //_A30BB6F62_1854:;				
_A30BB6F62_1854:
; //	asm	nop				
	nop
; //_A30BB6F62_1855:;				
_A30BB6F62_1855:
; //	asm	nop				
	nop
; //_A30BB6F62_1856:;				
_A30BB6F62_1856:
; //	asm	nop				
	nop
; //_A30BB6F62_1857:;				
_A30BB6F62_1857:
; //	asm	nop				
	nop
; //_A30BB6F62_1858:;				
_A30BB6F62_1858:
; //	asm	nop				
	nop
; //_A30BB6F62_1859:;				
_A30BB6F62_1859:
; //	asm	nop				
	nop
; //_A30BB6F62_1860:;				
_A30BB6F62_1860:
; //	asm	nop				
	nop
; //_A30BB6F62_1861:;				
_A30BB6F62_1861:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1862:;				
_A30BB6F62_1862:
; //	asm	nop				
	nop
; //_A30BB6F62_1863:;				
_A30BB6F62_1863:
; //	asm	nop				
	nop
; //_A30BB6F62_1864:;				
_A30BB6F62_1864:
; //	asm	nop				
	nop
; //_A30BB6F62_1865:;				
_A30BB6F62_1865:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1866:;				
_A30BB6F62_1866:
; //	asm	nop				
	nop
; //_A30BB6F62_1867:;				
_A30BB6F62_1867:
; //	asm	nop				
	nop
; //_A30BB6F62_1868:;				
_A30BB6F62_1868:
; //	asm	nop				
	nop
; //_A30BB6F62_1869:;				
_A30BB6F62_1869:
; //	asm	nop				
	nop
; //_A30BB6F62_1870:;				
_A30BB6F62_1870:
; //	asm	nop				
	nop
; //_A30BB6F62_1871:;				
_A30BB6F62_1871:
; //	asm	nop				
	nop
; //_A30BB6F62_1872:;				
_A30BB6F62_1872:
; //	asm	nop				
	nop
; //_A30BB6F62_1873:;				
_A30BB6F62_1873:
; //	asm	nop				
	nop
; //_A30BB6F62_1874:;				
_A30BB6F62_1874:
; //	asm	nop				
	nop
; //_A30BB6F62_1875:;				
_A30BB6F62_1875:
; //	asm	nop				
	nop
; //_A30BB6F62_1876:;				
_A30BB6F62_1876:
; //	asm	nop				
	nop
; //_A30BB6F62_1877:;				
_A30BB6F62_1877:
; //	asm	nop				
	nop
; //_A30BB6F62_1878:;				
_A30BB6F62_1878:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1879:;				
_A30BB6F62_1879:
; //	asm	nop				
	nop
; //_A30BB6F62_1880:;				
_A30BB6F62_1880:
; //	asm	nop				
	nop
; //_A30BB6F62_1881:;				
_A30BB6F62_1881:
; //	asm	nop				
	nop
; //_A30BB6F62_1882:;				
_A30BB6F62_1882:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1883:;				
_A30BB6F62_1883:
; //	asm	nop				
	nop
; //_A30BB6F62_1884:;				
_A30BB6F62_1884:
; //	asm	nop				
	nop
; //_A30BB6F62_1885:;				
_A30BB6F62_1885:
; //	asm	nop				
	nop
; //_A30BB6F62_1886:;				
_A30BB6F62_1886:
; //	asm	nop				
	nop
; //_A30BB6F62_1887:;				
_A30BB6F62_1887:
; //	asm	nop				
	nop
; //_A30BB6F62_1888:;				
_A30BB6F62_1888:
; //	asm	nop				
	nop
; //_A30BB6F62_1889:;				
_A30BB6F62_1889:
; //	asm	nop				
	nop
; //_A30BB6F62_1890:;				
_A30BB6F62_1890:
; //	asm	nop				
	nop
; //_A30BB6F62_1891:;				
_A30BB6F62_1891:
; //	asm	nop				
	nop
; //_A30BB6F62_1892:;				
_A30BB6F62_1892:
; //	asm	nop				
	nop
; //_A30BB6F62_1893:;				
_A30BB6F62_1893:
; //	asm	nop				
	nop
; //_A30BB6F62_1894:;				
_A30BB6F62_1894:
; //	asm	nop				
	nop
; //_A30BB6F62_1895:;				
_A30BB6F62_1895:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1896:;				
_A30BB6F62_1896:
; //	asm	nop				
	nop
; //_A30BB6F62_1897:;				
_A30BB6F62_1897:
; //	asm	nop				
	nop
; //_A30BB6F62_1898:;				
_A30BB6F62_1898:
; //	asm	nop				
	nop
; //_A30BB6F62_1899:;				
_A30BB6F62_1899:
; //	asm	nop				
	nop
; //_A30BB6F62_1900:;				
_A30BB6F62_1900:
; //	asm	nop				
	nop
; //_A30BB6F62_1901:;				
_A30BB6F62_1901:
; //	asm	nop				
	nop
; //_A30BB6F62_1902:;				
_A30BB6F62_1902:
; //	asm	nop				
	nop
; //_A30BB6F62_1903:;				
_A30BB6F62_1903:
; //	asm	nop				
	nop
; //_A30BB6F62_1904:;				
_A30BB6F62_1904:
; //	asm	nop				
	nop
; //_A30BB6F62_1905:;				
_A30BB6F62_1905:
; //	asm	nop				
	nop
; //_A30BB6F62_1906:;				
_A30BB6F62_1906:
; //	asm	nop				
	nop
; //_A30BB6F62_1907:;				
_A30BB6F62_1907:
; //	asm	nop				
	nop
; //_A30BB6F62_1908:;				
_A30BB6F62_1908:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1909:;				
_A30BB6F62_1909:
; //	asm	nop				
	nop
; //_A30BB6F62_1910:;				
_A30BB6F62_1910:
; //	asm	nop				
	nop
; //_A30BB6F62_1911:;				
_A30BB6F62_1911:
; //	asm	nop				
	nop
; //_A30BB6F62_1912:;				
_A30BB6F62_1912:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1913:;				
_A30BB6F62_1913:
; //	asm	nop				
	nop
; //_A30BB6F62_1914:;				
_A30BB6F62_1914:
; //	asm	nop				
	nop
; //_A30BB6F62_1915:;				
_A30BB6F62_1915:
; //	asm	nop				
	nop
; //_A30BB6F62_1916:;				
_A30BB6F62_1916:
; //	asm	nop				
	nop
; //_A30BB6F62_1917:;				
_A30BB6F62_1917:
; //	asm	nop				
	nop
; //_A30BB6F62_1918:;				
_A30BB6F62_1918:
; //	asm	nop				
	nop
; //_A30BB6F62_1919:;				
_A30BB6F62_1919:
; //	asm	nop				
	nop
; //_A30BB6F62_1920:;				
_A30BB6F62_1920:
; //	asm	nop				
	nop
; //_A30BB6F62_1921:;				
_A30BB6F62_1921:
; //	asm	nop				
	nop
; //_A30BB6F62_1922:;				
_A30BB6F62_1922:
; //	asm	nop				
	nop
; //_A30BB6F62_1923:;				
_A30BB6F62_1923:
; //	asm	nop				
	nop
; //_A30BB6F62_1924:;				
_A30BB6F62_1924:
; //	asm	nop				
	nop
; //_A30BB6F62_1925:;				
_A30BB6F62_1925:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1926:;				
_A30BB6F62_1926:
; //	asm	nop				
	nop
; //_A30BB6F62_1927:;				
_A30BB6F62_1927:
; //	asm	nop				
	nop
; //_A30BB6F62_1928:;				
_A30BB6F62_1928:
; //	asm	nop				
	nop
; //_A30BB6F62_1929:;				
_A30BB6F62_1929:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1930:;				
_A30BB6F62_1930:
; //	asm	nop				
	nop
; //_A30BB6F62_1931:;				
_A30BB6F62_1931:
; //	asm	nop				
	nop
; //_A30BB6F62_1932:;				
_A30BB6F62_1932:
; //	asm	nop				
	nop
; //_A30BB6F62_1933:;				
_A30BB6F62_1933:
; //	asm	nop				
	nop
; //_A30BB6F62_1934:;				
_A30BB6F62_1934:
; //	asm	nop				
	nop
; //_A30BB6F62_1935:;				
_A30BB6F62_1935:
; //	asm	nop				
	nop
; //_A30BB6F62_1936:;				
_A30BB6F62_1936:
; //	asm	nop				
	nop
; //_A30BB6F62_1937:;				
_A30BB6F62_1937:
; //	asm	nop				
	nop
; //_A30BB6F62_1938:;				
_A30BB6F62_1938:
; //	asm	nop				
	nop
; //_A30BB6F62_1939:;				
_A30BB6F62_1939:
; //	asm	nop				
	nop
; //_A30BB6F62_1940:;				
_A30BB6F62_1940:
; //	asm	nop				
	nop
; //_A30BB6F62_1941:;				
_A30BB6F62_1941:
; //	asm	nop				
	nop
; //_A30BB6F62_1942:;				
_A30BB6F62_1942:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1943:;				
_A30BB6F62_1943:
; //	asm	nop				
	nop
; //_A30BB6F62_1944:;				
_A30BB6F62_1944:
; //	asm	nop				
	nop
; //_A30BB6F62_1945:;				
_A30BB6F62_1945:
; //	asm	nop				
	nop
; //_A30BB6F62_1946:;				
_A30BB6F62_1946:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1947:;				
_A30BB6F62_1947:
; //	asm	nop				
	nop
; //_A30BB6F62_1948:;				
_A30BB6F62_1948:
; //	asm	nop				
	nop
; //_A30BB6F62_1949:;				
_A30BB6F62_1949:
; //	asm	nop				
	nop
; //_A30BB6F62_1950:;				
_A30BB6F62_1950:
; //	asm	nop				
	nop
; //_A30BB6F62_1951:;				
_A30BB6F62_1951:
; //	asm	nop				
	nop
; //_A30BB6F62_1952:;				
_A30BB6F62_1952:
; //	asm	nop				
	nop
; //_A30BB6F62_1953:;				
_A30BB6F62_1953:
; //	asm	nop				
	nop
; //_A30BB6F62_1954:;				
_A30BB6F62_1954:
; //	asm	nop				
	nop
; //_A30BB6F62_1955:;				
_A30BB6F62_1955:
; //	asm	nop				
	nop
; //_A30BB6F62_1956:;				
_A30BB6F62_1956:
; //	asm	nop				
	nop
; //_A30BB6F62_1957:;				
_A30BB6F62_1957:
; //	asm	nop				
	nop
; //_A30BB6F62_1958:;				
_A30BB6F62_1958:
; //	asm	nop				
	nop
; //_A30BB6F62_1959:;				
_A30BB6F62_1959:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1960:;				
_A30BB6F62_1960:
; //	asm	nop				
	nop
; //_A30BB6F62_1961:;				
_A30BB6F62_1961:
; //	asm	nop				
	nop
; //_A30BB6F62_1962:;				
_A30BB6F62_1962:
; //	asm	nop				
	nop
; //_A30BB6F62_1963:;				
_A30BB6F62_1963:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1964:;				
_A30BB6F62_1964:
; //	asm	nop				
	nop
; //_A30BB6F62_1965:;				
_A30BB6F62_1965:
; //	asm	nop				
	nop
; //_A30BB6F62_1966:;				
_A30BB6F62_1966:
; //	asm	nop				
	nop
; //_A30BB6F62_1967:;				
_A30BB6F62_1967:
; //	asm	nop				
	nop
; //_A30BB6F62_1968:;				
_A30BB6F62_1968:
; //	asm	nop				
	nop
; //_A30BB6F62_1969:;				
_A30BB6F62_1969:
; //	asm	nop				
	nop
; //_A30BB6F62_1970:;				
_A30BB6F62_1970:
; //	asm	nop				
	nop
; //_A30BB6F62_1971:;				
_A30BB6F62_1971:
; //	asm	nop				
	nop
; //_A30BB6F62_1972:;				
_A30BB6F62_1972:
; //	asm	nop				
	nop
; //_A30BB6F62_1973:;				
_A30BB6F62_1973:
; //	asm	nop				
	nop
; //_A30BB6F62_1974:;				
_A30BB6F62_1974:
; //	asm	nop				
	nop
; //_A30BB6F62_1975:;				
_A30BB6F62_1975:
; //	asm	nop				
	nop
; //_A30BB6F62_1976:;				
_A30BB6F62_1976:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1977:;				
_A30BB6F62_1977:
; //	asm	nop				
	nop
; //_A30BB6F62_1978:;				
_A30BB6F62_1978:
; //	asm	nop				
	nop
; //_A30BB6F62_1979:;				
_A30BB6F62_1979:
; //	asm	nop				
	nop
; //_A30BB6F62_1980:;				
_A30BB6F62_1980:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1981:;				
_A30BB6F62_1981:
; //	asm	nop				
	nop
; //_A30BB6F62_1982:;				
_A30BB6F62_1982:
; //	asm	nop				
	nop
; //_A30BB6F62_1983:;				
_A30BB6F62_1983:
; //	asm	nop				
	nop
; //_A30BB6F62_1984:;				
_A30BB6F62_1984:
; //	asm	nop				
	nop
; //_A30BB6F62_1985:;				
_A30BB6F62_1985:
; //	asm	nop				
	nop
; //_A30BB6F62_1986:;				
_A30BB6F62_1986:
; //	asm	nop				
	nop
; //_A30BB6F62_1987:;				
_A30BB6F62_1987:
; //	asm	nop				
	nop
; //_A30BB6F62_1988:;				
_A30BB6F62_1988:
; //	asm	nop				
	nop
; //_A30BB6F62_1989:;				
_A30BB6F62_1989:
; //	asm	nop				
	nop
; //_A30BB6F62_1990:;				
_A30BB6F62_1990:
; //	asm	nop				
	nop
; //_A30BB6F62_1991:;				
_A30BB6F62_1991:
; //	asm	nop				
	nop
; //_A30BB6F62_1992:;				
_A30BB6F62_1992:
; //	asm	nop				
	nop
; //_A30BB6F62_1993:;				
_A30BB6F62_1993:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_1994:;				
_A30BB6F62_1994:
; //	asm	nop				
	nop
; //_A30BB6F62_1995:;				
_A30BB6F62_1995:
; //	asm	nop				
	nop
; //_A30BB6F62_1996:;				
_A30BB6F62_1996:
; //	asm	nop				
	nop
; //_A30BB6F62_1997:;				
_A30BB6F62_1997:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_1998:;				
_A30BB6F62_1998:
; //	asm	nop				
	nop
; //_A30BB6F62_1999:;				
_A30BB6F62_1999:
; //	asm	nop				
	nop
; //_A30BB6F62_2000:;				
_A30BB6F62_2000:
; //	asm	nop				
	nop
; //_A30BB6F62_2001:;				
_A30BB6F62_2001:
; //	asm	nop				
	nop
; //_A30BB6F62_2002:;				
_A30BB6F62_2002:
; //	asm	nop				
	nop
; //_A30BB6F62_2003:;				
_A30BB6F62_2003:
; //	asm	nop				
	nop
; //_A30BB6F62_2004:;				
_A30BB6F62_2004:
; //	asm	nop				
	nop
; //_A30BB6F62_2005:;				
_A30BB6F62_2005:
; //	asm	nop				
	nop
; //_A30BB6F62_2006:;				
_A30BB6F62_2006:
; //	asm	nop				
	nop
; //_A30BB6F62_2007:;				
_A30BB6F62_2007:
; //	asm	nop				
	nop
; //_A30BB6F62_2008:;				
_A30BB6F62_2008:
; //	asm	nop				
	nop
; //_A30BB6F62_2009:;				
_A30BB6F62_2009:
; //	asm	nop				
	nop
; //_A30BB6F62_2010:;				
_A30BB6F62_2010:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2011:;				
_A30BB6F62_2011:
; //	asm	nop				
	nop
; //_A30BB6F62_2012:;				
_A30BB6F62_2012:
; //	asm	nop				
	nop
; //_A30BB6F62_2013:;				
_A30BB6F62_2013:
; //	asm	nop				
	nop
; //_A30BB6F62_2014:;				
_A30BB6F62_2014:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2015:;				
_A30BB6F62_2015:
; //	asm	nop				
	nop
; //_A30BB6F62_2016:;				
_A30BB6F62_2016:
; //	asm	nop				
	nop
; //_A30BB6F62_2017:;				
_A30BB6F62_2017:
; //	asm	nop				
	nop
; //_A30BB6F62_2018:;				
_A30BB6F62_2018:
; //	asm	nop				
	nop
; //_A30BB6F62_2019:;				
_A30BB6F62_2019:
; //	asm	nop				
	nop
; //_A30BB6F62_2020:;				
_A30BB6F62_2020:
; //	asm	nop				
	nop
; //_A30BB6F62_2021:;				
_A30BB6F62_2021:
; //	asm	nop				
	nop
; //_A30BB6F62_2022:;				
_A30BB6F62_2022:
; //	asm	nop				
	nop
; //_A30BB6F62_2023:;				
_A30BB6F62_2023:
; //	asm	nop				
	nop
; //_A30BB6F62_2024:;				
_A30BB6F62_2024:
; //	asm	nop				
	nop
; //_A30BB6F62_2025:;				
_A30BB6F62_2025:
; //	asm	nop				
	nop
; //_A30BB6F62_2026:;				
_A30BB6F62_2026:
; //	asm	nop				
	nop
; //_A30BB6F62_2027:;				
_A30BB6F62_2027:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2028:;				
_A30BB6F62_2028:
; //	asm	nop				
	nop
; //_A30BB6F62_2029:;				
_A30BB6F62_2029:
; //	asm	nop				
	nop
; //_A30BB6F62_2030:;				
_A30BB6F62_2030:
; //	asm	nop				
	nop
; //_A30BB6F62_2031:;				
_A30BB6F62_2031:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2032:;				
_A30BB6F62_2032:
; //	asm	nop				
	nop
; //_A30BB6F62_2033:;				
_A30BB6F62_2033:
; //	asm	nop				
	nop
; //_A30BB6F62_2034:;				
_A30BB6F62_2034:
; //	asm	nop				
	nop
; //_A30BB6F62_2035:;				
_A30BB6F62_2035:
; //	asm	nop				
	nop
; //_A30BB6F62_2036:;				
_A30BB6F62_2036:
; //	asm	nop				
	nop
; //_A30BB6F62_2037:;				
_A30BB6F62_2037:
; //	asm	nop				
	nop
; //_A30BB6F62_2038:;				
_A30BB6F62_2038:
; //	asm	nop				
	nop
; //_A30BB6F62_2039:;				
_A30BB6F62_2039:
; //	asm	nop				
	nop
; //_A30BB6F62_2040:;				
_A30BB6F62_2040:
; //	asm	nop				
	nop
; //_A30BB6F62_2041:;				
_A30BB6F62_2041:
; //	asm	nop				
	nop
; //_A30BB6F62_2042:;				
_A30BB6F62_2042:
; //	asm	nop				
	nop
; //_A30BB6F62_2043:;				
_A30BB6F62_2043:
; //	asm	nop				
	nop
; //_A30BB6F62_2044:;				
_A30BB6F62_2044:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2045:;				
_A30BB6F62_2045:
; //	asm	nop				
	nop
; //_A30BB6F62_2046:;				
_A30BB6F62_2046:
; //	asm	nop				
	nop
; //_A30BB6F62_2047:;				
_A30BB6F62_2047:
; //	asm	nop				
	nop
; //_A30BB6F62_2048:;				
_A30BB6F62_2048:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2049:;				
_A30BB6F62_2049:
; //	asm	nop				
	nop
; //_A30BB6F62_2050:;				
_A30BB6F62_2050:
; //	asm	nop				
	nop
; //_A30BB6F62_2051:;				
_A30BB6F62_2051:
; //	asm	nop				
	nop
; //_A30BB6F62_2052:;				
_A30BB6F62_2052:
; //	asm	nop				
	nop
; //_A30BB6F62_2053:;				
_A30BB6F62_2053:
; //	asm	nop				
	nop
; //_A30BB6F62_2054:;				
_A30BB6F62_2054:
; //	asm	nop				
	nop
; //_A30BB6F62_2055:;				
_A30BB6F62_2055:
; //	asm	nop				
	nop
; //_A30BB6F62_2056:;				
_A30BB6F62_2056:
; //	asm	nop				
	nop
; //_A30BB6F62_2057:;				
_A30BB6F62_2057:
; //	asm	nop				
	nop
; //_A30BB6F62_2058:;				
_A30BB6F62_2058:
; //	asm	nop				
	nop
; //_A30BB6F62_2059:;				
_A30BB6F62_2059:
; //	asm	nop				
	nop
; //_A30BB6F62_2060:;				
_A30BB6F62_2060:
; //	asm	nop				
	nop
; //_A30BB6F62_2061:;				
_A30BB6F62_2061:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2062:;				
_A30BB6F62_2062:
; //	asm	nop				
	nop
; //_A30BB6F62_2063:;				
_A30BB6F62_2063:
; //	asm	nop				
	nop
; //_A30BB6F62_2064:;				
_A30BB6F62_2064:
; //	asm	nop				
	nop
; //_A30BB6F62_2065:;				
_A30BB6F62_2065:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2066:;				
_A30BB6F62_2066:
; //	asm	nop				
	nop
; //_A30BB6F62_2067:;				
_A30BB6F62_2067:
; //	asm	nop				
	nop
; //_A30BB6F62_2068:;				
_A30BB6F62_2068:
; //	asm	nop				
	nop
; //_A30BB6F62_2069:;				
_A30BB6F62_2069:
; //	asm	nop				
	nop
; //_A30BB6F62_2070:;				
_A30BB6F62_2070:
; //	asm	nop				
	nop
; //_A30BB6F62_2071:;				
_A30BB6F62_2071:
; //	asm	nop				
	nop
; //_A30BB6F62_2072:;				
_A30BB6F62_2072:
; //	asm	nop				
	nop
; //_A30BB6F62_2073:;				
_A30BB6F62_2073:
; //	asm	nop				
	nop
; //_A30BB6F62_2074:;				
_A30BB6F62_2074:
; //	asm	nop				
	nop
; //_A30BB6F62_2075:;				
_A30BB6F62_2075:
; //	asm	nop				
	nop
; //_A30BB6F62_2076:;				
_A30BB6F62_2076:
; //	asm	nop				
	nop
; //_A30BB6F62_2077:;				
_A30BB6F62_2077:
; //	asm	nop				
	nop
; //_A30BB6F62_2078:;				
_A30BB6F62_2078:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2079:;				
_A30BB6F62_2079:
; //	asm	nop				
	nop
; //_A30BB6F62_2080:;				
_A30BB6F62_2080:
; //	asm	nop				
	nop
; //_A30BB6F62_2081:;				
_A30BB6F62_2081:
; //	asm	nop				
	nop
; //_A30BB6F62_2082:;				
_A30BB6F62_2082:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2083:;				
_A30BB6F62_2083:
; //	asm	nop				
	nop
; //_A30BB6F62_2084:;				
_A30BB6F62_2084:
; //	asm	nop				
	nop
; //_A30BB6F62_2085:;				
_A30BB6F62_2085:
; //	asm	nop				
	nop
; //_A30BB6F62_2086:;				
_A30BB6F62_2086:
; //	asm	nop				
	nop
; //_A30BB6F62_2087:;				
_A30BB6F62_2087:
; //	asm	nop				
	nop
; //_A30BB6F62_2088:;				
_A30BB6F62_2088:
; //	asm	nop				
	nop
; //_A30BB6F62_2089:;				
_A30BB6F62_2089:
; //	asm	nop				
	nop
; //_A30BB6F62_2090:;				
_A30BB6F62_2090:
; //	asm	nop				
	nop
; //_A30BB6F62_2091:;				
_A30BB6F62_2091:
; //	asm	nop				
	nop
; //_A30BB6F62_2092:;				
_A30BB6F62_2092:
; //	asm	nop				
	nop
; //_A30BB6F62_2093:;				
_A30BB6F62_2093:
; //	asm	nop				
	nop
; //_A30BB6F62_2094:;				
_A30BB6F62_2094:
; //	asm	nop				
	nop
; //_A30BB6F62_2095:;				
_A30BB6F62_2095:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2096:;				
_A30BB6F62_2096:
; //	asm	nop				
	nop
; //_A30BB6F62_2097:;				
_A30BB6F62_2097:
; //	asm	nop				
	nop
; //_A30BB6F62_2098:;				
_A30BB6F62_2098:
; //	asm	nop				
	nop
; //_A30BB6F62_2099:;				
_A30BB6F62_2099:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2100:;				
_A30BB6F62_2100:
; //	asm	nop				
	nop
; //_A30BB6F62_2101:;				
_A30BB6F62_2101:
; //	asm	nop				
	nop
; //_A30BB6F62_2102:;				
_A30BB6F62_2102:
; //	asm	nop				
	nop
; //_A30BB6F62_2103:;				
_A30BB6F62_2103:
; //	asm	nop				
	nop
; //_A30BB6F62_2104:;				
_A30BB6F62_2104:
; //	asm	nop				
	nop
; //_A30BB6F62_2105:;				
_A30BB6F62_2105:
; //	asm	nop				
	nop
; //_A30BB6F62_2106:;				
_A30BB6F62_2106:
; //	asm	nop				
	nop
; //_A30BB6F62_2107:;				
_A30BB6F62_2107:
; //	asm	nop				
	nop
; //_A30BB6F62_2108:;				
_A30BB6F62_2108:
; //	asm	nop				
	nop
; //_A30BB6F62_2109:;				
_A30BB6F62_2109:
; //	asm	nop				
	nop
; //_A30BB6F62_2110:;				
_A30BB6F62_2110:
; //	asm	nop				
	nop
; //_A30BB6F62_2111:;				
_A30BB6F62_2111:
; //	asm	nop				
	nop
; //_A30BB6F62_2112:;				
_A30BB6F62_2112:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2113:;				
_A30BB6F62_2113:
; //	asm	nop				
	nop
; //_A30BB6F62_2114:;				
_A30BB6F62_2114:
; //	asm	nop				
	nop
; //_A30BB6F62_2115:;				
_A30BB6F62_2115:
; //	asm	nop				
	nop
; //_A30BB6F62_2116:;				
_A30BB6F62_2116:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2117:;				
_A30BB6F62_2117:
; //	asm	nop				
	nop
; //_A30BB6F62_2118:;				
_A30BB6F62_2118:
; //	asm	nop				
	nop
; //_A30BB6F62_2119:;				
_A30BB6F62_2119:
; //	asm	nop				
	nop
; //_A30BB6F62_2120:;				
_A30BB6F62_2120:
; //	asm	nop				
	nop
; //_A30BB6F62_2121:;				
_A30BB6F62_2121:
; //	asm	nop				
	nop
; //_A30BB6F62_2122:;				
_A30BB6F62_2122:
; //	asm	nop				
	nop
; //_A30BB6F62_2123:;				
_A30BB6F62_2123:
; //	asm	nop				
	nop
; //_A30BB6F62_2124:;				
_A30BB6F62_2124:
; //	asm	nop				
	nop
; //_A30BB6F62_2125:;				
_A30BB6F62_2125:
; //	asm	nop				
	nop
; //_A30BB6F62_2126:;				
_A30BB6F62_2126:
; //	asm	nop				
	nop
; //_A30BB6F62_2127:;				
_A30BB6F62_2127:
; //	asm	nop				
	nop
; //_A30BB6F62_2128:;				
_A30BB6F62_2128:
; //	asm	nop				
	nop
; //_A30BB6F62_2129:;				
_A30BB6F62_2129:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2130:;				
_A30BB6F62_2130:
; //	asm	nop				
	nop
; //_A30BB6F62_2131:;				
_A30BB6F62_2131:
; //	asm	nop				
	nop
; //_A30BB6F62_2132:;				
_A30BB6F62_2132:
; //	asm	nop				
	nop
; //_A30BB6F62_2133:;				
_A30BB6F62_2133:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2134:;				
_A30BB6F62_2134:
; //	asm	nop				
	nop
; //_A30BB6F62_2135:;				
_A30BB6F62_2135:
; //	asm	nop				
	nop
; //_A30BB6F62_2136:;				
_A30BB6F62_2136:
; //	asm	nop				
	nop
; //_A30BB6F62_2137:;				
_A30BB6F62_2137:
; //	asm	nop				
	nop
; //_A30BB6F62_2138:;				
_A30BB6F62_2138:
; //	asm	nop				
	nop
; //_A30BB6F62_2139:;				
_A30BB6F62_2139:
; //	asm	nop				
	nop
; //_A30BB6F62_2140:;				
_A30BB6F62_2140:
; //	asm	nop				
	nop
; //_A30BB6F62_2141:;				
_A30BB6F62_2141:
; //	asm	nop				
	nop
; //_A30BB6F62_2142:;				
_A30BB6F62_2142:
; //	asm	nop				
	nop
; //_A30BB6F62_2143:;				
_A30BB6F62_2143:
; //	asm	nop				
	nop
; //_A30BB6F62_2144:;				
_A30BB6F62_2144:
; //	asm	nop				
	nop
; //_A30BB6F62_2145:;				
_A30BB6F62_2145:
; //	asm	nop				
	nop
; //_A30BB6F62_2146:;				
_A30BB6F62_2146:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2147:;				
_A30BB6F62_2147:
; //	asm	nop				
	nop
; //_A30BB6F62_2148:;				
_A30BB6F62_2148:
; //	asm	nop				
	nop
; //_A30BB6F62_2149:;				
_A30BB6F62_2149:
; //	asm	nop				
	nop
; //_A30BB6F62_2150:;				
_A30BB6F62_2150:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2151:;				
_A30BB6F62_2151:
; //	asm	nop				
	nop
; //_A30BB6F62_2152:;				
_A30BB6F62_2152:
; //	asm	nop				
	nop
; //_A30BB6F62_2153:;				
_A30BB6F62_2153:
; //	asm	nop				
	nop
; //_A30BB6F62_2154:;				
_A30BB6F62_2154:
; //	asm	nop				
	nop
; //_A30BB6F62_2155:;				
_A30BB6F62_2155:
; //	asm	nop				
	nop
; //_A30BB6F62_2156:;				
_A30BB6F62_2156:
; //	asm	nop				
	nop
; //_A30BB6F62_2157:;				
_A30BB6F62_2157:
; //	asm	nop				
	nop
; //_A30BB6F62_2158:;				
_A30BB6F62_2158:
; //	asm	nop				
	nop
; //_A30BB6F62_2159:;				
_A30BB6F62_2159:
; //	asm	nop				
	nop
; //_A30BB6F62_2160:;				
_A30BB6F62_2160:
; //	asm	nop				
	nop
; //_A30BB6F62_2161:;				
_A30BB6F62_2161:
; //	asm	nop				
	nop
; //_A30BB6F62_2162:;				
_A30BB6F62_2162:
; //	asm	nop				
	nop
; //_A30BB6F62_2163:;				
_A30BB6F62_2163:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2164:;				
_A30BB6F62_2164:
; //	asm	nop				
	nop
; //_A30BB6F62_2165:;				
_A30BB6F62_2165:
; //	asm	nop				
	nop
; //_A30BB6F62_2166:;				
_A30BB6F62_2166:
; //	asm	nop				
	nop
; //_A30BB6F62_2167:;				
_A30BB6F62_2167:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_57:;					
LD63FD439_57:
; //_A30BB6F62_2168:;				
_A30BB6F62_2168:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2169:;				
_A30BB6F62_2169:
; //	asm	nop				
	nop
; //_A30BB6F62_2170:;				
_A30BB6F62_2170:
; //	asm	nop				
	nop
; //_A30BB6F62_2171:;				
_A30BB6F62_2171:
; //	asm	nop				
	nop
; //_A30BB6F62_2172:;				
_A30BB6F62_2172:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2173:;				
_A30BB6F62_2173:
; //	asm	nop				
	nop
; //_A30BB6F62_2174:;				
_A30BB6F62_2174:
; //	asm	nop				
	nop
; //_A30BB6F62_2175:;				
_A30BB6F62_2175:
; //	asm	nop				
	nop
; //_A30BB6F62_2176:;				
_A30BB6F62_2176:
; //	asm	nop				
	nop
; //_A30BB6F62_2177:;				
_A30BB6F62_2177:
; //	asm	nop				
	nop
; //_A30BB6F62_2178:;				
_A30BB6F62_2178:
; //	asm	nop				
	nop
; //_A30BB6F62_2179:;				
_A30BB6F62_2179:
; //	asm	nop				
	nop
; //_A30BB6F62_2180:;				
_A30BB6F62_2180:
; //	asm	nop				
	nop
; //_A30BB6F62_2181:;				
_A30BB6F62_2181:
; //	asm	nop				
	nop
; //_A30BB6F62_2182:;				
_A30BB6F62_2182:
; //	asm	nop				
	nop
; //_A30BB6F62_2183:;				
_A30BB6F62_2183:
; //	asm	nop				
	nop
; //_A30BB6F62_2184:;				
_A30BB6F62_2184:
; //	asm	nop				
	nop
; //_A30BB6F62_2185:;				
_A30BB6F62_2185:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2186:;				
_A30BB6F62_2186:
; //	asm	nop				
	nop
; //_A30BB6F62_2187:;				
_A30BB6F62_2187:
; //	asm	nop				
	nop
; //_A30BB6F62_2188:;				
_A30BB6F62_2188:
; //	asm	nop				
	nop
; //_A30BB6F62_2189:;				
_A30BB6F62_2189:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2190:;				
_A30BB6F62_2190:
; //	asm	nop				
	nop
; //_A30BB6F62_2191:;				
_A30BB6F62_2191:
; //	asm	nop				
	nop
; //_A30BB6F62_2192:;				
_A30BB6F62_2192:
; //	asm	nop				
	nop
; //_A30BB6F62_2193:;				
_A30BB6F62_2193:
; //	asm	nop				
	nop
; //_A30BB6F62_2194:;				
_A30BB6F62_2194:
; //	asm	nop				
	nop
; //_A30BB6F62_2195:;				
_A30BB6F62_2195:
; //	asm	nop				
	nop
; //_A30BB6F62_2196:;				
_A30BB6F62_2196:
; //	asm	nop				
	nop
; //_A30BB6F62_2197:;				
_A30BB6F62_2197:
; //	asm	nop				
	nop
; //_A30BB6F62_2198:;				
_A30BB6F62_2198:
; //	asm	nop				
	nop
; //_A30BB6F62_2199:;				
_A30BB6F62_2199:
; //	asm	nop				
	nop
; //_A30BB6F62_2200:;				
_A30BB6F62_2200:
; //	asm	nop				
	nop
; //_A30BB6F62_2201:;				
_A30BB6F62_2201:
; //	asm	nop				
	nop
; //_A30BB6F62_2202:;				
_A30BB6F62_2202:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2203:;				
_A30BB6F62_2203:
; //	asm	nop				
	nop
; //_A30BB6F62_2204:;				
_A30BB6F62_2204:
; //	asm	nop				
	nop
; //_A30BB6F62_2205:;				
_A30BB6F62_2205:
; //	asm	nop				
	nop
; //_A30BB6F62_2206:;				
_A30BB6F62_2206:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2207:;				
_A30BB6F62_2207:
; //	asm	nop				
	nop
; //_A30BB6F62_2208:;				
_A30BB6F62_2208:
; //	asm	nop				
	nop
; //_A30BB6F62_2209:;				
_A30BB6F62_2209:
; //	asm	nop				
	nop
; //_A30BB6F62_2210:;				
_A30BB6F62_2210:
; //	asm	nop				
	nop
; //_A30BB6F62_2211:;				
_A30BB6F62_2211:
; //	asm	nop				
	nop
; //_A30BB6F62_2212:;				
_A30BB6F62_2212:
; //	asm	nop				
	nop
; //_A30BB6F62_2213:;				
_A30BB6F62_2213:
; //	asm	nop				
	nop
; //_A30BB6F62_2214:;				
_A30BB6F62_2214:
; //	asm	nop				
	nop
; //_A30BB6F62_2215:;				
_A30BB6F62_2215:
; //	asm	nop				
	nop
; //_A30BB6F62_2216:;				
_A30BB6F62_2216:
; //	asm	nop				
	nop
; //_A30BB6F62_2217:;				
_A30BB6F62_2217:
; //	asm	nop				
	nop
; //_A30BB6F62_2218:;				
_A30BB6F62_2218:
; //	asm	nop				
	nop
; //_A30BB6F62_2219:;				
_A30BB6F62_2219:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2220:;				
_A30BB6F62_2220:
; //	asm	nop				
	nop
; //_A30BB6F62_2221:;				
_A30BB6F62_2221:
; //	asm	nop				
	nop
; //_A30BB6F62_2222:;				
_A30BB6F62_2222:
; //	asm	nop				
	nop
; //_A30BB6F62_2223:;				
_A30BB6F62_2223:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2224:;				
_A30BB6F62_2224:
; //	asm	nop				
	nop
; //_A30BB6F62_2225:;				
_A30BB6F62_2225:
; //	asm	nop				
	nop
; //_A30BB6F62_2226:;				
_A30BB6F62_2226:
; //	asm	nop				
	nop
; //_A30BB6F62_2227:;				
_A30BB6F62_2227:
; //	asm	nop				
	nop
; //_A30BB6F62_2228:;				
_A30BB6F62_2228:
; //	asm	nop				
	nop
; //_A30BB6F62_2229:;				
_A30BB6F62_2229:
; //	asm	nop				
	nop
; //_A30BB6F62_2230:;				
_A30BB6F62_2230:
; //	asm	nop				
	nop
; //_A30BB6F62_2231:;				
_A30BB6F62_2231:
; //	asm	nop				
	nop
; //_A30BB6F62_2232:;				
_A30BB6F62_2232:
; //	asm	nop				
	nop
; //_A30BB6F62_2233:;				
_A30BB6F62_2233:
; //	asm	nop				
	nop
; //_A30BB6F62_2234:;				
_A30BB6F62_2234:
; //	asm	nop				
	nop
; //_A30BB6F62_2235:;				
_A30BB6F62_2235:
; //	asm	nop				
	nop
; //_A30BB6F62_2236:;				
_A30BB6F62_2236:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2237:;				
_A30BB6F62_2237:
; //	asm	nop				
	nop
; //_A30BB6F62_2238:;				
_A30BB6F62_2238:
; //	asm	nop				
	nop
; //_A30BB6F62_2239:;				
_A30BB6F62_2239:
; //	asm	nop				
	nop
; //_A30BB6F62_2240:;				
_A30BB6F62_2240:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2241:;				
_A30BB6F62_2241:
; //	asm	nop				
	nop
; //_A30BB6F62_2242:;				
_A30BB6F62_2242:
; //	asm	nop				
	nop
; //_A30BB6F62_2243:;				
_A30BB6F62_2243:
; //	asm	nop				
	nop
; //_A30BB6F62_2244:;				
_A30BB6F62_2244:
; //	asm	nop				
	nop
; //_A30BB6F62_2245:;				
_A30BB6F62_2245:
; //	asm	nop				
	nop
; //_A30BB6F62_2246:;				
_A30BB6F62_2246:
; //	asm	nop				
	nop
; //_A30BB6F62_2247:;				
_A30BB6F62_2247:
; //	asm	nop				
	nop
; //_A30BB6F62_2248:;				
_A30BB6F62_2248:
; //	asm	nop				
	nop
; //_A30BB6F62_2249:;				
_A30BB6F62_2249:
; //	asm	nop				
	nop
; //_A30BB6F62_2250:;				
_A30BB6F62_2250:
; //	asm	nop				
	nop
; //_A30BB6F62_2251:;				
_A30BB6F62_2251:
; //	asm	nop				
	nop
; //_A30BB6F62_2252:;				
_A30BB6F62_2252:
; //	asm	nop				
	nop
; //_A30BB6F62_2253:;				
_A30BB6F62_2253:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2254:;				
_A30BB6F62_2254:
; //	asm	nop				
	nop
; //_A30BB6F62_2255:;				
_A30BB6F62_2255:
; //	asm	nop				
	nop
; //_A30BB6F62_2256:;				
_A30BB6F62_2256:
; //	asm	nop				
	nop
; //_A30BB6F62_2257:;				
_A30BB6F62_2257:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2258:;				
_A30BB6F62_2258:
; //	asm	nop				
	nop
; //_A30BB6F62_2259:;				
_A30BB6F62_2259:
; //	asm	nop				
	nop
; //_A30BB6F62_2260:;				
_A30BB6F62_2260:
; //	asm	nop				
	nop
; //_A30BB6F62_2261:;				
_A30BB6F62_2261:
; //	asm	nop				
	nop
; //_A30BB6F62_2262:;				
_A30BB6F62_2262:
; //	asm	nop				
	nop
; //_A30BB6F62_2263:;				
_A30BB6F62_2263:
; //	asm	nop				
	nop
; //_A30BB6F62_2264:;				
_A30BB6F62_2264:
; //	asm	nop				
	nop
; //_A30BB6F62_2265:;				
_A30BB6F62_2265:
; //	asm	nop				
	nop
; //_A30BB6F62_2266:;				
_A30BB6F62_2266:
; //	asm	nop				
	nop
; //_A30BB6F62_2267:;				
_A30BB6F62_2267:
; //	asm	nop				
	nop
; //_A30BB6F62_2268:;				
_A30BB6F62_2268:
; //	asm	nop				
	nop
; //_A30BB6F62_2269:;				
_A30BB6F62_2269:
; //	asm	nop				
	nop
; //_A30BB6F62_2270:;				
_A30BB6F62_2270:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2271:;				
_A30BB6F62_2271:
; //	asm	nop				
	nop
; //_A30BB6F62_2272:;				
_A30BB6F62_2272:
; //	asm	nop				
	nop
; //_A30BB6F62_2273:;				
_A30BB6F62_2273:
; //	asm	nop				
	nop
; //_A30BB6F62_2274:;				
_A30BB6F62_2274:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2275:;				
_A30BB6F62_2275:
; //	asm	nop				
	nop
; //_A30BB6F62_2276:;				
_A30BB6F62_2276:
; //	asm	nop				
	nop
; //_A30BB6F62_2277:;				
_A30BB6F62_2277:
; //	asm	nop				
	nop
; //_A30BB6F62_2278:;				
_A30BB6F62_2278:
; //	asm	nop				
	nop
; //_A30BB6F62_2279:;				
_A30BB6F62_2279:
; //	asm	nop				
	nop
; //_A30BB6F62_2280:;				
_A30BB6F62_2280:
; //	asm	nop				
	nop
; //_A30BB6F62_2281:;				
_A30BB6F62_2281:
; //	asm	nop				
	nop
; //_A30BB6F62_2282:;				
_A30BB6F62_2282:
; //	asm	nop				
	nop
; //_A30BB6F62_2283:;				
_A30BB6F62_2283:
; //	asm	nop				
	nop
; //_A30BB6F62_2284:;				
_A30BB6F62_2284:
; //	asm	nop				
	nop
; //_A30BB6F62_2285:;				
_A30BB6F62_2285:
; //	asm	nop				
	nop
; //_A30BB6F62_2286:;				
_A30BB6F62_2286:
; //	asm	nop				
	nop
; //_A30BB6F62_2287:;				
_A30BB6F62_2287:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2288:;				
_A30BB6F62_2288:
; //	asm	nop				
	nop
; //_A30BB6F62_2289:;				
_A30BB6F62_2289:
; //	asm	nop				
	nop
; //_A30BB6F62_2290:;				
_A30BB6F62_2290:
; //	asm	nop				
	nop
; //_A30BB6F62_2291:;				
_A30BB6F62_2291:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2292:;				
_A30BB6F62_2292:
; //	asm	nop				
	nop
; //_A30BB6F62_2293:;				
_A30BB6F62_2293:
; //	asm	nop				
	nop
; //_A30BB6F62_2294:;				
_A30BB6F62_2294:
; //	asm	nop				
	nop
; //_A30BB6F62_2295:;				
_A30BB6F62_2295:
; //	asm	nop				
	nop
; //_A30BB6F62_2296:;				
_A30BB6F62_2296:
; //	asm	nop				
	nop
; //_A30BB6F62_2297:;				
_A30BB6F62_2297:
; //	asm	nop				
	nop
; //_A30BB6F62_2298:;				
_A30BB6F62_2298:
; //	asm	nop				
	nop
; //_A30BB6F62_2299:;				
_A30BB6F62_2299:
; //	asm	nop				
	nop
; //_A30BB6F62_2300:;				
_A30BB6F62_2300:
; //	asm	nop				
	nop
; //_A30BB6F62_2301:;				
_A30BB6F62_2301:
; //	asm	nop				
	nop
; //_A30BB6F62_2302:;				
_A30BB6F62_2302:
; //	asm	nop				
	nop
; //_A30BB6F62_2303:;				
_A30BB6F62_2303:
; //	asm	nop				
	nop
; //_A30BB6F62_2304:;				
_A30BB6F62_2304:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2305:;				
_A30BB6F62_2305:
; //	asm	nop				
	nop
; //_A30BB6F62_2306:;				
_A30BB6F62_2306:
; //	asm	nop				
	nop
; //_A30BB6F62_2307:;				
_A30BB6F62_2307:
; //	asm	nop				
	nop
; //_A30BB6F62_2308:;				
_A30BB6F62_2308:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2309:;				
_A30BB6F62_2309:
; //	asm	nop				
	nop
; //_A30BB6F62_2310:;				
_A30BB6F62_2310:
; //	asm	nop				
	nop
; //_A30BB6F62_2311:;				
_A30BB6F62_2311:
; //	asm	nop				
	nop
; //_A30BB6F62_2312:;				
_A30BB6F62_2312:
; //	asm	nop				
	nop
; //_A30BB6F62_2313:;				
_A30BB6F62_2313:
; //	asm	nop				
	nop
; //_A30BB6F62_2314:;				
_A30BB6F62_2314:
; //	asm	nop				
	nop
; //_A30BB6F62_2315:;				
_A30BB6F62_2315:
; //	asm	nop				
	nop
; //_A30BB6F62_2316:;				
_A30BB6F62_2316:
; //	asm	nop				
	nop
; //_A30BB6F62_2317:;				
_A30BB6F62_2317:
; //	asm	nop				
	nop
; //_A30BB6F62_2318:;				
_A30BB6F62_2318:
; //	asm	nop				
	nop
; //_A30BB6F62_2319:;				
_A30BB6F62_2319:
; //	asm	nop				
	nop
; //_A30BB6F62_2320:;				
_A30BB6F62_2320:
; //	asm	nop				
	nop
; //_A30BB6F62_2321:;				
_A30BB6F62_2321:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2322:;				
_A30BB6F62_2322:
; //	asm	nop				
	nop
; //_A30BB6F62_2323:;				
_A30BB6F62_2323:
; //	asm	nop				
	nop
; //_A30BB6F62_2324:;				
_A30BB6F62_2324:
; //	asm	nop				
	nop
; //_A30BB6F62_2325:;				
_A30BB6F62_2325:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2326:;				
_A30BB6F62_2326:
; //	asm	nop				
	nop
; //_A30BB6F62_2327:;				
_A30BB6F62_2327:
; //	asm	nop				
	nop
; //_A30BB6F62_2328:;				
_A30BB6F62_2328:
; //	asm	nop				
	nop
; //_A30BB6F62_2329:;				
_A30BB6F62_2329:
; //	asm	nop				
	nop
; //_A30BB6F62_2330:;				
_A30BB6F62_2330:
; //	asm	nop				
	nop
; //_A30BB6F62_2331:;				
_A30BB6F62_2331:
; //	asm	nop				
	nop
; //_A30BB6F62_2332:;				
_A30BB6F62_2332:
; //	asm	nop				
	nop
; //_A30BB6F62_2333:;				
_A30BB6F62_2333:
; //	asm	nop				
	nop
; //_A30BB6F62_2334:;				
_A30BB6F62_2334:
; //	asm	nop				
	nop
; //_A30BB6F62_2335:;				
_A30BB6F62_2335:
; //	asm	nop				
	nop
; //_A30BB6F62_2336:;				
_A30BB6F62_2336:
; //	asm	nop				
	nop
; //_A30BB6F62_2337:;				
_A30BB6F62_2337:
; //	asm	nop				
	nop
; //_A30BB6F62_2338:;				
_A30BB6F62_2338:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2339:;				
_A30BB6F62_2339:
; //	asm	nop				
	nop
; //_A30BB6F62_2340:;				
_A30BB6F62_2340:
; //	asm	nop				
	nop
; //_A30BB6F62_2341:;				
_A30BB6F62_2341:
; //	asm	nop				
	nop
; //_A30BB6F62_2342:;				
_A30BB6F62_2342:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2343:;				
_A30BB6F62_2343:
; //	asm	nop				
	nop
; //_A30BB6F62_2344:;				
_A30BB6F62_2344:
; //	asm	nop				
	nop
; //_A30BB6F62_2345:;				
_A30BB6F62_2345:
; //	asm	nop				
	nop
; //_A30BB6F62_2346:;				
_A30BB6F62_2346:
; //	asm	nop				
	nop
; //_A30BB6F62_2347:;				
_A30BB6F62_2347:
; //	asm	nop				
	nop
; //_A30BB6F62_2348:;				
_A30BB6F62_2348:
; //	asm	nop				
	nop
; //_A30BB6F62_2349:;				
_A30BB6F62_2349:
; //	asm	nop				
	nop
; //_A30BB6F62_2350:;				
_A30BB6F62_2350:
; //	asm	nop				
	nop
; //_A30BB6F62_2351:;				
_A30BB6F62_2351:
; //	asm	nop				
	nop
; //_A30BB6F62_2352:;				
_A30BB6F62_2352:
; //	asm	nop				
	nop
; //_A30BB6F62_2353:;				
_A30BB6F62_2353:
; //	asm	nop				
	nop
; //_A30BB6F62_2354:;				
_A30BB6F62_2354:
; //	asm	nop				
	nop
; //_A30BB6F62_2355:;				
_A30BB6F62_2355:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2356:;				
_A30BB6F62_2356:
; //	asm	nop				
	nop
; //_A30BB6F62_2357:;				
_A30BB6F62_2357:
; //	asm	nop				
	nop
; //_A30BB6F62_2358:;				
_A30BB6F62_2358:
; //	asm	nop				
	nop
; //_A30BB6F62_2359:;				
_A30BB6F62_2359:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2360:;				
_A30BB6F62_2360:
; //	asm	nop				
	nop
; //_A30BB6F62_2361:;				
_A30BB6F62_2361:
; //	asm	nop				
	nop
; //_A30BB6F62_2362:;				
_A30BB6F62_2362:
; //	asm	nop				
	nop
; //_A30BB6F62_2363:;				
_A30BB6F62_2363:
; //	asm	nop				
	nop
; //_A30BB6F62_2364:;				
_A30BB6F62_2364:
; //	asm	nop				
	nop
; //_A30BB6F62_2365:;				
_A30BB6F62_2365:
; //	asm	nop				
	nop
; //_A30BB6F62_2366:;				
_A30BB6F62_2366:
; //	asm	nop				
	nop
; //_A30BB6F62_2367:;				
_A30BB6F62_2367:
; //	asm	nop				
	nop
; //_A30BB6F62_2368:;				
_A30BB6F62_2368:
; //	asm	nop				
	nop
; //_A30BB6F62_2369:;				
_A30BB6F62_2369:
; //	asm	nop				
	nop
; //_A30BB6F62_2370:;				
_A30BB6F62_2370:
; //	asm	nop				
	nop
; //_A30BB6F62_2371:;				
_A30BB6F62_2371:
; //	asm	nop				
	nop
; //_A30BB6F62_2372:;				
_A30BB6F62_2372:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2373:;				
_A30BB6F62_2373:
; //	asm	nop				
	nop
; //_A30BB6F62_2374:;				
_A30BB6F62_2374:
; //	asm	nop				
	nop
; //_A30BB6F62_2375:;				
_A30BB6F62_2375:
; //	asm	nop				
	nop
; //_A30BB6F62_2376:;				
_A30BB6F62_2376:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2377:;				
_A30BB6F62_2377:
; //	asm	nop				
	nop
; //_A30BB6F62_2378:;				
_A30BB6F62_2378:
; //	asm	nop				
	nop
; //_A30BB6F62_2379:;				
_A30BB6F62_2379:
; //	asm	nop				
	nop
; //_A30BB6F62_2380:;				
_A30BB6F62_2380:
; //	asm	nop				
	nop
; //_A30BB6F62_2381:;				
_A30BB6F62_2381:
; //	asm	nop				
	nop
; //_A30BB6F62_2382:;				
_A30BB6F62_2382:
; //	asm	nop				
	nop
; //_A30BB6F62_2383:;				
_A30BB6F62_2383:
; //	asm	nop				
	nop
; //_A30BB6F62_2384:;				
_A30BB6F62_2384:
; //	asm	nop				
	nop
; //_A30BB6F62_2385:;				
_A30BB6F62_2385:
; //	asm	nop				
	nop
; //_A30BB6F62_2386:;				
_A30BB6F62_2386:
; //	asm	nop				
	nop
; //_A30BB6F62_2387:;				
_A30BB6F62_2387:
; //	asm	nop				
	nop
; //_A30BB6F62_2388:;				
_A30BB6F62_2388:
; //	asm	nop				
	nop
; //_A30BB6F62_2389:;				
_A30BB6F62_2389:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2390:;				
_A30BB6F62_2390:
; //	asm	nop				
	nop
; //_A30BB6F62_2391:;				
_A30BB6F62_2391:
; //	asm	nop				
	nop
; //_A30BB6F62_2392:;				
_A30BB6F62_2392:
; //	asm	nop				
	nop
; //_A30BB6F62_2393:;				
_A30BB6F62_2393:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2394:;				
_A30BB6F62_2394:
; //	asm	nop				
	nop
; //_A30BB6F62_2395:;				
_A30BB6F62_2395:
; //	asm	nop				
	nop
; //_A30BB6F62_2396:;				
_A30BB6F62_2396:
; //	asm	nop				
	nop
; //_A30BB6F62_2397:;				
_A30BB6F62_2397:
; //	asm	nop				
	nop
; //_A30BB6F62_2398:;				
_A30BB6F62_2398:
; //	asm	nop				
	nop
; //_A30BB6F62_2399:;				
_A30BB6F62_2399:
; //	asm	nop				
	nop
; //_A30BB6F62_2400:;				
_A30BB6F62_2400:
; //	asm	nop				
	nop
; //_A30BB6F62_2401:;				
_A30BB6F62_2401:
; //	asm	nop				
	nop
; //_A30BB6F62_2402:;				
_A30BB6F62_2402:
; //	asm	nop				
	nop
; //_A30BB6F62_2403:;				
_A30BB6F62_2403:
; //	asm	nop				
	nop
; //_A30BB6F62_2404:;				
_A30BB6F62_2404:
; //	asm	nop				
	nop
; //_A30BB6F62_2405:;				
_A30BB6F62_2405:
; //	asm	nop				
	nop
; //_A30BB6F62_2406:;				
_A30BB6F62_2406:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2407:;				
_A30BB6F62_2407:
; //	asm	nop				
	nop
; //_A30BB6F62_2408:;				
_A30BB6F62_2408:
; //	asm	nop				
	nop
; //_A30BB6F62_2409:;				
_A30BB6F62_2409:
; //	asm	nop				
	nop
; //_A30BB6F62_2410:;				
_A30BB6F62_2410:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2411:;				
_A30BB6F62_2411:
; //	asm	nop				
	nop
; //_A30BB6F62_2412:;				
_A30BB6F62_2412:
; //	asm	nop				
	nop
; //_A30BB6F62_2413:;				
_A30BB6F62_2413:
; //	asm	nop				
	nop
; //_A30BB6F62_2414:;				
_A30BB6F62_2414:
; //	asm	nop				
	nop
; //_A30BB6F62_2415:;				
_A30BB6F62_2415:
; //	asm	nop				
	nop
; //_A30BB6F62_2416:;				
_A30BB6F62_2416:
; //	asm	nop				
	nop
; //_A30BB6F62_2417:;				
_A30BB6F62_2417:
; //	asm	nop				
	nop
; //_A30BB6F62_2418:;				
_A30BB6F62_2418:
; //	asm	nop				
	nop
; //_A30BB6F62_2419:;				
_A30BB6F62_2419:
; //	asm	nop				
	nop
; //_A30BB6F62_2420:;				
_A30BB6F62_2420:
; //	asm	nop				
	nop
; //_A30BB6F62_2421:;				
_A30BB6F62_2421:
; //	asm	nop				
	nop
; //_A30BB6F62_2422:;				
_A30BB6F62_2422:
; //	asm	nop				
	nop
; //_A30BB6F62_2423:;				
_A30BB6F62_2423:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2424:;				
_A30BB6F62_2424:
; //	asm	nop				
	nop
; //_A30BB6F62_2425:;				
_A30BB6F62_2425:
; //	asm	nop				
	nop
; //_A30BB6F62_2426:;				
_A30BB6F62_2426:
; //	asm	nop				
	nop
; //_A30BB6F62_2427:;				
_A30BB6F62_2427:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2428:;				
_A30BB6F62_2428:
; //	asm	nop				
	nop
; //_A30BB6F62_2429:;				
_A30BB6F62_2429:
; //	asm	nop				
	nop
; //_A30BB6F62_2430:;				
_A30BB6F62_2430:
; //	asm	nop				
	nop
; //_A30BB6F62_2431:;				
_A30BB6F62_2431:
; //	asm	nop				
	nop
; //_A30BB6F62_2432:;				
_A30BB6F62_2432:
; //	asm	nop				
	nop
; //_A30BB6F62_2433:;				
_A30BB6F62_2433:
; //	asm	nop				
	nop
; //_A30BB6F62_2434:;				
_A30BB6F62_2434:
; //	asm	nop				
	nop
; //_A30BB6F62_2435:;				
_A30BB6F62_2435:
; //	asm	nop				
	nop
; //_A30BB6F62_2436:;				
_A30BB6F62_2436:
; //	asm	nop				
	nop
; //_A30BB6F62_2437:;				
_A30BB6F62_2437:
; //	asm	nop				
	nop
; //_A30BB6F62_2438:;				
_A30BB6F62_2438:
; //	asm	nop				
	nop
; //_A30BB6F62_2439:;				
_A30BB6F62_2439:
; //	asm	nop				
	nop
; //_A30BB6F62_2440:;				
_A30BB6F62_2440:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2441:;				
_A30BB6F62_2441:
; //	asm	nop				
	nop
; //_A30BB6F62_2442:;				
_A30BB6F62_2442:
; //	asm	nop				
	nop
; //_A30BB6F62_2443:;				
_A30BB6F62_2443:
; //	asm	nop				
	nop
; //_A30BB6F62_2444:;				
_A30BB6F62_2444:
; //	asm	nop				
	nop
; //_A30BB6F62_2445:;				
_A30BB6F62_2445:
; //	asm	nop				
	nop
; //_A30BB6F62_2446:;				
_A30BB6F62_2446:
; //	asm	nop				
	nop
; //_A30BB6F62_2447:;				
_A30BB6F62_2447:
; //	asm	nop				
	nop
; //_A30BB6F62_2448:;				
_A30BB6F62_2448:
; //	asm	nop				
	nop
; //_A30BB6F62_2449:;				
_A30BB6F62_2449:
; //	asm	nop				
	nop
; //_A30BB6F62_2450:;				
_A30BB6F62_2450:
; //	asm	nop				
	nop
; //_A30BB6F62_2451:;				
_A30BB6F62_2451:
; //	asm	nop				
	nop
; //_A30BB6F62_2452:;				
_A30BB6F62_2452:
; //	asm	nop				
	nop
; //_A30BB6F62_2453:;				
_A30BB6F62_2453:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2454:;				
_A30BB6F62_2454:
; //	asm	nop				
	nop
; //_A30BB6F62_2455:;				
_A30BB6F62_2455:
; //	asm	nop				
	nop
; //_A30BB6F62_2456:;				
_A30BB6F62_2456:
; //	asm	nop				
	nop
; //_A30BB6F62_2457:;				
_A30BB6F62_2457:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2458:;				
_A30BB6F62_2458:
; //	asm	nop				
	nop
; //_A30BB6F62_2459:;				
_A30BB6F62_2459:
; //	asm	nop				
	nop
; //_A30BB6F62_2460:;				
_A30BB6F62_2460:
; //	asm	nop				
	nop
; //_A30BB6F62_2461:;				
_A30BB6F62_2461:
; //	asm	nop				
	nop
; //_A30BB6F62_2462:;				
_A30BB6F62_2462:
; //	asm	nop				
	nop
; //_A30BB6F62_2463:;				
_A30BB6F62_2463:
; //	asm	nop				
	nop
; //_A30BB6F62_2464:;				
_A30BB6F62_2464:
; //	asm	nop				
	nop
; //_A30BB6F62_2465:;				
_A30BB6F62_2465:
; //	asm	nop				
	nop
; //_A30BB6F62_2466:;				
_A30BB6F62_2466:
; //	asm	nop				
	nop
; //_A30BB6F62_2467:;				
_A30BB6F62_2467:
; //	asm	nop				
	nop
; //_A30BB6F62_2468:;				
_A30BB6F62_2468:
; //	asm	nop				
	nop
; //_A30BB6F62_2469:;				
_A30BB6F62_2469:
; //	asm	nop				
	nop
; //_A30BB6F62_2470:;				
_A30BB6F62_2470:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2471:;				
_A30BB6F62_2471:
; //	asm	nop				
	nop
; //_A30BB6F62_2472:;				
_A30BB6F62_2472:
; //	asm	nop				
	nop
; //_A30BB6F62_2473:;				
_A30BB6F62_2473:
; //	asm	nop				
	nop
; //_A30BB6F62_2474:;				
_A30BB6F62_2474:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2475:;				
_A30BB6F62_2475:
; //	asm	nop				
	nop
; //_A30BB6F62_2476:;				
_A30BB6F62_2476:
; //	asm	nop				
	nop
; //_A30BB6F62_2477:;				
_A30BB6F62_2477:
; //	asm	nop				
	nop
; //_A30BB6F62_2478:;				
_A30BB6F62_2478:
; //	asm	nop				
	nop
; //_A30BB6F62_2479:;				
_A30BB6F62_2479:
; //	asm	nop				
	nop
; //_A30BB6F62_2480:;				
_A30BB6F62_2480:
; //	asm	nop				
	nop
; //_A30BB6F62_2481:;				
_A30BB6F62_2481:
; //	asm	nop				
	nop
; //_A30BB6F62_2482:;				
_A30BB6F62_2482:
; //	asm	nop				
	nop
; //_A30BB6F62_2483:;				
_A30BB6F62_2483:
; //	asm	nop				
	nop
; //_A30BB6F62_2484:;				
_A30BB6F62_2484:
; //	asm	nop				
	nop
; //_A30BB6F62_2485:;				
_A30BB6F62_2485:
; //	asm	nop				
	nop
; //_A30BB6F62_2486:;				
_A30BB6F62_2486:
; //	asm	nop				
	nop
; //_A30BB6F62_2487:;				
_A30BB6F62_2487:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2488:;				
_A30BB6F62_2488:
; //	asm	nop				
	nop
; //_A30BB6F62_2489:;				
_A30BB6F62_2489:
; //	asm	nop				
	nop
; //_A30BB6F62_2490:;				
_A30BB6F62_2490:
; //	asm	nop				
	nop
; //_A30BB6F62_2491:;				
_A30BB6F62_2491:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2492:;				
_A30BB6F62_2492:
; //	asm	nop				
	nop
; //_A30BB6F62_2493:;				
_A30BB6F62_2493:
; //	asm	nop				
	nop
; //_A30BB6F62_2494:;				
_A30BB6F62_2494:
; //	asm	nop				
	nop
; //_A30BB6F62_2495:;				
_A30BB6F62_2495:
; //	asm	nop				
	nop
; //_A30BB6F62_2496:;				
_A30BB6F62_2496:
; //	asm	nop				
	nop
; //_A30BB6F62_2497:;				
_A30BB6F62_2497:
; //	asm	nop				
	nop
; //_A30BB6F62_2498:;				
_A30BB6F62_2498:
; //	asm	nop				
	nop
; //_A30BB6F62_2499:;				
_A30BB6F62_2499:
; //	asm	nop				
	nop
; //_A30BB6F62_2500:;				
_A30BB6F62_2500:
; //	asm	nop				
	nop
; //_A30BB6F62_2501:;				
_A30BB6F62_2501:
; //	asm	nop				
	nop
; //_A30BB6F62_2502:;				
_A30BB6F62_2502:
; //	asm	nop				
	nop
; //_A30BB6F62_2503:;				
_A30BB6F62_2503:
; //	asm	nop				
	nop
; //_A30BB6F62_2504:;				
_A30BB6F62_2504:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2505:;				
_A30BB6F62_2505:
; //	asm	nop				
	nop
; //_A30BB6F62_2506:;				
_A30BB6F62_2506:
; //	asm	nop				
	nop
; //_A30BB6F62_2507:;				
_A30BB6F62_2507:
; //	asm	nop				
	nop
; //_A30BB6F62_2508:;				
_A30BB6F62_2508:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2509:;				
_A30BB6F62_2509:
; //	asm	nop				
	nop
; //_A30BB6F62_2510:;				
_A30BB6F62_2510:
; //	asm	nop				
	nop
; //_A30BB6F62_2511:;				
_A30BB6F62_2511:
; //	asm	nop				
	nop
; //_A30BB6F62_2512:;				
_A30BB6F62_2512:
; //	asm	nop				
	nop
; //_A30BB6F62_2513:;				
_A30BB6F62_2513:
; //	asm	nop				
	nop
; //_A30BB6F62_2514:;				
_A30BB6F62_2514:
; //	asm	nop				
	nop
; //_A30BB6F62_2515:;				
_A30BB6F62_2515:
; //	asm	nop				
	nop
; //_A30BB6F62_2516:;				
_A30BB6F62_2516:
; //	asm	nop				
	nop
; //_A30BB6F62_2517:;				
_A30BB6F62_2517:
; //	asm	nop				
	nop
; //_A30BB6F62_2518:;				
_A30BB6F62_2518:
; //	asm	nop				
	nop
; //_A30BB6F62_2519:;				
_A30BB6F62_2519:
; //	asm	nop				
	nop
; //_A30BB6F62_2520:;				
_A30BB6F62_2520:
; //	asm	nop				
	nop
; //_A30BB6F62_2521:;				
_A30BB6F62_2521:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2522:;				
_A30BB6F62_2522:
; //	asm	nop				
	nop
; //_A30BB6F62_2523:;				
_A30BB6F62_2523:
; //	asm	nop				
	nop
; //_A30BB6F62_2524:;				
_A30BB6F62_2524:
; //	asm	nop				
	nop
; //_A30BB6F62_2525:;				
_A30BB6F62_2525:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2526:;				
_A30BB6F62_2526:
; //	asm	nop				
	nop
; //_A30BB6F62_2527:;				
_A30BB6F62_2527:
; //	asm	nop				
	nop
; //_A30BB6F62_2528:;				
_A30BB6F62_2528:
; //	asm	nop				
	nop
; //_A30BB6F62_2529:;				
_A30BB6F62_2529:
; //	asm	nop				
	nop
; //_A30BB6F62_2530:;				
_A30BB6F62_2530:
; //	asm	nop				
	nop
; //_A30BB6F62_2531:;				
_A30BB6F62_2531:
; //	asm	nop				
	nop
; //_A30BB6F62_2532:;				
_A30BB6F62_2532:
; //	asm	nop				
	nop
; //_A30BB6F62_2533:;				
_A30BB6F62_2533:
; //	asm	nop				
	nop
; //_A30BB6F62_2534:;				
_A30BB6F62_2534:
; //	asm	nop				
	nop
; //_A30BB6F62_2535:;				
_A30BB6F62_2535:
; //	asm	nop				
	nop
; //_A30BB6F62_2536:;				
_A30BB6F62_2536:
; //	asm	nop				
	nop
; //_A30BB6F62_2537:;				
_A30BB6F62_2537:
; //	asm	nop				
	nop
; //_A30BB6F62_2538:;				
_A30BB6F62_2538:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2539:;				
_A30BB6F62_2539:
; //	asm	nop				
	nop
; //_A30BB6F62_2540:;				
_A30BB6F62_2540:
; //	asm	nop				
	nop
; //_A30BB6F62_2541:;				
_A30BB6F62_2541:
; //	asm	nop				
	nop
; //_A30BB6F62_2542:;				
_A30BB6F62_2542:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2543:;				
_A30BB6F62_2543:
; //	asm	nop				
	nop
; //_A30BB6F62_2544:;				
_A30BB6F62_2544:
; //	asm	nop				
	nop
; //_A30BB6F62_2545:;				
_A30BB6F62_2545:
; //	asm	nop				
	nop
; //_A30BB6F62_2546:;				
_A30BB6F62_2546:
; //	asm	nop				
	nop
; //_A30BB6F62_2547:;				
_A30BB6F62_2547:
; //	asm	nop				
	nop
; //_A30BB6F62_2548:;				
_A30BB6F62_2548:
; //	asm	nop				
	nop
; //_A30BB6F62_2549:;				
_A30BB6F62_2549:
; //	asm	nop				
	nop
; //_A30BB6F62_2550:;				
_A30BB6F62_2550:
; //	asm	nop				
	nop
; //_A30BB6F62_2551:;				
_A30BB6F62_2551:
; //	asm	nop				
	nop
; //_A30BB6F62_2552:;				
_A30BB6F62_2552:
; //	asm	nop				
	nop
; //_A30BB6F62_2553:;				
_A30BB6F62_2553:
; //	asm	nop				
	nop
; //_A30BB6F62_2554:;				
_A30BB6F62_2554:
; //	asm	nop				
	nop
; //_A30BB6F62_2555:;				
_A30BB6F62_2555:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2556:;				
_A30BB6F62_2556:
; //	asm	nop				
	nop
; //_A30BB6F62_2557:;				
_A30BB6F62_2557:
; //	asm	nop				
	nop
; //_A30BB6F62_2558:;				
_A30BB6F62_2558:
; //	asm	nop				
	nop
; //_A30BB6F62_2559:;				
_A30BB6F62_2559:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A30BB6F62_2560:;				
_A30BB6F62_2560:
; //	asm	nop				
	nop
; //_A30BB6F62_2561:;				
_A30BB6F62_2561:
; //	asm	nop				
	nop
; //_A30BB6F62_2562:;				
_A30BB6F62_2562:
; //	asm	nop				
	nop
; //_A30BB6F62_2563:;				
_A30BB6F62_2563:
; //	asm	nop				
	nop
; //_A30BB6F62_2564:;				
_A30BB6F62_2564:
; //	asm	nop				
	nop
; //_A30BB6F62_2565:;				
_A30BB6F62_2565:
; //	asm	nop				
	nop
; //_A30BB6F62_2566:;				
_A30BB6F62_2566:
; //	asm	nop				
	nop
; //_A30BB6F62_2567:;				
_A30BB6F62_2567:
; //	asm	nop				
	nop
; //_A30BB6F62_2568:;				
_A30BB6F62_2568:
; //	asm	nop				
	nop
; //_A30BB6F62_2569:;				
_A30BB6F62_2569:
; //	asm	nop				
	nop
; //_A30BB6F62_2570:;				
_A30BB6F62_2570:
; //	asm	nop				
	nop
; //_A30BB6F62_2571:;				
_A30BB6F62_2571:
; //	asm	nop				
	nop
; //_A30BB6F62_2572:;				
_A30BB6F62_2572:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A30BB6F62_2573:;				
_A30BB6F62_2573:
; //	asm	nop				
	nop
; //_A30BB6F62_2574:;				
_A30BB6F62_2574:
; //	asm	nop				
	nop
; //_A30BB6F62_2575:;				
_A30BB6F62_2575:
; //	asm	nop				
	nop
; //_A30BB6F62_2576:;				
_A30BB6F62_2576:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_58:;					
LD63FD439_58:
; //_A30BB6F62_2577:;				
_A30BB6F62_2577:
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //	goto LD63FD439_50;			
	pch =	LD63FD439_50
	ljmp	LD63FD439_50
; //LD63FD439_51:;					
LD63FD439_51:
; //	sCX	= sAX;				
	AR	= AX
	CX	= AR
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_59;	
	if NZ	jmp LD63FD439_59
; //	goto LD63FD439_52;			
	pch =	LD63FD439_52
	ljmp	LD63FD439_52
; //LD63FD439_59:;					
LD63FD439_59:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_60;	
	if NZ	jmp LD63FD439_60
; //	goto LD63FD439_53;			
	pch =	LD63FD439_53
	ljmp	LD63FD439_53
; //LD63FD439_60:;					
LD63FD439_60:
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_61;	
	if NZ	jmp LD63FD439_61
; //	goto LD63FD439_54;			
	pch =	LD63FD439_54
	ljmp	LD63FD439_54
; //LD63FD439_61:;					
LD63FD439_61:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_62;	
	if NZ	jmp LD63FD439_62
; //	goto LD63FD439_55;			
	pch =	LD63FD439_55
	ljmp	LD63FD439_55
; //LD63FD439_62:;					
LD63FD439_62:
; //	sAX	= 0x0005;			
	AX	= 0x05
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_63;	
	if NZ	jmp LD63FD439_63
; //	goto LD63FD439_56;			
	pch =	LD63FD439_56
	ljmp	LD63FD439_56
; //LD63FD439_63:;					
LD63FD439_63:
; //	sAX	= 0x0004;			
	AX	= 0x04
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_64;	
	if NZ	jmp LD63FD439_64
; //	goto LD63FD439_57;			
	pch =	LD63FD439_57
	ljmp	LD63FD439_57
; //LD63FD439_64:;					
LD63FD439_64:
; //	goto	LD63FD439_58;			
	pch =	LD63FD439_58
	ljmp	LD63FD439_58
; //LD63FD439_50:;					
LD63FD439_50:
; //	goto LD63FD439_48;			
	pch =	LD63FD439_48
	ljmp	LD63FD439_48
; //LD63FD439_47:;					
LD63FD439_47:
; //_A30BB6F62_2578:;				
_A30BB6F62_2578:
; //LD63FD439_44:;					
LD63FD439_44:
; //_A30BB6F62_2579:;				
_A30BB6F62_2579:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_TRSF_color_setE1CC300C_end:;		
_WS_TRSF_color_setE1CC300C_end:
; //_A30BB6F62_2580:;				
_A30BB6F62_2580:
; //}
; //
; //void _WS_RefreshAD7B99B1()			
_WS_RefreshAD7B99B1:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A30BB6F62_2581:;				
_A30BB6F62_2581:
; //_A30BB6F62_2582:;				
_A30BB6F62_2582:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_66:;					
LD63FD439_66:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sfx_CMP_AX_CX_JBE();			
	pch	= sfx_CMP_AX_CX_JBE
	lcall	sfx_CMP_AX_CX_JBE
; //	if(__je__)	goto LD63FD439_70;	
	if ZR	jmp LD63FD439_70
; //	goto	LD63FD439_68;			
	pch =	LD63FD439_68
	ljmp	LD63FD439_68
; //LD63FD439_70:;					
LD63FD439_70:
; //	goto LD63FD439_67;			
	pch =	LD63FD439_67
	ljmp	LD63FD439_67
; //LD63FD439_69:;					
LD63FD439_69:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LD63FD439_66;			
	pch =	LD63FD439_66
	ljmp	LD63FD439_66
; //LD63FD439_67:;					
LD63FD439_67:
; //	
; //_A30BB6F62_2583:;				
_A30BB6F62_2583:
; //_A30BB6F62_2584:;				
_A30BB6F62_2584:
; //	asm AX = _LED_Buf98A4A35A+0;		
	AX = _LED_Buf98A4A35A+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0005;			
	CX	= 0x05
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	PUSH(sAX);				
	push	AX
; //	_WS_Send24bits851C5C55(STACK[sSP + 0]);	
	pch	= _WS_Send24bits851C5C55
	lcall	_WS_Send24bits851C5C55
; //	RESTORESP(1);				
	pop	AR
; //	goto LD63FD439_69;			
	pch =	LD63FD439_69
	ljmp	LD63FD439_69
; //LD63FD439_68:;					
LD63FD439_68:
; //_A30BB6F62_2585:;				
_A30BB6F62_2585:
; //_A30BB6F62_2586:;				
_A30BB6F62_2586:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //LD63FD439_65:;					
LD63FD439_65:
; //_A30BB6F62_2587:;				
_A30BB6F62_2587:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_RefreshAD7B99B1_end:;			
_WS_RefreshAD7B99B1_end:
; //_A30BB6F62_2588:;				
_A30BB6F62_2588:
; //}
; //
; //void _WS_Key_RGBC5B96B6D()			
_WS_Key_RGBC5B96B6D:
; //{
; //_A30BB6F62_2589:;				
_A30BB6F62_2589:
; //	
; //_A30BB6F62_2590:;				
_A30BB6F62_2590:
; //	asm I1 = LD63FD439_72+0;		
	I1 = LD63FD439_72+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LD63FD439_74;			
	pch =	LD63FD439_74
	ljmp	LD63FD439_74
; //LD63FD439_75:;					
LD63FD439_75:
; //_A30BB6F62_2591:;				
_A30BB6F62_2591:
; //_A30BB6F62_2592:;				
_A30BB6F62_2592:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2593:;				
_A30BB6F62_2593:
; //_A30BB6F62_2594:;				
_A30BB6F62_2594:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2595:;				
_A30BB6F62_2595:
; //_A30BB6F62_2596:;				
_A30BB6F62_2596:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2597:;				
_A30BB6F62_2597:
; //_A30BB6F62_2598:;				
_A30BB6F62_2598:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2599:;				
_A30BB6F62_2599:
; //	goto LD63FD439_73;			
	pch =	LD63FD439_73
	ljmp	LD63FD439_73
; //LD63FD439_76:;					
LD63FD439_76:
; //_A30BB6F62_2600:;				
_A30BB6F62_2600:
; //_A30BB6F62_2601:;				
_A30BB6F62_2601:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2602:;				
_A30BB6F62_2602:
; //_A30BB6F62_2603:;				
_A30BB6F62_2603:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2604:;				
_A30BB6F62_2604:
; //_A30BB6F62_2605:;				
_A30BB6F62_2605:
; //	sAX	= 0x001F;			
	AX	= 0x1F
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0006;			
	AX	= 0x06
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0004;			
	AX	= 0x04
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2606:;				
_A30BB6F62_2606:
; //_A30BB6F62_2607:;				
_A30BB6F62_2607:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2608:;				
_A30BB6F62_2608:
; //	goto LD63FD439_73;			
	pch =	LD63FD439_73
	ljmp	LD63FD439_73
; //LD63FD439_77:;					
LD63FD439_77:
; //_A30BB6F62_2609:;				
_A30BB6F62_2609:
; //_A30BB6F62_2610:;				
_A30BB6F62_2610:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2611:;				
_A30BB6F62_2611:
; //_A30BB6F62_2612:;				
_A30BB6F62_2612:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2613:;				
_A30BB6F62_2613:
; //_A30BB6F62_2614:;				
_A30BB6F62_2614:
; //	sAX	= 0xFF00;			
	AX	= 0xFF00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x000A;			
	AX	= 0x0A
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0007;			
	AX	= 0x07
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A30BB6F62_2615:;				
_A30BB6F62_2615:
; //_A30BB6F62_2616:;				
_A30BB6F62_2616:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A30BB6F62_2617:;				
_A30BB6F62_2617:
; //	goto LD63FD439_73;			
	pch =	LD63FD439_73
	ljmp	LD63FD439_73
; //	goto LD63FD439_73;			
	pch =	LD63FD439_73
	ljmp	LD63FD439_73
; //LD63FD439_74:;					
LD63FD439_74:
; //	sCX	= sAX;				
	AR	= AX
	CX	= AR
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_78;	
	if NZ	jmp LD63FD439_78
; //	goto LD63FD439_75;			
	pch =	LD63FD439_75
	ljmp	LD63FD439_75
; //LD63FD439_78:;					
LD63FD439_78:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_79;	
	if NZ	jmp LD63FD439_79
; //	goto LD63FD439_76;			
	pch =	LD63FD439_76
	ljmp	LD63FD439_76
; //LD63FD439_79:;					
LD63FD439_79:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_80;	
	if NZ	jmp LD63FD439_80
; //	goto LD63FD439_77;			
	pch =	LD63FD439_77
	ljmp	LD63FD439_77
; //LD63FD439_80:;					
LD63FD439_80:
; //	goto	LD63FD439_73;			
	pch =	LD63FD439_73
	ljmp	LD63FD439_73
; //LD63FD439_73:;					
LD63FD439_73:
; //_A30BB6F62_2618:;				
_A30BB6F62_2618:
; //	asm I1 = LD63FD439_72+0;		
	I1 = LD63FD439_72+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_72;		
	I1	= LD63FD439_72
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //_A30BB6F62_2619:;				
_A30BB6F62_2619:
; //	asm I1 = LD63FD439_72+0;		
	I1 = LD63FD439_72+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JA();			
	pch	= sfx_CMP_AX_CX_JA
	lcall	sfx_CMP_AX_CX_JA
; //	if(__je__)	goto LD63FD439_82;	
	if ZR	jmp LD63FD439_82
; //	goto	LD63FD439_81;			
	pch =	LD63FD439_81
	ljmp	LD63FD439_81
; //LD63FD439_82:;					
LD63FD439_82:
; //_A30BB6F62_2620:;				
_A30BB6F62_2620:
; //	LD63FD439_72+0	= 0x00;			
	AR	= 0x00
	rm[LD63FD439_72+0]	= AR
; //LD63FD439_81:;					
LD63FD439_81:
; //_A30BB6F62_2621:;				
_A30BB6F62_2621:
; //_A30BB6F62_2622:;				
_A30BB6F62_2622:
; //_A30BB6F62_2623:;				
_A30BB6F62_2623:
; //	sAX	= 0x0032;			
	AX	= 0x32
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //LD63FD439_71:;					
LD63FD439_71:
; //_A30BB6F62_2624:;				
_A30BB6F62_2624:
; //	return;					
	rets
; //_WS_Key_RGBC5B96B6D_end:;			
_WS_Key_RGBC5B96B6D_end:
; //_A30BB6F62_2625:;				
_A30BB6F62_2625:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_WS2811_02F950F9_s(void)	
ginit_code_WS2811_02F950F9_s:
; //{
; //	asm P1 = #ginit_seg_WS2811_02F950F9_s+0;
	P1 = #ginit_seg_WS2811_02F950F9_s+0//
; //	asm I1 = LD63FD439_15;			
	I1 = LD63FD439_15//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_WS2811_02F950F9_s+1;
	P1 = #ginit_seg_WS2811_02F950F9_s+1//
; //	asm I1 = LD63FD439_72;			
	I1 = LD63FD439_72//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
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
.code
; //
; //
; //
; //
; //__int16 ginit_seg_WS2811_02F950F9_s[2] = {	
ginit_seg_WS2811_02F950F9_s:
; //						
DW 
; //	0x0000,					
DW 0x0000,
; //						
DW 
; //	0x0000					
DW 0x0000,
; //};
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
