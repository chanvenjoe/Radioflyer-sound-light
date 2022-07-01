; playadp.c Code Start!!;
VarRM[0:4095]={
 _iADPCCACC469,_adpch30670376[36],_adpFLTG0FBE3CB5[2] 
};

; //
.code
; //
; //
; //rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
; //rjmp void ADPCM_CHX_Init();
; //rjmp void ADPCM_CHXGetBts();
; //rjmp void _DoADPCM9CD0E20D();
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
; //rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)
_playADPCMBACD5AFD:
; //{
; //	__int16 _i_1_2;
; //	__int16 _p_1_4;
; //	__int16 _q_1_6;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -3
	BP	+= AR
; //_AE3845712_104:;				
_AE3845712_104:
; //	
; //_AE3845712_105:;				
_AE3845712_105:
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_106:;				
_AE3845712_106:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
; //L7F5A46A0_26:;					
L7F5A46A0_26:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L7F5A46A0_30;	
	if ZR	jmp L7F5A46A0_30
; //	goto	L7F5A46A0_28;			
	jmp	L7F5A46A0_28
; //L7F5A46A0_30:;					
L7F5A46A0_30:
; //	goto L7F5A46A0_27;			
	jmp	L7F5A46A0_27
; //L7F5A46A0_29:;					
L7F5A46A0_29:
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
; //	goto L7F5A46A0_26;			
	jmp	L7F5A46A0_26
; //L7F5A46A0_27:;					
L7F5A46A0_27:
; //	
; //_AE3845712_107:;				
_AE3845712_107:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
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
; //	sfx_CHECKZEROLONG();			
	AR	= AX
	AR	|= DX
; //	if(__jz__)	goto L7F5A46A0_32;	
	if ZR	jmp L7F5A46A0_32
; //	goto	L7F5A46A0_31;			
	jmp	L7F5A46A0_31
; //L7F5A46A0_32:;					
L7F5A46A0_32:
; //	
; //_AE3845712_108:;				
_AE3845712_108:
; //_AE3845712_109:;				
_AE3845712_109:
; //	sAX	= 0x0012;			
	AX	= 0x12
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDX	= 0;				
	DX	= 0x00
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	pch	= _memset5A9D755A
	lcall	_memset5A9D755A
; //	RESTORESP(4);				
	AR	= 4
	BP	+= AR
; //_AE3845712_110:;				
_AE3845712_110:
; //	asm AX = #_adpdata32993E3B+0;		
	AX = #_adpdata32993E3B+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_index_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0004;			
	CX	= 0x04
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_111:;				
_AE3845712_111:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI++;		
	AX	= pm[P1++]
; //	sDX	= *(__int16*)sDI--;		
	DX	= pm[P1--]
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE3845712_112:;				
_AE3845712_112:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0011;			
	CX	= 0x11
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_113:;				
_AE3845712_113:
; //	asm AX = _adpFLTG0FBE3CB5+0;		
	AX = _adpFLTG0FBE3CB5+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_114:;				
_AE3845712_114:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L7F5A46A0_25;			
	jmp	L7F5A46A0_25
; //L7F5A46A0_31:;					
L7F5A46A0_31:
; //_AE3845712_115:;				
_AE3845712_115:
; //_AE3845712_116:;				
_AE3845712_116:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0012;			
	AR = 0x0012//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //_AE3845712_117:;				
_AE3845712_117:
; //	goto L7F5A46A0_29;			
	jmp	L7F5A46A0_29
; //L7F5A46A0_28:;					
L7F5A46A0_28:
; //_AE3845712_118:;				
_AE3845712_118:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L7F5A46A0_25;			
	jmp	L7F5A46A0_25
