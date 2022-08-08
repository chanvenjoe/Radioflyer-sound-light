
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
_AA01D89BC_103:;				=>>_AA01D89BC_103:;
	
_AA01D89BC_104:;				=>>_AA01D89BC_104:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AA01D89BC_105:;				=>>_AA01D89BC_105:;
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
	
_AA01D89BC_106:;				=>>_AA01D89BC_106:;
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
	
_AA01D89BC_107:;				=>>_AA01D89BC_107:;
_AA01D89BC_108:;				=>>_AA01D89BC_108:;
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
_AA01D89BC_109:;				=>>_AA01D89BC_109:;
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
_AA01D89BC_110:;				=>>_AA01D89BC_110:;
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
_AA01D89BC_111:;				=>>_AA01D89BC_111:;
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
_AA01D89BC_112:;				=>>_AA01D89BC_112:;
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
_AA01D89BC_113:;				=>>_AA01D89BC_113:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_31:;					=>>L7F5A46A0_31:;
_AA01D89BC_114:;				=>>_AA01D89BC_114:;
_AA01D89BC_115:;				=>>_AA01D89BC_115:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0012;			=>>AR = 0x0012//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_AA01D89BC_116:;				=>>_AA01D89BC_116:;
	goto L7F5A46A0_29;			=>>jmp	L7F5A46A0_29
L7F5A46A0_28:;					=>>L7F5A46A0_28:;
_AA01D89BC_117:;				=>>_AA01D89BC_117:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_25:;					=>>L7F5A46A0_25:;
_AA01D89BC_118:;				=>>_AA01D89BC_118:;
	return;					=>>AR	= 3;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_playADPCMBACD5AFD_end:;			=>>_playADPCMBACD5AFD_end:;
_AA01D89BC_119:;				=>>_AA01D89BC_119:;
}

rjmp void ADPCM_CHX_Init()			=>>ADPCM_CHX_Init:
{
_AA01D89BC_120:;				=>>_AA01D89BC_120:;
	
_AA01D89BC_121:;				=>>_AA01D89BC_121:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AA01D89BC_122:;				=>>_AA01D89BC_122:;
_AA01D89BC_123:;				=>>_AA01D89BC_123:;
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
_AA01D89BC_124:;				=>>_AA01D89BC_124:;
	return;					=>>rets
ADPCM_CHX_Init_end:;				=>>ADPCM_CHX_Init_end:;
_AA01D89BC_125:;				=>>_AA01D89BC_125:;
}

rjmp void ADPCM_CHXGetBts()			=>>ADPCM_CHXGetBts:
{
_AA01D89BC_126:;				=>>_AA01D89BC_126:;
_AA01D89BC_127:;				=>>_AA01D89BC_127:;
	asm	push AX				=>>push AX
_AA01D89BC_128:;				=>>_AA01D89BC_128:;
	asm	push BX				=>>push BX
_AA01D89BC_129:;				=>>_AA01D89BC_129:;
	asm	push CX				=>>push CX
_AA01D89BC_130:;				=>>_AA01D89BC_130:;
	asm	push DX				=>>push DX
_AA01D89BC_131:;				=>>_AA01D89BC_131:;
	asm	push I1				=>>push I1
_AA01D89BC_132:;				=>>_AA01D89BC_132:;
	asm	push P0				=>>push P0
_AA01D89BC_133:;				=>>_AA01D89BC_133:;
	asm	AR = P0.hh			=>>AR = P0.hh
_AA01D89BC_134:;				=>>_AA01D89BC_134:;
	asm	push AR				=>>push AR
	
_AA01D89BC_135:;				=>>_AA01D89BC_135:;
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
_AA01D89BC_136:;				=>>_AA01D89BC_136:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_137:;				=>>_AA01D89BC_137:;
	asm	P0 = AR				=>>P0 = AR
_AA01D89BC_138:;				=>>_AA01D89BC_138:;
	asm	AR = DX				=>>AR = DX
_AA01D89BC_139:;				=>>_AA01D89BC_139:;
	asm	P0.hh = AR			=>>P0.hh = AR
	
_AA01D89BC_140:;				=>>_AA01D89BC_140:;
_AA01D89BC_141:;				=>>_AA01D89BC_141:;
	read_P0();				=>>AX	= pm[P0];
_AA01D89BC_142:;				=>>_AA01D89BC_142:;
	asm	pop AR				=>>pop AR
_AA01D89BC_143:;				=>>_AA01D89BC_143:;
	asm	P0.hh = AR			=>>P0.hh = AR
_AA01D89BC_144:;				=>>_AA01D89BC_144:;
	asm	pop P0				=>>pop P0
_AA01D89BC_145:;				=>>_AA01D89BC_145:;
	asm	pop I1				=>>pop I1
_AA01D89BC_146:;				=>>_AA01D89BC_146:;
	asm	pop DX				=>>pop DX
_AA01D89BC_147:;				=>>_AA01D89BC_147:;
	asm	pop CX				=>>pop CX
_AA01D89BC_148:;				=>>_AA01D89BC_148:;
	asm	pop BX				=>>pop BX
	
_AA01D89BC_149:;				=>>_AA01D89BC_149:;
_AA01D89BC_150:;				=>>_AA01D89BC_150:;
	asintax();				=>>_AA01D89BC_151:;				=>>_AA01D89BC_151:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_152:;				=>>_AA01D89BC_152:;
	asm	pop AX				=>>pop AX
L7F5A46A0_34:;					=>>L7F5A46A0_34:;
_AA01D89BC_153:;				=>>_AA01D89BC_153:;
	return;					=>>rets
ADPCM_CHXGetBts_end:;				=>>ADPCM_CHXGetBts_end:;
_AA01D89BC_154:;				=>>_AA01D89BC_154:;
}

