
#include "crt0.h"













__int16 _iADPCCACC469;
__int16 _adpch30670376[36];
__int16 _adpFLTG0FBE3CB5[2];



// CODE segment					=>>VarRM[0:4095]={
 _iADPCCACC469,_adpch30670376[36],_adpFLTG0FBE3CB5[2] 
};

.code


rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
rjmp void ADPCM_CHX_Init();
rjmp void ADPCM_CHXGetBts();
rjmp void _DoADPCM9CD0E20D();




.code



.data



.code
rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)=>>_playADPCMBACD5AFD:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	__int16 _q_1_6;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -3;BP	+= AR
_A569F39CC_103:;				=>>_A569F39CC_103:;
	
_A569F39CC_104:;				=>>_A569F39CC_104:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_105:;				=>>_A569F39CC_105:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
L7F5A46A0_26:;					=>>L7F5A46A0_26:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L7F5A46A0_30;	=>>if ZR	jmp L7F5A46A0_30
	goto	L7F5A46A0_28;			=>>jmp	L7F5A46A0_28
L7F5A46A0_30:;					=>>L7F5A46A0_30:;
	goto L7F5A46A0_27;			=>>jmp	L7F5A46A0_27
L7F5A46A0_29:;					=>>L7F5A46A0_29:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto L7F5A46A0_26;			=>>jmp	L7F5A46A0_26
L7F5A46A0_27:;					=>>L7F5A46A0_27:;
	
_A569F39CC_106:;				=>>_A569F39CC_106:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sfx_CHECKZEROLONG();			=>>AR	= AX;AR	|= DX;
	if(__jz__)	goto L7F5A46A0_32;	=>>if ZR	jmp L7F5A46A0_32
	goto	L7F5A46A0_31;			=>>jmp	L7F5A46A0_31
L7F5A46A0_32:;					=>>L7F5A46A0_32:;
	
_A569F39CC_107:;				=>>_A569F39CC_107:;
_A569F39CC_108:;				=>>_A569F39CC_108:;
	sAX	= 0x0012;			=>>AX	= 0x12
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDX	= 0;				=>>DX	= 0x00
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);=>>pch	= _memset5A9D755A;lcall	_memset5A9D755A
	RESTORESP(4);				=>>AR	= 4;BP	+= AR;
_A569F39CC_109:;				=>>_A569F39CC_109:;
	asm AX = #_adpdata32993E3B+0;		=>>AX = #_adpdata32993E3B+0//
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_index_0_4;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0004;			=>>CX	= 0x04
	sfx_IMUL_AX_CX();			=>>pch	= sfx_IMUL_AX_CX;lcall	sfx_IMUL_AX_CX
	sCX	= POP();			=>>pop	CX
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_110:;				=>>_A569F39CC_110:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI++;		=>>AX	= pm[P1++]
	sDX	= *(__int16*)sDI--;		=>>DX	= pm[P1--]
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A569F39CC_111:;				=>>_A569F39CC_111:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0011;			=>>CX	= 0x11
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_112:;				=>>_A569F39CC_112:;
	asm AX = _adpFLTG0FBE3CB5+0;		=>>AX = _adpFLTG0FBE3CB5+0//
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	
	sCX	= POP();			=>>pop	CX
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0003;			=>>CX	= 0x03
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_113:;				=>>_A569F39CC_113:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_31:;					=>>L7F5A46A0_31:;
_A569F39CC_114:;				=>>_A569F39CC_114:;
_A569F39CC_115:;				=>>_A569F39CC_115:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0012;			=>>AR = 0x0012//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_A569F39CC_116:;				=>>_A569F39CC_116:;
	goto L7F5A46A0_29;			=>>jmp	L7F5A46A0_29
L7F5A46A0_28:;					=>>L7F5A46A0_28:;
_A569F39CC_117:;				=>>_A569F39CC_117:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_25:;					=>>L7F5A46A0_25:;
_A569F39CC_118:;				=>>_A569F39CC_118:;
	return;					=>>AR	= 3;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_playADPCMBACD5AFD_end:;			=>>_playADPCMBACD5AFD_end:;
_A569F39CC_119:;				=>>_A569F39CC_119:;
}