; //L7F5A46A0_25:;					
L7F5A46A0_25:
; //_AE3845712_119:;				
_AE3845712_119:
; //	return;					
	AR	= 3
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_playADPCMBACD5AFD_end:;			
_playADPCMBACD5AFD_end:
; //_AE3845712_120:;				
_AE3845712_120:
; //}
; //
; //rjmp void ADPCM_CHX_Init()			
ADPCM_CHX_Init:
; //{
; //_AE3845712_121:;				
_AE3845712_121:
; //	
; //_AE3845712_122:;				
_AE3845712_122:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE3845712_123:;				
_AE3845712_123:
; //_AE3845712_124:;				
_AE3845712_124:
; //	sAX	= 0x0024;			
	AX	= 0x24
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	sDX	= 0;				
	DX	= 0x00
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	pch	= _memset5A9D755A
	lcall	_memset5A9D755A
; //	RESTORESP(4);				
	AR	= 4
	BP	+= AR
; //L7F5A46A0_33:;					
L7F5A46A0_33:
; //_AE3845712_125:;				
_AE3845712_125:
; //	return;					
	rets
; //ADPCM_CHX_Init_end:;				
ADPCM_CHX_Init_end:
; //_AE3845712_126:;				
_AE3845712_126:
; //}
; //
; //rjmp void ADPCM_CHXGetBts()			
ADPCM_CHXGetBts:
; //{
; //_AE3845712_127:;				
_AE3845712_127:
; //_AE3845712_128:;				
_AE3845712_128:
; //	asm	push AX				
	push AX
; //_AE3845712_129:;				
_AE3845712_129:
; //	asm	push BX				
	push BX
; //_AE3845712_130:;				
_AE3845712_130:
; //	asm	push CX				
	push CX
; //_AE3845712_131:;				
_AE3845712_131:
; //	asm	push DX				
	push DX
; //_AE3845712_132:;				
_AE3845712_132:
; //	asm	push I1				
	push I1
; //_AE3845712_133:;				
_AE3845712_133:
; //	asm	push P0				
	push P0
; //_AE3845712_134:;				
_AE3845712_134:
; //	asm	AR = P0.hh			
	AR = P0.hh
; //_AE3845712_135:;				
_AE3845712_135:
; //	asm	push AR				
	push AR
; //	
; //_AE3845712_136:;				
_AE3845712_136:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
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
; //	PUSH(sDX);				
	push	DX
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sBX	= 0x0000;			
	BX	= 0x00
; //	sfx_ADDLONG();				
	AR	= CX
	AX	= AX + AR
	AR	= BX
	DX	= DX + AR + C
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	sDX	= POP();			
	pop	DX
; //	sAX	= POP();			
	pop	AX
; //_AE3845712_137:;				
_AE3845712_137:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_138:;				
_AE3845712_138:
; //	asm	P0 = AR				
	P0 = AR
; //_AE3845712_139:;				
_AE3845712_139:
; //	asm	AR = DX				
	AR = DX
; //_AE3845712_140:;				
_AE3845712_140:
; //	asm	P0.hh = AR			
	P0.hh = AR
; //	
; //_AE3845712_141:;				
_AE3845712_141:
; //_AE3845712_142:;				
_AE3845712_142:
; //	read_P0();				
	AX	= pm[P0]
; //_AE3845712_143:;				
_AE3845712_143:
; //	asm	pop AR				
	pop AR
; //_AE3845712_144:;				
_AE3845712_144:
; //	asm	P0.hh = AR			
	P0.hh = AR
; //_AE3845712_145:;				
_AE3845712_145:
; //	asm	pop P0				
	pop P0
; //_AE3845712_146:;				
_AE3845712_146:
; //	asm	pop I1				
	pop I1
; //_AE3845712_147:;				
_AE3845712_147:
; //	asm	pop DX				
	pop DX
; //_AE3845712_148:;				
_AE3845712_148:
; //	asm	pop CX				
	pop CX
; //_AE3845712_149:;				
_AE3845712_149:
; //	asm	pop BX				
	pop BX
; //	
; //_AE3845712_150:;				
_AE3845712_150:
; //_AE3845712_151:;				
_AE3845712_151:
; //	asintax();				
; //_AE3845712_152:;				
_AE3845712_152:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_153:;				
_AE3845712_153:
; //	asm	pop AX				
	pop AX