rjmp void L7F5A46A0_35()			=>>L7F5A46A0_35:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AA01D89BC_155:;				=>>_AA01D89BC_155:;
	
_AA01D89BC_156:;				=>>_AA01D89BC_156:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_AA01D89BC_157:;				=>>_AA01D89BC_157:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_158:;				=>>_AA01D89BC_158:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AA01D89BC_159:;				=>>_AA01D89BC_159:;
	_i_1_2+0	= 0x40;			=>>I1	= rm[BP_SAVE];AX	= 0x40;rm[I1]	= AX
L7F5A46A0_39:;					=>>L7F5A46A0_39:;
_AA01D89BC_160:;				=>>_AA01D89BC_160:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_40;	=>>if NZ	jmp L7F5A46A0_40
	goto	L7F5A46A0_38;			=>>jmp	L7F5A46A0_38
L7F5A46A0_40:;					=>>L7F5A46A0_40:;
	
_AA01D89BC_161:;				=>>_AA01D89BC_161:;
	sAX	= 0x0000;			=>>AX	= 0x00
_AA01D89BC_162:;				=>>_AA01D89BC_162:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AA01D89BC_163:;				=>>_AA01D89BC_163:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
_AA01D89BC_164:;				=>>_AA01D89BC_164:;
	goto L7F5A46A0_39;			=>>jmp	L7F5A46A0_39
L7F5A46A0_38:;					=>>L7F5A46A0_38:;
L7F5A46A0_37:;					=>>L7F5A46A0_37:;
_AA01D89BC_165:;				=>>_AA01D89BC_165:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_35_end:;				=>>L7F5A46A0_35_end:;
_AA01D89BC_166:;				=>>_AA01D89BC_166:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)	=>>L7F5A46A0_41:
{
	__int16 _p_1_2;
	__int16 _i_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_AA01D89BC_167:;				=>>_AA01D89BC_167:;
	
_AA01D89BC_168:;				=>>_AA01D89BC_168:;
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
	
_AA01D89BC_169:;				=>>_AA01D89BC_169:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_AA01D89BC_170:;				=>>_AA01D89BC_170:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_171:;				=>>_AA01D89BC_171:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AA01D89BC_172:;				=>>_AA01D89BC_172:;
_AA01D89BC_173:;				=>>_AA01D89BC_173:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AA01D89BC_174:;				=>>_AA01D89BC_174:;
_AA01D89BC_175:;				=>>_AA01D89BC_175:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AA01D89BC_176:;				=>>_AA01D89BC_176:;
_AA01D89BC_177:;				=>>_AA01D89BC_177:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AA01D89BC_178:;				=>>_AA01D89BC_178:;
_AA01D89BC_179:;				=>>_AA01D89BC_179:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AA01D89BC_180:;				=>>_AA01D89BC_180:;
_AA01D89BC_181:;				=>>_AA01D89BC_181:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3D]	= sAX;			=>>AR	= AX;io[0x3D]	= AR
_AA01D89BC_182:;				=>>_AA01D89BC_182:;
_AA01D89BC_183:;				=>>_AA01D89BC_183:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3E]	= sAX;			=>>AR	= AX;io[0x3E]	= AR
_AA01D89BC_184:;				=>>_AA01D89BC_184:;
	sSI	= (int)&_vol_0_4;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_AA01D89BC_185:;				=>>_AA01D89BC_185:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AA01D89BC_186:;				=>>_AA01D89BC_186:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AA01D89BC_187:;				=>>_AA01D89BC_187:;
	_i_1_4+0	= 0x20;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AX	= 0x20;rm[I1]	= AX
