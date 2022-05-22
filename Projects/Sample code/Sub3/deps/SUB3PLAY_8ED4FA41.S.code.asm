; sub3play.c Code Start!!;
VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

; //
; //
; //rjmp void _ClearRenderBufB079D01D();
; //rjmp void _Sub3Initial96BE24F3();
; //rjmp void _WaitPCM_Empty_size53398B9D();
; //rjmp void _Sub3ZeroFillABFF23AA();
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
; //rjmp void Sbb_Ch0GetBts();
; //rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);
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
; //rjmp void _ClearRenderBufB079D01D()		
_ClearRenderBufB079D01D:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE23BDF6A_87:;					
_AE23BDF6A_87:
; //	
; //_AE23BDF6A_88:;					
_AE23BDF6A_88:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_AE23BDF6A_89:;					
_AE23BDF6A_89:
; //	asm	AR = AX				
	AR = AX
; //_AE23BDF6A_90:;					
_AE23BDF6A_90:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_AE23BDF6A_91:;					
_AE23BDF6A_91:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LFB78B58C_30:;					
LFB78B58C_30:
; //_AE23BDF6A_92:;					
_AE23BDF6A_92:
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
; //	if(__jnz__)	goto LFB78B58C_31;	
	if NZ	jmp LFB78B58C_31
; //	goto	LFB78B58C_29;			
	jmp	LFB78B58C_29
; //LFB78B58C_31:;					
LFB78B58C_31:
; //	
; //_AE23BDF6A_93:;					
_AE23BDF6A_93:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AE23BDF6A_94:;					
_AE23BDF6A_94:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_AE23BDF6A_95:;					
_AE23BDF6A_95:
; //	goto LFB78B58C_30;			
	jmp	LFB78B58C_30
; //LFB78B58C_29:;					
LFB78B58C_29:
; //LFB78B58C_28:;					
LFB78B58C_28:
; //_AE23BDF6A_96:;					
_AE23BDF6A_96:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_AE23BDF6A_97:;					
_AE23BDF6A_97:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_AE23BDF6A_98:;					
_AE23BDF6A_98:
; //_AE23BDF6A_99:;					
_AE23BDF6A_99:
; //	asm	dsi				
	dsi
; //_AE23BDF6A_100:;				
_AE23BDF6A_100:
; //	asm	nop				
	nop
; //	
; //	
; //_AE23BDF6A_101:;				
_AE23BDF6A_101:
; //_AE23BDF6A_102:;				
_AE23BDF6A_102:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_AE23BDF6A_103:;				
_AE23BDF6A_103:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_AE23BDF6A_104:;				
_AE23BDF6A_104:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_105:;				
_AE23BDF6A_105:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_106:;				
_AE23BDF6A_106:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_AE23BDF6A_107:;				
_AE23BDF6A_107:
; //_AE23BDF6A_108:;				
_AE23BDF6A_108:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_32:;					
LFB78B58C_32:
; //_AE23BDF6A_109:;				
_AE23BDF6A_109:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_AE23BDF6A_110:;				
_AE23BDF6A_110:
; //}
; //
; //rjmp void _WaitPCM_Empty_size53398B9D()		
_WaitPCM_Empty_size53398B9D:
; //{
; //	__int16 _x_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE23BDF6A_111:;				
_AE23BDF6A_111:
; //	
; //_AE23BDF6A_112:;				
_AE23BDF6A_112:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_113:;				
_AE23BDF6A_113:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LFB78B58C_35;	
	if ZR	jmp LFB78B58C_35
; //	goto	LFB78B58C_34;			
	jmp	LFB78B58C_34
; //LFB78B58C_35:;					
LFB78B58C_35:
; //	
; //_AE23BDF6A_114:;				
_AE23BDF6A_114:
; //	sAX	= 0x01FF;			
	AX	= 0x01FF
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LFB78B58C_34:;					
LFB78B58C_34:
; //_AE23BDF6A_115:;				
_AE23BDF6A_115:
; //_AE23BDF6A_116:;				
_AE23BDF6A_116:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0121;			
	CX	= 0x0121
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_117:;				
_AE23BDF6A_117:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_33;			
	jmp	LFB78B58C_33