; //L7F5A46A0_34:;					
L7F5A46A0_34:
; //_AE3845712_154:;				
_AE3845712_154:
; //	return;					
	rets
; //ADPCM_CHXGetBts_end:;				
ADPCM_CHXGetBts_end:
; //_AE3845712_155:;				
_AE3845712_155:
; //}
; //
; //rjmp void L7F5A46A0_35()			
L7F5A46A0_35:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE3845712_156:;				
_AE3845712_156:
; //	
; //_AE3845712_157:;				
_AE3845712_157:
; //	asm I1 = inbuf+0;			
	I1 = inbuf+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AE3845712_158:;				
_AE3845712_158:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_159:;				
_AE3845712_159:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_AE3845712_160:;				
_AE3845712_160:
; //	_i_1_2+0	= 0x40;			
	I1	= rm[BP_SAVE]
	AX	= 0x40
	rm[I1]	= AX
; //L7F5A46A0_39:;					
L7F5A46A0_39:
; //_AE3845712_161:;				
_AE3845712_161:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L7F5A46A0_40;	
	if NZ	jmp L7F5A46A0_40
; //	goto	L7F5A46A0_38;			
	jmp	L7F5A46A0_38
; //L7F5A46A0_40:;					
L7F5A46A0_40:
; //	
; //_AE3845712_162:;				
_AE3845712_162:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AE3845712_163:;				
_AE3845712_163:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	
; //_AE3845712_164:;				
_AE3845712_164:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //_AE3845712_165:;				
_AE3845712_165:
; //	goto L7F5A46A0_39;			
	jmp	L7F5A46A0_39
; //L7F5A46A0_38:;					
L7F5A46A0_38:
; //L7F5A46A0_37:;					
L7F5A46A0_37:
; //_AE3845712_166:;				
_AE3845712_166:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L7F5A46A0_35_end:;				
L7F5A46A0_35_end:
; //_AE3845712_167:;				
_AE3845712_167:
; //}
; //
; //rjmp void L7F5A46A0_41(__int16 _vol_0_4)	
L7F5A46A0_41:
; //{
; //	__int16 _p_1_2;
; //	__int16 _i_1_4;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -2
	BP	+= AR
; //_AE3845712_168:;				
_AE3845712_168:
; //	
; //_AE3845712_169:;				
_AE3845712_169:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
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
; //	sfx_CHECKZEROLONG();			
	AR	= AX
	AR	|= DX
; //	if(__jnz__)	goto L7F5A46A0_45;	
	if NZ	jmp L7F5A46A0_45
; //	goto	L7F5A46A0_44;			
	jmp	L7F5A46A0_44
; //L7F5A46A0_45:;					
L7F5A46A0_45:
; //	
; //_AE3845712_170:;				
_AE3845712_170:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000C;			
	CX	= 0x0C
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //_AE3845712_171:;				
_AE3845712_171:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_172:;				
_AE3845712_172:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_AE3845712_173:;				
_AE3845712_173:
; //_AE3845712_174:;				
_AE3845712_174:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x36]	= sAX;			
	AR	= AX
	io[0x36]	= AR
; //_AE3845712_175:;				
_AE3845712_175:
; //_AE3845712_176:;				
_AE3845712_176:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x36]	= sAX;			
	AR	= AX
	io[0x36]	= AR
; //_AE3845712_177:;				
_AE3845712_177:
; //_AE3845712_178:;				
_AE3845712_178:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x36]	= sAX;			
	AR	= AX
	io[0x36]	= AR
; //_AE3845712_179:;				
_AE3845712_179:
; //_AE3845712_180:;				
_AE3845712_180:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x36]	= sAX;			
	AR	= AX
	io[0x36]	= AR
; //_AE3845712_181:;				
_AE3845712_181:
; //_AE3845712_182:;				
_AE3845712_182:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x3D]	= sAX;			
	AR	= AX
	io[0x3D]	= AR
