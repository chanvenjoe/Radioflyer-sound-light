; sub3play.c Code Start!!;
VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

; //
.code
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
; //_A19163650_87:;					
_A19163650_87:
; //	
; //_A19163650_88:;					
_A19163650_88:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A19163650_89:;					
_A19163650_89:
; //	asm	AR = AX				
	AR = AX
; //_A19163650_90:;					
_A19163650_90:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_A19163650_91:;					
_A19163650_91:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LFB78B58C_30:;					
LFB78B58C_30:
; //_A19163650_92:;					
_A19163650_92:
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
; //_A19163650_93:;					
_A19163650_93:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A19163650_94:;					
_A19163650_94:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A19163650_95:;					
_A19163650_95:
; //	goto LFB78B58C_30;			
	jmp	LFB78B58C_30
; //LFB78B58C_29:;					
LFB78B58C_29:
; //LFB78B58C_28:;					
LFB78B58C_28:
; //_A19163650_96:;					
_A19163650_96:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_A19163650_97:;					
_A19163650_97:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_A19163650_98:;					
_A19163650_98:
; //_A19163650_99:;					
_A19163650_99:
; //	asm	dsi				
	dsi
; //_A19163650_100:;				
_A19163650_100:
; //	asm	nop				
	nop
; //	
; //	
; //_A19163650_101:;				
_A19163650_101:
; //_A19163650_102:;				
_A19163650_102:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A19163650_103:;				
_A19163650_103:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A19163650_104:;				
_A19163650_104:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_105:;				
_A19163650_105:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_106:;				
_A19163650_106:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_A19163650_107:;				
_A19163650_107:
; //_A19163650_108:;				
_A19163650_108:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_32:;					
LFB78B58C_32:
; //_A19163650_109:;				
_A19163650_109:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_A19163650_110:;				
_A19163650_110:
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
; //_A19163650_111:;				
_A19163650_111:
; //	
; //_A19163650_112:;				
_A19163650_112:
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
; //_A19163650_113:;				
_A19163650_113:
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
; //_A19163650_114:;				
_A19163650_114:
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
; //_A19163650_115:;				
_A19163650_115:
; //_A19163650_116:;				
_A19163650_116:
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
; //_A19163650_117:;				
_A19163650_117:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_33;			
	jmp	LFB78B58C_33
; //LFB78B58C_33:;					
LFB78B58C_33:
; //_A19163650_118:;				
_A19163650_118:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_A19163650_119:;				
_A19163650_119:
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
; //_A19163650_120:;				
_A19163650_120:
; //_A19163650_121:;				
_A19163650_121:
; //	asm	push CBL			
	push CBL
; //	
; //_A19163650_122:;				
_A19163650_122:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_A19163650_123:;				
_A19163650_123:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A19163650_124:;				
_A19163650_124:
; //	asm	AR = AX				
	AR = AX
; //_A19163650_125:;				
_A19163650_125:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A19163650_126:;				
_A19163650_126:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AX	= 0x0120
	rm[I1]	= AX
; //LFB78B58C_38:;					
LFB78B58C_38:
; //_A19163650_127:;				
_A19163650_127:
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
; //_A19163650_128:;				
_A19163650_128:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A19163650_129:;				
_A19163650_129:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A19163650_130:;				
_A19163650_130:
; //	goto LFB78B58C_38;			
	jmp	LFB78B58C_38
; //LFB78B58C_37:;					
LFB78B58C_37:
; //_A19163650_131:;				
_A19163650_131:
; //_A19163650_132:;				
_A19163650_132:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_133:;				
_A19163650_133:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_36:;					
LFB78B58C_36:
; //_A19163650_134:;				
_A19163650_134:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_A19163650_135:;				
_A19163650_135:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A19163650_136:;				
_A19163650_136:
; //	
; //_A19163650_137:;				
_A19163650_137:
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
; //_A19163650_138:;				
_A19163650_138:
; //_A19163650_139:;				
_A19163650_139:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_A19163650_140:;				
_A19163650_140:
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
; //_A19163650_141:;				
_A19163650_141:
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
; //_A19163650_142:;				
_A19163650_142:
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
; //_A19163650_143:;				
_A19163650_143:
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
; //_A19163650_144:;				
_A19163650_144:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_145:;				
_A19163650_145:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_146:;				
_A19163650_146:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_147:;				
_A19163650_147:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A19163650_148:;				
_A19163650_148:
; //	asm	eni				
	eni
; //LFB78B58C_40:;					
LFB78B58C_40:
; //_A19163650_149:;				
_A19163650_149:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_A19163650_150:;				
_A19163650_150:
; //}
; //
; //rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_A19163650_151:;				
_A19163650_151:
; //_A19163650_152:;				
_A19163650_152:
; //	asm	push I1				
	push I1
; //_A19163650_153:;				
_A19163650_153:
; //	asm	push P1				
	push P1
; //_A19163650_154:;				
_A19163650_154:
; //	asm	push AX				
	push AX
; //_A19163650_155:;				
_A19163650_155:
; //	asm	push BX				
	push BX
; //_A19163650_156:;				
_A19163650_156:
; //	asm	push CX				
	push CX
; //_A19163650_157:;				
_A19163650_157:
; //	asm	push DX				
	push DX
; //_A19163650_158:;				
_A19163650_158:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_A19163650_159:;				
_A19163650_159:
; //	asm	push AR				
	push AR
; //	
; //_A19163650_160:;				
_A19163650_160:
; //_A19163650_161:;				
_A19163650_161:
; //_A19163650_162:;				
_A19163650_162:
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
; //_A19163650_163:;				
_A19163650_163:
; //	asm	pop AR				
	pop AR
; //_A19163650_164:;				
_A19163650_164:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_A19163650_165:;				
_A19163650_165:
; //	asm	pop DX				
	pop DX
; //_A19163650_166:;				
_A19163650_166:
; //	asm	pop CX				
	pop CX
; //_A19163650_167:;				
_A19163650_167:
; //	asm	pop BX				
	pop BX
; //	
; //_A19163650_168:;				
_A19163650_168:
; //_A19163650_169:;				
_A19163650_169:
; //	asintax();				
; //_A19163650_170:;				
_A19163650_170:
; //	asm	AR = AX				
	AR = AX
; //_A19163650_171:;				
_A19163650_171:
; //	asm	pop AX				
	pop AX
; //_A19163650_172:;				
_A19163650_172:
; //	asm	pop P1				
	pop P1
; //_A19163650_173:;				
_A19163650_173:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_41:;					
LFB78B58C_41:
; //_A19163650_174:;				
_A19163650_174:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_A19163650_175:;				
_A19163650_175:
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
; //_A19163650_176:;				
_A19163650_176:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sbb_SkipdataE1C72441_end:;			
_Sbb_SkipdataE1C72441_end:
; //_A19163650_177:;				
_A19163650_177:
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