; //LFB78B58C_33:;					
LFB78B58C_33:
; //_AE23BDF6A_118:;				
_AE23BDF6A_118:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_AE23BDF6A_119:;				
_AE23BDF6A_119:
; //}
; //
; //rjmp void _Sub3ZeroFillABFF23AA()		
_Sub3ZeroFillABFF23AA:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE23BDF6A_120:;				
_AE23BDF6A_120:
; //_AE23BDF6A_121:;				
_AE23BDF6A_121:
; //	asm	push CBL			
	push CBL
; //	
; //_AE23BDF6A_122:;				
_AE23BDF6A_122:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_AE23BDF6A_123:;				
_AE23BDF6A_123:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AE23BDF6A_124:;				
_AE23BDF6A_124:
; //	asm	AR = AX				
	AR = AX
; //_AE23BDF6A_125:;				
_AE23BDF6A_125:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_AE23BDF6A_126:;				
_AE23BDF6A_126:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AX	= 0x0120
	rm[I1]	= AX
; //LFB78B58C_38:;					
LFB78B58C_38:
; //_AE23BDF6A_127:;				
_AE23BDF6A_127:
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
; //	if(__jnz__)	goto LFB78B58C_39;	
	if NZ	jmp LFB78B58C_39
; //	goto	LFB78B58C_37;			
	jmp	LFB78B58C_37
; //LFB78B58C_39:;					
LFB78B58C_39:
; //	
; //_AE23BDF6A_128:;				
_AE23BDF6A_128:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AE23BDF6A_129:;				
_AE23BDF6A_129:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_AE23BDF6A_130:;				
_AE23BDF6A_130:
; //	goto LFB78B58C_38;			
	jmp	LFB78B58C_38
; //LFB78B58C_37:;					
LFB78B58C_37:
; //_AE23BDF6A_131:;				
_AE23BDF6A_131:
; //_AE23BDF6A_132:;				
_AE23BDF6A_132:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_133:;				
_AE23BDF6A_133:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_36:;					
LFB78B58C_36:
; //_AE23BDF6A_134:;				
_AE23BDF6A_134:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_AE23BDF6A_135:;				
_AE23BDF6A_135:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_AE23BDF6A_136:;				
_AE23BDF6A_136:
; //	
; //_AE23BDF6A_137:;				
_AE23BDF6A_137:
; //	sSI	= (int)&_sdata_0_4_0;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE23BDF6A_138:;				
_AE23BDF6A_138:
; //_AE23BDF6A_139:;				
_AE23BDF6A_139:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_AE23BDF6A_140:;				
_AE23BDF6A_140:
; //	asm AX = SUBFLTI+0;			
	AX = SUBFLTI+0//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_141:;				
_AE23BDF6A_141:
; //	asm AX = SUBFLTI+1;			
	AX = SUBFLTI+1//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_142:;				
_AE23BDF6A_142:
; //	asm AX = SUBFLTI+2;			
	AX = SUBFLTI+2//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_143:;				
_AE23BDF6A_143:
; //	asm AX = SUBFLTI+3;			
	AX = SUBFLTI+3//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE23BDF6A_144:;				
_AE23BDF6A_144:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_145:;				
_AE23BDF6A_145:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_146:;				
_AE23BDF6A_146:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE23BDF6A_147:;				
_AE23BDF6A_147:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_AE23BDF6A_148:;				
_AE23BDF6A_148:
; //	asm	eni				
	eni
; //LFB78B58C_40:;					
LFB78B58C_40:
; //_AE23BDF6A_149:;				
_AE23BDF6A_149:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_AE23BDF6A_150:;				
_AE23BDF6A_150:
; //}
; //
; //rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_AE23BDF6A_151:;				
_AE23BDF6A_151:
; //_AE23BDF6A_152:;				
_AE23BDF6A_152:
; //	asm	push I1				
	push I1