rjmp void ADPCM_CHX_Init()			=>>ADPCM_CHX_Init:
{
_A569F39CC_120:;				=>>_A569F39CC_120:;
	
_A569F39CC_121:;				=>>_A569F39CC_121:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A569F39CC_122:;				=>>_A569F39CC_122:;
_A569F39CC_123:;				=>>_A569F39CC_123:;
	sAX	= 0x0024;			=>>AX	= 0x24
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	PUSH(sAX);				=>>push	AX
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sDX	= 0;				=>>DX	= 0x00
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);=>>pch	= _memset5A9D755A;lcall	_memset5A9D755A
	RESTORESP(4);				=>>AR	= 4;BP	+= AR;
L7F5A46A0_33:;					=>>L7F5A46A0_33:;
_A569F39CC_124:;				=>>_A569F39CC_124:;
	return;					=>>rets
ADPCM_CHX_Init_end:;				=>>ADPCM_CHX_Init_end:;
_A569F39CC_125:;				=>>_A569F39CC_125:;
}

rjmp void ADPCM_CHXGetBts()			=>>ADPCM_CHXGetBts:
{
_A569F39CC_126:;				=>>_A569F39CC_126:;
_A569F39CC_127:;				=>>_A569F39CC_127:;
	asm	push AX				=>>push AX
_A569F39CC_128:;				=>>_A569F39CC_128:;
	asm	push BX				=>>push BX
_A569F39CC_129:;				=>>_A569F39CC_129:;
	asm	push CX				=>>push CX
_A569F39CC_130:;				=>>_A569F39CC_130:;
	asm	push DX				=>>push DX
_A569F39CC_131:;				=>>_A569F39CC_131:;
	asm	push I1				=>>push I1
_A569F39CC_132:;				=>>_A569F39CC_132:;
	asm	push P0				=>>push P0
_A569F39CC_133:;				=>>_A569F39CC_133:;
	asm	AR = P0.hh			=>>AR = P0.hh
_A569F39CC_134:;				=>>_A569F39CC_134:;
	asm	push AR				=>>push AR
	
_A569F39CC_135:;				=>>_A569F39CC_135:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	PUSH(sAX);				=>>push	AX
	PUSH(sDX);				=>>push	DX
	sCX	= 0x0001;			=>>CX	= 0x01
	sBX	= 0x0000;			=>>BX	= 0x00
	sfx_ADDLONG();				=>>AR	= CX;AX	= AX + AR;AR	= BX;DX	= DX + AR + C;
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	sDX	= POP();			=>>pop	DX
	sAX	= POP();			=>>pop	AX
_A569F39CC_136:;				=>>_A569F39CC_136:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_137:;				=>>_A569F39CC_137:;
	asm	P0 = AR				=>>P0 = AR
_A569F39CC_138:;				=>>_A569F39CC_138:;
	asm	AR = DX				=>>AR = DX
_A569F39CC_139:;				=>>_A569F39CC_139:;
	asm	P0.hh = AR			=>>P0.hh = AR
	
_A569F39CC_140:;				=>>_A569F39CC_140:;
_A569F39CC_141:;				=>>_A569F39CC_141:;
	read_P0();				=>>AX	= pm[P0];
_A569F39CC_142:;				=>>_A569F39CC_142:;
	asm	pop AR				=>>pop AR
_A569F39CC_143:;				=>>_A569F39CC_143:;
	asm	P0.hh = AR			=>>P0.hh = AR
_A569F39CC_144:;				=>>_A569F39CC_144:;
	asm	pop P0				=>>pop P0
_A569F39CC_145:;				=>>_A569F39CC_145:;
	asm	pop I1				=>>pop I1
_A569F39CC_146:;				=>>_A569F39CC_146:;
	asm	pop DX				=>>pop DX
_A569F39CC_147:;				=>>_A569F39CC_147:;
	asm	pop CX				=>>pop CX
_A569F39CC_148:;				=>>_A569F39CC_148:;
	asm	pop BX				=>>pop BX
	
_A569F39CC_149:;				=>>_A569F39CC_149:;
_A569F39CC_150:;				=>>_A569F39CC_150:;
	asintax();				=>>_A569F39CC_151:;				=>>_A569F39CC_151:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_152:;				=>>_A569F39CC_152:;
	asm	pop AX				=>>pop AX
L7F5A46A0_34:;					=>>L7F5A46A0_34:;
_A569F39CC_153:;				=>>_A569F39CC_153:;
	return;					=>>rets
ADPCM_CHXGetBts_end:;				=>>ADPCM_CHXGetBts_end:;
_A569F39CC_154:;				=>>_A569F39CC_154:;
}

rjmp void L7F5A46A0_35()			=>>L7F5A46A0_35:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A569F39CC_155:;				=>>_A569F39CC_155:;
	