; //_AE3845712_183:;				
_AE3845712_183:
; //_AE3845712_184:;				
_AE3845712_184:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x3E]	= sAX;			
	AR	= AX
	io[0x3E]	= AR
; //_AE3845712_185:;				
_AE3845712_185:
; //	sSI	= (int)&_vol_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_AE3845712_186:;				
_AE3845712_186:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_AE3845712_187:;				
_AE3845712_187:
; //	asm I1 = inbuf+0;			
	I1 = inbuf+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_p_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_188:;				
_AE3845712_188:
; //	_i_1_4+0	= 0x20;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AX	= 0x20
	rm[I1]	= AX
; //L7F5A46A0_47:;					
L7F5A46A0_47:
; //_AE3845712_189:;				
_AE3845712_189:
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L7F5A46A0_48;	
	if NZ	jmp L7F5A46A0_48
; //	goto	L7F5A46A0_46;			
	jmp	L7F5A46A0_46
; //L7F5A46A0_48:;					
L7F5A46A0_48:
; //	
; //_AE3845712_190:;				
_AE3845712_190:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x00].b14;			
	test io[0x00].b14//
; //	if(__jz__) goto L7F5A46A0_49;		
	if ZR	jmp L7F5A46A0_49
; //	sAX	= 1;				
	AX	= 0x01
; //L7F5A46A0_49:;					
L7F5A46A0_49:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto L7F5A46A0_51;	
	if ZR	jmp L7F5A46A0_51
; //	goto	L7F5A46A0_50;			
	jmp	L7F5A46A0_50
; //L7F5A46A0_51:;					
L7F5A46A0_51:
; //	
; //_AE3845712_191:;				
_AE3845712_191:
; //_AE3845712_192:;				
_AE3845712_192:
; //	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	pch	= _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E
	lcall	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto L7F5A46A0_53;	
	if ZR	jmp L7F5A46A0_53
; //	goto	L7F5A46A0_52;			
	jmp	L7F5A46A0_52
; //L7F5A46A0_53:;					
L7F5A46A0_53:
; //	
; //_AE3845712_193:;				
_AE3845712_193:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sDX	= 0x0000;			
	DX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE3845712_194:;				
_AE3845712_194:
; //	goto L7F5A46A0_43;			
	jmp	L7F5A46A0_43
; //L7F5A46A0_52:;					
L7F5A46A0_52:
; //_AE3845712_195:;				
_AE3845712_195:
; //_AE3845712_196:;				
_AE3845712_196:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x36]	= sAX;			
	AR	= AX
	io[0x36]	= AR
; //L7F5A46A0_50:;					
L7F5A46A0_50:
; //_AE3845712_197:;				
_AE3845712_197:
; //_AE3845712_198:;				
_AE3845712_198:
; //	sSI	= (int)&_p_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_p_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //	sfx_INT2LONG_AX();			
	DX	= 0
	test	AX.b15
	if ZR jmp LFE021D20_0
	DX = -1
LFE021D20_0:
; //	sCX	= POP();			
	pop	CX
; //	sBX	= POP();			
	pop	BX
; //	sfx_ADDLONG();				
	AR	= CX
	AX	= AX + AR
	AR	= BX
	DX	= DX + AR + C
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	sSI	= (int)&_p_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0002;			
	AR = 0x0002//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm rm[I1] = AX + AR;			
	rm[I1] = AX + AR//
; //_AE3845712_199:;				
_AE3845712_199:
; //	goto L7F5A46A0_47;			
	jmp	L7F5A46A0_47
; //L7F5A46A0_46:;					
L7F5A46A0_46:
; //	
; //_AE3845712_200:;				
_AE3845712_200:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000C;			
	CX	= 0x0C
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //_AE3845712_201:;				
_AE3845712_201:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_202:;				
_AE3845712_202:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_AE3845712_203:;				
_AE3845712_203:
; //	sAX	= io[0x36];			
	AR	= io[0x36]
	AX	= AR