L7F5A46A0_47:;					=>>L7F5A46A0_47:;
_AA01D89BC_188:;				=>>_AA01D89BC_188:;
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
	
_AA01D89BC_189:;				=>>_AA01D89BC_189:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x00].b14;			=>>test io[0x00].b14//
	if(__jz__) goto L7F5A46A0_49;		=>>if ZR	jmp L7F5A46A0_49
	sAX	= 1;				=>>AX	= 0x01
L7F5A46A0_49:;					=>>L7F5A46A0_49:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_51;	=>>if ZR	jmp L7F5A46A0_51
	goto	L7F5A46A0_50;			=>>jmp	L7F5A46A0_50
L7F5A46A0_51:;					=>>L7F5A46A0_51:;
	
_AA01D89BC_190:;				=>>_AA01D89BC_190:;
_AA01D89BC_191:;				=>>_AA01D89BC_191:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();=>>pch	= _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E;lcall	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_53;	=>>if ZR	jmp L7F5A46A0_53
	goto	L7F5A46A0_52;			=>>jmp	L7F5A46A0_52
L7F5A46A0_53:;					=>>L7F5A46A0_53:;
	
_AA01D89BC_192:;				=>>_AA01D89BC_192:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sDX	= 0x0000;			=>>DX	= 0x00
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_AA01D89BC_193:;				=>>_AA01D89BC_193:;
	goto L7F5A46A0_43;			=>>jmp	L7F5A46A0_43
L7F5A46A0_52:;					=>>L7F5A46A0_52:;
_AA01D89BC_194:;				=>>_AA01D89BC_194:;
_AA01D89BC_195:;				=>>_AA01D89BC_195:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
L7F5A46A0_50:;					=>>L7F5A46A0_50:;
_AA01D89BC_196:;				=>>_AA01D89BC_196:;
_AA01D89BC_197:;				=>>_AA01D89BC_197:;
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
	sfx_INT2LONG_AX();			=>>DX	= 0;test	AX.b15;if ZR jmp L938F1786_0;DX = -1;L938F1786_0:
	sCX	= POP();			=>>pop	CX
	sBX	= POP();			=>>pop	BX
	sfx_ADDLONG();				=>>AR	= CX;AX	= AX + AR;AR	= BX;DX	= DX + AR + C;
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0002;			=>>AR = 0x0002//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm rm[I1] = AX + AR;			=>>rm[I1] = AX + AR//
_AA01D89BC_198:;				=>>_AA01D89BC_198:;
	goto L7F5A46A0_47;			=>>jmp	L7F5A46A0_47
L7F5A46A0_46:;					=>>L7F5A46A0_46:;
	
_AA01D89BC_199:;				=>>_AA01D89BC_199:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_AA01D89BC_200:;				=>>_AA01D89BC_200:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_201:;				=>>_AA01D89BC_201:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AA01D89BC_202:;				=>>_AA01D89BC_202:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AA01D89BC_203:;				=>>_AA01D89BC_203:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AA01D89BC_204:;				=>>_AA01D89BC_204:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AA01D89BC_205:;				=>>_AA01D89BC_205:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AA01D89BC_206:;				=>>_AA01D89BC_206:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AA01D89BC_207:;				=>>_AA01D89BC_207:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AA01D89BC_208:;				=>>_AA01D89BC_208:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AA01D89BC_209:;				=>>_AA01D89BC_209:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AA01D89BC_210:;				=>>_AA01D89BC_210:;
	sAX	= io[0x3D];			=>>AR	= io[0x3D];AX	= AR
_AA01D89BC_211:;				=>>_AA01D89BC_211:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
L7F5A46A0_44:;					=>>L7F5A46A0_44:;
_AA01D89BC_212:;				=>>_AA01D89BC_212:;
L7F5A46A0_43:;					=>>L7F5A46A0_43:;
_AA01D89BC_213:;				=>>_AA01D89BC_213:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_41_end:;				=>>L7F5A46A0_41_end:;
_AA01D89BC_214:;				=>>_AA01D89BC_214:;
}

rjmp void L7F5A46A0_54()			=>>L7F5A46A0_54:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AA01D89BC_215:;				=>>_AA01D89BC_215:;
	