_A569F39CC_156:;				=>>_A569F39CC_156:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A569F39CC_157:;				=>>_A569F39CC_157:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_158:;				=>>_A569F39CC_158:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A569F39CC_159:;				=>>_A569F39CC_159:;
	_i_1_2+0	= 0x40;			=>>I1	= rm[BP_SAVE];AX	= 0x40;rm[I1]	= AX
L7F5A46A0_39:;					=>>L7F5A46A0_39:;
_A569F39CC_160:;				=>>_A569F39CC_160:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_40;	=>>if NZ	jmp L7F5A46A0_40
	goto	L7F5A46A0_38;			=>>jmp	L7F5A46A0_38
L7F5A46A0_40:;					=>>L7F5A46A0_40:;
	
_A569F39CC_161:;				=>>_A569F39CC_161:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A569F39CC_162:;				=>>_A569F39CC_162:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A569F39CC_163:;				=>>_A569F39CC_163:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
_A569F39CC_164:;				=>>_A569F39CC_164:;
	goto L7F5A46A0_39;			=>>jmp	L7F5A46A0_39
L7F5A46A0_38:;					=>>L7F5A46A0_38:;
L7F5A46A0_37:;					=>>L7F5A46A0_37:;
_A569F39CC_165:;				=>>_A569F39CC_165:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_35_end:;				=>>L7F5A46A0_35_end:;
_A569F39CC_166:;				=>>_A569F39CC_166:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)	=>>L7F5A46A0_41:
{
	__int16 _p_1_2;
	__int16 _i_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_A569F39CC_167:;				=>>_A569F39CC_167:;
	
_A569F39CC_168:;				=>>_A569F39CC_168:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sfx_CHECKZEROLONG();			=>>AR	= AX;AR	|= DX;
	if(__jnz__)	goto L7F5A46A0_45;	=>>if NZ	jmp L7F5A46A0_45
	goto	L7F5A46A0_44;			=>>jmp	L7F5A46A0_44
L7F5A46A0_45:;					=>>L7F5A46A0_45:;
	
_A569F39CC_169:;				=>>_A569F39CC_169:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_A569F39CC_170:;				=>>_A569F39CC_170:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_171:;				=>>_A569F39CC_171:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A569F39CC_172:;				=>>_A569F39CC_172:;
_A569F39CC_173:;				=>>_A569F39CC_173:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_A569F39CC_174:;				=>>_A569F39CC_174:;
_A569F39CC_175:;				=>>_A569F39CC_175:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_A569F39CC_176:;				=>>_A569F39CC_176:;
_A569F39CC_177:;				=>>_A569F39CC_177:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_A569F39CC_178:;				=>>_A569F39CC_178:;
_A569F39CC_179:;				=>>_A569F39CC_179:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_A569F39CC_180:;				=>>_A569F39CC_180:;
_A569F39CC_181:;				=>>_A569F39CC_181:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3D]	= sAX;			=>>AR	= AX;io[0x3D]	= AR
_A569F39CC_182:;				=>>_A569F39CC_182:;
_A569F39CC_183:;				=>>_A569F39CC_183:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3E]	= sAX;			=>>AR	= AX;io[0x3E]	= AR
_A569F39CC_184:;				=>>_A569F39CC_184:;
	sSI	= (int)&_vol_0_4;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_A569F39CC_185:;				=>>_A569F39CC_185:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A569F39CC_186:;				=>>_A569F39CC_186:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_187:;				=>>_A569F39CC_187:;
	_i_1_4+0	= 0x20;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AX	= 0x20;rm[I1]	= AX
L7F5A46A0_47:;					=>>L7F5A46A0_47:;
_A569F39CC_188:;				=>>_A569F39CC_188:;
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_48;	=>>if NZ	jmp L7F5A46A0_48
	goto	L7F5A46A0_46;			=>>jmp	L7F5A46A0_46
L7F5A46A0_48:;					=>>L7F5A46A0_48:;
	
_A569F39CC_189:;				=>>_A569F39CC_189:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x00].b14;			=>>test io[0x00].b14//
	if(__jz__) goto L7F5A46A0_49;		=>>if ZR	jmp L7F5A46A0_49
	sAX	= 1;				=>>AX	= 0x01
L7F5A46A0_49:;					=>>L7F5A46A0_49:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_51;	=>>if ZR	jmp L7F5A46A0_51
	goto	L7F5A46A0_50;			=>>jmp	L7F5A46A0_50
L7F5A46A0_51:;					=>>L7F5A46A0_51:;
	