; //_AE3845712_204:;				
_AE3845712_204:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	
; //_AE3845712_205:;				
_AE3845712_205:
; //	sAX	= io[0x36];			
	AR	= io[0x36]
	AX	= AR
; //_AE3845712_206:;				
_AE3845712_206:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	
; //_AE3845712_207:;				
_AE3845712_207:
; //	sAX	= io[0x36];			
	AR	= io[0x36]
	AX	= AR
; //_AE3845712_208:;				
_AE3845712_208:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	
; //_AE3845712_209:;				
_AE3845712_209:
; //	sAX	= io[0x36];			
	AR	= io[0x36]
	AX	= AR
; //_AE3845712_210:;				
_AE3845712_210:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	
; //_AE3845712_211:;				
_AE3845712_211:
; //	sAX	= io[0x3D];			
	AR	= io[0x3D]
	AX	= AR
; //_AE3845712_212:;				
_AE3845712_212:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //L7F5A46A0_44:;					
L7F5A46A0_44:
; //_AE3845712_213:;				
_AE3845712_213:
; //L7F5A46A0_43:;					
L7F5A46A0_43:
; //_AE3845712_214:;				
_AE3845712_214:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L7F5A46A0_41_end:;				
L7F5A46A0_41_end:
; //_AE3845712_215:;				
_AE3845712_215:
; //}
; //
; //rjmp void L7F5A46A0_54()			
L7F5A46A0_54:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE3845712_216:;				
_AE3845712_216:
; //	
; //_AE3845712_217:;				
_AE3845712_217:
; //	asm I1 = inbuf+0;			
	I1 = inbuf+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AE3845712_218:;				
_AE3845712_218:
; //	asm	AR = AX				
	AR = AX
; //_AE3845712_219:;				
_AE3845712_219:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_AE3845712_220:;				
_AE3845712_220:
; //	sAX	= io[0x33];			
	AR	= io[0x33]
	AX	= AR
; //_AE3845712_221:;				
_AE3845712_221:
; //	_i_1_2+0	= 0x20;			
	I1	= rm[BP_SAVE]
	AX	= 0x20
	rm[I1]	= AX
; //L7F5A46A0_58:;					
L7F5A46A0_58:
; //_AE3845712_222:;				
_AE3845712_222:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L7F5A46A0_59;	
	if NZ	jmp L7F5A46A0_59
; //	goto	L7F5A46A0_57;			
	jmp	L7F5A46A0_57
; //L7F5A46A0_59:;					
L7F5A46A0_59:
; //	
; //_AE3845712_223:;				
_AE3845712_223:
; //_AE3845712_224:;				
_AE3845712_224:
; //	read_I0P();				
	AX	= rm[I0++]
; //	io[0x33]	= sAX;			
	AR	= AX
	io[0x33]	= AR
; //_AE3845712_225:;				
_AE3845712_225:
; //_AE3845712_226:;				
_AE3845712_226:
; //	read_I0M();				
	AX	= rm[I0--]
; //	io[0x33]	= sAX;			
	AR	= AX
	io[0x33]	= AR
; //	
; //_AE3845712_227:;				
_AE3845712_227:
; //	sAX	= io[0x33];			
	AR	= io[0x33]
	AX	= AR
; //_AE3845712_228:;				
_AE3845712_228:
; //	asm	rm[I0++2] = AX			
	rm[I0++2] = AX
; //_AE3845712_229:;				
_AE3845712_229:
; //	goto L7F5A46A0_58;			
	jmp	L7F5A46A0_58
; //L7F5A46A0_57:;					
L7F5A46A0_57:
; //_AE3845712_230:;				
_AE3845712_230:
; //	asm I1 = inbuf+0;			
	I1 = inbuf+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm not AR.b6;				
	not AR.b6//
; //	asm rm[I1] = AR;			
	rm[I1] = AR//