; //_AE23BDF6A_153:;				
_AE23BDF6A_153:
; //	asm	push P1				
	push P1
; //_AE23BDF6A_154:;				
_AE23BDF6A_154:
; //	asm	push AX				
	push AX
; //_AE23BDF6A_155:;				
_AE23BDF6A_155:
; //	asm	push BX				
	push BX
; //_AE23BDF6A_156:;				
_AE23BDF6A_156:
; //	asm	push CX				
	push CX
; //_AE23BDF6A_157:;				
_AE23BDF6A_157:
; //	asm	push DX				
	push DX
; //_AE23BDF6A_158:;				
_AE23BDF6A_158:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_AE23BDF6A_159:;				
_AE23BDF6A_159:
; //	asm	push AR				
	push AR
; //	
; //_AE23BDF6A_160:;				
_AE23BDF6A_160:
; //_AE23BDF6A_161:;				
_AE23BDF6A_161:
; //_AE23BDF6A_162:;				
_AE23BDF6A_162:
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	sSI	= (int)&bts_ch0_get_ix[0];	
	I1	= bts_ch0_get_ix
; //	PUSH(sAX);				
	push	AX
; //	PUSH(sDX);				
	push	DX
; //	sfx_GETSILONG_BXCX();			
	CX	= rm[I1++]
	BX	= rm[I1--]
; //	sAX = 0x0001;				
	AX	= 0x01
; //	sDX = 0x0000;				
	DX	= 0x00
; //	sfx_ADDLONG_BXCX_DXAX();		
	AR	= AX
	CX	= CX + AR
	AR	= DX
	BX	= BX + AR + C
; //	sfx_STORSILONG_BXCX();			
	rm[I1++]	= CX
	rm[I1--]	= BX
; //	sDX	= POP();			
	pop	DX
; //	sAX	= POP();			
	pop	AX
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _lptr_read
	lcall	_lptr_read
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	PUSH(sAX);				
	push	AX
; //	vXCHG(STACK[sSP + 0]);			
	AR	= AX
	AX	= xchg AR
; //	RESTORESP(1);				
	pop	AR
; //_AE23BDF6A_163:;				
_AE23BDF6A_163:
; //	asm	pop AR				
	pop AR
; //_AE23BDF6A_164:;				
_AE23BDF6A_164:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_AE23BDF6A_165:;				
_AE23BDF6A_165:
; //	asm	pop DX				
	pop DX
; //_AE23BDF6A_166:;				
_AE23BDF6A_166:
; //	asm	pop CX				
	pop CX
; //_AE23BDF6A_167:;				
_AE23BDF6A_167:
; //	asm	pop BX				
	pop BX
; //	
; //_AE23BDF6A_168:;				
_AE23BDF6A_168:
; //_AE23BDF6A_169:;				
_AE23BDF6A_169:
; //	asintax();				
; //_AE23BDF6A_170:;				
_AE23BDF6A_170:
; //	asm	AR = AX				
	AR = AX
; //_AE23BDF6A_171:;				
_AE23BDF6A_171:
; //	asm	pop AX				
	pop AX
; //_AE23BDF6A_172:;				
_AE23BDF6A_172:
; //	asm	pop P1				
	pop P1
; //_AE23BDF6A_173:;				
_AE23BDF6A_173:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_41:;					
LFB78B58C_41:
; //_AE23BDF6A_174:;				
_AE23BDF6A_174:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_AE23BDF6A_175:;				
_AE23BDF6A_175:
; //}
; //
; //rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
_Sbb_SkipdataE1C72441:
; //{
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //LFB78B58C_42:;					
LFB78B58C_42:
; //_AE23BDF6A_176:;				
_AE23BDF6A_176:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sbb_SkipdataE1C72441_end:;			
_Sbb_SkipdataE1C72441_end:
; //_AE23BDF6A_177:;				
_AE23BDF6A_177:
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