_A569F39CC_190:;				=>>_A569F39CC_190:;
_A569F39CC_191:;				=>>_A569F39CC_191:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();=>>pch	= _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E;lcall	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_53;	=>>if ZR	jmp L7F5A46A0_53
	goto	L7F5A46A0_52;			=>>jmp	L7F5A46A0_52
L7F5A46A0_53:;					=>>L7F5A46A0_53:;
	
_A569F39CC_192:;				=>>_A569F39CC_192:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sDX	= 0x0000;			=>>DX	= 0x00
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A569F39CC_193:;				=>>_A569F39CC_193:;
	goto L7F5A46A0_43;			=>>jmp	L7F5A46A0_43
L7F5A46A0_52:;					=>>L7F5A46A0_52:;
_A569F39CC_194:;				=>>_A569F39CC_194:;
_A569F39CC_195:;				=>>_A569F39CC_195:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
L7F5A46A0_50:;					=>>L7F5A46A0_50:;
_A569F39CC_196:;				=>>_A569F39CC_196:;
_A569F39CC_197:;				=>>_A569F39CC_197:;
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
	sfx_INT2LONG_AX();			=>>DX	= 0;test	AX.b15;if ZR jmp L16A17074_0;DX = -1;L16A17074_0:
	sCX	= POP();			=>>pop	CX
	sBX	= POP();			=>>pop	BX
	sfx_ADDLONG();				=>>AR	= CX;AX	= AX + AR;AR	= BX;DX	= DX + AR + C;
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0002;			=>>AR = 0x0002//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm rm[I1] = AX + AR;			=>>rm[I1] = AX + AR//
_A569F39CC_198:;				=>>_A569F39CC_198:;
	goto L7F5A46A0_47;			=>>jmp	L7F5A46A0_47
L7F5A46A0_46:;					=>>L7F5A46A0_46:;
	
_A569F39CC_199:;				=>>_A569F39CC_199:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_A569F39CC_200:;				=>>_A569F39CC_200:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_201:;				=>>_A569F39CC_201:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A569F39CC_202:;				=>>_A569F39CC_202:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_A569F39CC_203:;				=>>_A569F39CC_203:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A569F39CC_204:;				=>>_A569F39CC_204:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_A569F39CC_205:;				=>>_A569F39CC_205:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A569F39CC_206:;				=>>_A569F39CC_206:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_A569F39CC_207:;				=>>_A569F39CC_207:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A569F39CC_208:;				=>>_A569F39CC_208:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_A569F39CC_209:;				=>>_A569F39CC_209:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A569F39CC_210:;				=>>_A569F39CC_210:;
	sAX	= io[0x3D];			=>>AR	= io[0x3D];AX	= AR
_A569F39CC_211:;				=>>_A569F39CC_211:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
L7F5A46A0_44:;					=>>L7F5A46A0_44:;
_A569F39CC_212:;				=>>_A569F39CC_212:;
L7F5A46A0_43:;					=>>L7F5A46A0_43:;
_A569F39CC_213:;				=>>_A569F39CC_213:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_41_end:;				=>>L7F5A46A0_41_end:;
_A569F39CC_214:;				=>>_A569F39CC_214:;
}

rjmp void L7F5A46A0_54()			=>>L7F5A46A0_54:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A569F39CC_215:;				=>>_A569F39CC_215:;
	
_A569F39CC_216:;				=>>_A569F39CC_216:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A569F39CC_217:;				=>>_A569F39CC_217:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_218:;				=>>_A569F39CC_218:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A569F39CC_219:;				=>>_A569F39CC_219:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_A569F39CC_220:;				=>>_A569F39CC_220:;
	_i_1_2+0	= 0x20;			=>>I1	= rm[BP_SAVE];AX	= 0x20;rm[I1]	= AX
L7F5A46A0_58:;					=>>L7F5A46A0_58:;
_A569F39CC_221:;				=>>_A569F39CC_221:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_59;	=>>if NZ	jmp L7F5A46A0_59
	goto	L7F5A46A0_57;			=>>jmp	L7F5A46A0_57
L7F5A46A0_59:;					=>>L7F5A46A0_59:;
	
_A569F39CC_222:;				=>>_A569F39CC_222:;
_A569F39CC_223:;				=>>_A569F39CC_223:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
_A569F39CC_224:;				=>>_A569F39CC_224:;
_A569F39CC_225:;				=>>_A569F39CC_225:;
	read_I0M();				=>>AX	= rm[I0--];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
	