; //L7F5A46A0_56:;					
L7F5A46A0_56:
; //_AE3845712_231:;				
_AE3845712_231:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L7F5A46A0_54_end:;				
L7F5A46A0_54_end:
; //_AE3845712_232:;				
_AE3845712_232:
; //}
; //
; //rjmp void _DoADPCM9CD0E20D()			
_DoADPCM9CD0E20D:
; //{
; //	__int16 _i_1_2;
; //	__int16 _p_1_4;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -2
	BP	+= AR
; //_AE3845712_233:;				
_AE3845712_233:
; //	
; //_AE3845712_234:;				
_AE3845712_234:
; //	asm I1 = inbuf+0;			
	I1 = inbuf+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = outbuf+0;			
	I1 = outbuf+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX ^ AR;			
	AX = AX ^ AR//
; //	asm AR = 0x0040;			
	AR = 0x0040//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto L7F5A46A0_62;	
	if ZR	jmp L7F5A46A0_62
; //	goto	L7F5A46A0_61;			
	jmp	L7F5A46A0_61
; //L7F5A46A0_62:;					
L7F5A46A0_62:
; //_AE3845712_235:;				
_AE3845712_235:
; //	goto L7F5A46A0_60;			
	jmp	L7F5A46A0_60
; //L7F5A46A0_61:;					
L7F5A46A0_61:
; //_AE3845712_236:;				
_AE3845712_236:
; //_AE3845712_237:;				
_AE3845712_237:
; //	asm set io[0x09].b0;			
	set io[0x09].b0//
; //_AE3845712_238:;				
_AE3845712_238:
; //_AE3845712_239:;				
_AE3845712_239:
; //	L7F5A46A0_35();				
	pch	= L7F5A46A0_35
	lcall	L7F5A46A0_35
; //_AE3845712_240:;				
_AE3845712_240:
; //	asm AX = _adpFLTG0FBE3CB5+0;		
	AX = _adpFLTG0FBE3CB5+0//
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE3845712_241:;				
_AE3845712_241:
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE3845712_242:;				
_AE3845712_242:
; //	_i_1_2+0	= 0x02;			
	I1	= rm[BP_SAVE]
	AX	= 0x02
	rm[I1]	= AX
; //L7F5A46A0_64:;					
L7F5A46A0_64:
; //_AE3845712_243:;				
_AE3845712_243:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L7F5A46A0_65;	
	if NZ	jmp L7F5A46A0_65
; //	goto	L7F5A46A0_63;			
	jmp	L7F5A46A0_63
; //L7F5A46A0_65:;					
L7F5A46A0_65:
; //	
; //_AE3845712_244:;				
_AE3845712_244:
; //_AE3845712_245:;				
_AE3845712_245:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	L7F5A46A0_41(STACK[sSP + 0]);		
	pch	= L7F5A46A0_41
	lcall	L7F5A46A0_41
; //	RESTORESP(1);				
	pop	AR
; //_AE3845712_246:;				
_AE3845712_246:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&ADPCM_Tmpi;		
	I1	= ADPCM_Tmpi
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm AR = 0x0012;			
	AR = 0x0012//
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //_AE3845712_247:;				
_AE3845712_247:
; //	goto L7F5A46A0_64;			
	jmp	L7F5A46A0_64
; //L7F5A46A0_63:;					
L7F5A46A0_63:
; //_AE3845712_248:;				
_AE3845712_248:
; //_AE3845712_249:;				
_AE3845712_249:
; //	L7F5A46A0_54();				
	pch	= L7F5A46A0_54
	lcall	L7F5A46A0_54
; //_AE3845712_250:;				
_AE3845712_250:
; //	asm clr io[0x09].b0;			
	clr io[0x09].b0//
; //L7F5A46A0_60:;					
L7F5A46A0_60:
; //_AE3845712_251:;				
_AE3845712_251:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_DoADPCM9CD0E20D_end:;				
_DoADPCM9CD0E20D_end:
; //_AE3845712_252:;				
_AE3845712_252:
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