_AA01D89BC_216:;				=>>_AA01D89BC_216:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_AA01D89BC_217:;				=>>_AA01D89BC_217:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_218:;				=>>_AA01D89BC_218:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AA01D89BC_219:;				=>>_AA01D89BC_219:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_AA01D89BC_220:;				=>>_AA01D89BC_220:;
	_i_1_2+0	= 0x20;			=>>I1	= rm[BP_SAVE];AX	= 0x20;rm[I1]	= AX
L7F5A46A0_58:;					=>>L7F5A46A0_58:;
_AA01D89BC_221:;				=>>_AA01D89BC_221:;
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
	
_AA01D89BC_222:;				=>>_AA01D89BC_222:;
_AA01D89BC_223:;				=>>_AA01D89BC_223:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
_AA01D89BC_224:;				=>>_AA01D89BC_224:;
_AA01D89BC_225:;				=>>_AA01D89BC_225:;
	read_I0M();				=>>AX	= rm[I0--];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
	
_AA01D89BC_226:;				=>>_AA01D89BC_226:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_AA01D89BC_227:;				=>>_AA01D89BC_227:;
	asm	rm[I0++2] = AX			=>>rm[I0++2] = AX
_AA01D89BC_228:;				=>>_AA01D89BC_228:;
	goto L7F5A46A0_58;			=>>jmp	L7F5A46A0_58
L7F5A46A0_57:;					=>>L7F5A46A0_57:;
_AA01D89BC_229:;				=>>_AA01D89BC_229:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm not AR.b6;				=>>not AR.b6//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
L7F5A46A0_56:;					=>>L7F5A46A0_56:;
_AA01D89BC_230:;				=>>_AA01D89BC_230:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_54_end:;				=>>L7F5A46A0_54_end:;
_AA01D89BC_231:;				=>>_AA01D89BC_231:;
}

rjmp void _DoADPCM9CD0E20D()			=>>_DoADPCM9CD0E20D:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_AA01D89BC_232:;				=>>_AA01D89BC_232:;
	
_AA01D89BC_233:;				=>>_AA01D89BC_233:;
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
_AA01D89BC_234:;				=>>_AA01D89BC_234:;
	goto L7F5A46A0_60;			=>>jmp	L7F5A46A0_60
L7F5A46A0_61:;					=>>L7F5A46A0_61:;
_AA01D89BC_235:;				=>>_AA01D89BC_235:;
_AA01D89BC_236:;				=>>_AA01D89BC_236:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_AA01D89BC_237:;				=>>_AA01D89BC_237:;
_AA01D89BC_238:;				=>>_AA01D89BC_238:;
	L7F5A46A0_35();				=>>pch	= L7F5A46A0_35;lcall	L7F5A46A0_35
_AA01D89BC_239:;				=>>_AA01D89BC_239:;
	asm AX = _adpFLTG0FBE3CB5+0;		=>>AX = _adpFLTG0FBE3CB5+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AA01D89BC_240:;				=>>_AA01D89BC_240:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AA01D89BC_241:;				=>>_AA01D89BC_241:;
	_i_1_2+0	= 0x02;			=>>I1	= rm[BP_SAVE];AX	= 0x02;rm[I1]	= AX
L7F5A46A0_64:;					=>>L7F5A46A0_64:;
_AA01D89BC_242:;				=>>_AA01D89BC_242:;
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
	
_AA01D89BC_243:;				=>>_AA01D89BC_243:;
_AA01D89BC_244:;				=>>_AA01D89BC_244:;
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
_AA01D89BC_245:;				=>>_AA01D89BC_245:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&ADPCM_Tmpi;		=>>I1	= ADPCM_Tmpi
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm AR = 0x0012;			=>>AR = 0x0012//
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_AA01D89BC_246:;				=>>_AA01D89BC_246:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_AA01D89BC_247:;				=>>_AA01D89BC_247:;
	goto L7F5A46A0_64;			=>>jmp	L7F5A46A0_64
L7F5A46A0_63:;					=>>L7F5A46A0_63:;
_AA01D89BC_248:;				=>>_AA01D89BC_248:;
_AA01D89BC_249:;				=>>_AA01D89BC_249:;
	L7F5A46A0_54();				=>>pch	= L7F5A46A0_54;lcall	L7F5A46A0_54
_AA01D89BC_250:;				=>>_AA01D89BC_250:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
_AA01D89BC_251:;				=>>_AA01D89BC_251:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
L7F5A46A0_60:;					=>>L7F5A46A0_60:;
_AA01D89BC_252:;				=>>_AA01D89BC_252:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_DoADPCM9CD0E20D_end:;				=>>_DoADPCM9CD0E20D_end:;
_AA01D89BC_253:;				=>>_AA01D89BC_253:;
}








.code



.code







.data





.code




