_A569F39CC_226:;				=>>_A569F39CC_226:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_A569F39CC_227:;				=>>_A569F39CC_227:;
	asm	rm[I0++2] = AX			=>>rm[I0++2] = AX
_A569F39CC_228:;				=>>_A569F39CC_228:;
	goto L7F5A46A0_58;			=>>jmp	L7F5A46A0_58
L7F5A46A0_57:;					=>>L7F5A46A0_57:;
_A569F39CC_229:;				=>>_A569F39CC_229:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm not AR.b6;				=>>not AR.b6//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
L7F5A46A0_56:;					=>>L7F5A46A0_56:;
_A569F39CC_230:;				=>>_A569F39CC_230:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_54_end:;				=>>L7F5A46A0_54_end:;
_A569F39CC_231:;				=>>_A569F39CC_231:;
}

rjmp void _DoADPCM9CD0E20D()			=>>_DoADPCM9CD0E20D:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_A569F39CC_232:;				=>>_A569F39CC_232:;
	
_A569F39CC_233:;				=>>_A569F39CC_233:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = outbuf+0;			=>>I1 = outbuf+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX ^ AR;			=>>AX = AX ^ AR//
	asm AR = 0x0040;			=>>AR = 0x0040//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_62;	=>>if ZR	jmp L7F5A46A0_62
	goto	L7F5A46A0_61;			=>>jmp	L7F5A46A0_61
L7F5A46A0_62:;					=>>L7F5A46A0_62:;
_A569F39CC_234:;				=>>_A569F39CC_234:;
	goto L7F5A46A0_60;			=>>jmp	L7F5A46A0_60
L7F5A46A0_61:;					=>>L7F5A46A0_61:;
_A569F39CC_235:;				=>>_A569F39CC_235:;
_A569F39CC_236:;				=>>_A569F39CC_236:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_A569F39CC_237:;				=>>_A569F39CC_237:;
_A569F39CC_238:;				=>>_A569F39CC_238:;
	L7F5A46A0_35();				=>>pch	= L7F5A46A0_35;lcall	L7F5A46A0_35
_A569F39CC_239:;				=>>_A569F39CC_239:;
	asm AX = _adpFLTG0FBE3CB5+0;		=>>AX = _adpFLTG0FBE3CB5+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A569F39CC_240:;				=>>_A569F39CC_240:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A569F39CC_241:;				=>>_A569F39CC_241:;
	_i_1_2+0	= 0x02;			=>>I1	= rm[BP_SAVE];AX	= 0x02;rm[I1]	= AX
L7F5A46A0_64:;					=>>L7F5A46A0_64:;
_A569F39CC_242:;				=>>_A569F39CC_242:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_65;	=>>if NZ	jmp L7F5A46A0_65
	goto	L7F5A46A0_63;			=>>jmp	L7F5A46A0_63
L7F5A46A0_65:;					=>>L7F5A46A0_65:;
	
_A569F39CC_243:;				=>>_A569F39CC_243:;
_A569F39CC_244:;				=>>_A569F39CC_244:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	L7F5A46A0_41(STACK[sSP + 0]);		=>>pch	= L7F5A46A0_41;lcall	L7F5A46A0_41
	RESTORESP(1);				=>>pop	AR;
_A569F39CC_245:;				=>>_A569F39CC_245:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&ADPCM_Tmpi;		=>>I1	= ADPCM_Tmpi
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm AR = 0x0012;			=>>AR = 0x0012//
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_A569F39CC_246:;				=>>_A569F39CC_246:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_A569F39CC_247:;				=>>_A569F39CC_247:;
	goto L7F5A46A0_64;			=>>jmp	L7F5A46A0_64
L7F5A46A0_63:;					=>>L7F5A46A0_63:;
_A569F39CC_248:;				=>>_A569F39CC_248:;
_A569F39CC_249:;				=>>_A569F39CC_249:;
	L7F5A46A0_54();				=>>pch	= L7F5A46A0_54;lcall	L7F5A46A0_54
_A569F39CC_250:;				=>>_A569F39CC_250:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
_A569F39CC_251:;				=>>_A569F39CC_251:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
L7F5A46A0_60:;					=>>L7F5A46A0_60:;
_A569F39CC_252:;				=>>_A569F39CC_252:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_DoADPCM9CD0E20D_end:;				=>>_DoADPCM9CD0E20D_end:;
_A569F39CC_253:;				=>>_A569F39CC_253:;
}








.code



.code







.data





.code




















