
#include "crt0.h"













__int16 L5589D4CE_33;
__int16 L5589D4CE_34;
__int16 L5589D4CE_35;



// CODE segment					=>>VarRM[0:4095]={
 L5589D4CE_33,L5589D4CE_34,L5589D4CE_35 
};

.code


rjmp void _InitKey3C587B6D();
rjmp void _PollingKey3B90E3B1();




.code



.data



.code
rjmp void _InitKey3C587B6D()			=>>_InitKey3C587B6D:
{
_A01B23225_113:;				=>>_A01B23225_113:;
	
_A01B23225_114:;				=>>_A01B23225_114:;
	asm clr io[0x04].b0;			=>>clr io[0x04].b0//
_A01B23225_115:;				=>>_A01B23225_115:;
	asm clr io[0x04].b1;			=>>clr io[0x04].b1//
_A01B23225_116:;				=>>_A01B23225_116:;
	asm clr io[0x04].b2;			=>>clr io[0x04].b2//
_A01B23225_117:;				=>>_A01B23225_117:;
	asm clr io[0x04].b3;			=>>clr io[0x04].b3//
_A01B23225_118:;				=>>_A01B23225_118:;
	io[0x1E]	= 0x0005;		=>>AR	= 0x05;io[0x1E]	= AR
_A01B23225_119:;				=>>_A01B23225_119:;
	sAX	= 0x000F;			=>>AX	= 0x0F
	sAX	= sAX | io[0x1F];		=>>AR	= io[0x1F];AX	|= AR
	io[0x1F]	= sAX;			=>>AR	= AX;io[0x1F]	= AR
_A01B23225_120:;				=>>_A01B23225_120:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_33;		=>>I1	= L5589D4CE_33
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_121:;				=>>_A01B23225_121:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_34;		=>>I1	= L5589D4CE_34
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_122:;				=>>_A01B23225_122:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_35;		=>>I1	= L5589D4CE_35
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L5589D4CE_36:;					=>>L5589D4CE_36:;
_A01B23225_123:;				=>>_A01B23225_123:;
	return;					=>>rets
_InitKey3C587B6D_end:;				=>>_InitKey3C587B6D_end:;
_A01B23225_124:;				=>>_A01B23225_124:;
}

rjmp void L5589D4CE_37()			=>>L5589D4CE_37:
{
	__int16 _btn_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A01B23225_125:;				=>>_A01B23225_125:;
_A01B23225_126:;				=>>_A01B23225_126:;
	sAX	= 0x000F;			=>>AX	= 0x0F
	sAX	= sAX & io[0x07];		=>>AR	= io[0x07];AX	&= AR
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_127:;				=>>_A01B23225_127:;
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto L5589D4CE_39;			=>>jmp	L5589D4CE_39
L5589D4CE_39:;					=>>L5589D4CE_39:;
_A01B23225_128:;				=>>_A01B23225_128:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L5589D4CE_37_end:;				=>>L5589D4CE_37_end:;
_A01B23225_129:;				=>>_A01B23225_129:;
}

rjmp void _PollingKey3B90E3B1()			=>>_PollingKey3B90E3B1:
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -5;BP	+= AR
_A01B23225_130:;				=>>_A01B23225_130:;
_A01B23225_131:;				=>>_A01B23225_131:;
_A01B23225_132:;				=>>_A01B23225_132:;
	NEARCALL(L5589D4CE_37);			=>>call	L5589D4CE_37
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_133:;				=>>_A01B23225_133:;
	asm I1 = L5589D4CE_33+0;		=>>I1 = L5589D4CE_33+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto L5589D4CE_42;	=>>if ZR	jmp L5589D4CE_42
	goto	L5589D4CE_41;			=>>jmp	L5589D4CE_41
L5589D4CE_42:;					=>>L5589D4CE_42:;
	
_A01B23225_134:;				=>>_A01B23225_134:;
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_33;		=>>I1	= L5589D4CE_33
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_135:;				=>>_A01B23225_135:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_35;		=>>I1	= L5589D4CE_35
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_136:;				=>>_A01B23225_136:;
	goto L5589D4CE_40;			=>>jmp	L5589D4CE_40
L5589D4CE_41:;					=>>L5589D4CE_41:;
_A01B23225_137:;				=>>_A01B23225_137:;
_A01B23225_138:;				=>>_A01B23225_138:;
	asm I1 = L5589D4CE_35+0;		=>>I1 = L5589D4CE_35+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_44;	=>>if NZ	jmp L5589D4CE_44
	goto	L5589D4CE_43;			=>>jmp	L5589D4CE_43
L5589D4CE_44:;					=>>L5589D4CE_44:;
	
_A01B23225_139:;				=>>_A01B23225_139:;
	asm I1 = L5589D4CE_35+0;		=>>I1 = L5589D4CE_35+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&L5589D4CE_35;		=>>I1	= L5589D4CE_35
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_140:;				=>>_A01B23225_140:;
	goto L5589D4CE_40;			=>>jmp	L5589D4CE_40
L5589D4CE_43:;					=>>L5589D4CE_43:;
_A01B23225_141:;				=>>_A01B23225_141:;
_A01B23225_142:;				=>>_A01B23225_142:;
	asm AX = #_keyfuncF06F3D55+0;		=>>AX = #_keyfuncF06F3D55+0//
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_143:;				=>>_A01B23225_143:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_35;		=>>I1	= L5589D4CE_35
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_144:;				=>>_A01B23225_144:;
	asm I1 = L5589D4CE_34+0;		=>>I1 = L5589D4CE_34+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = L5589D4CE_33+0;		=>>I1 = L5589D4CE_33+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX ^ AR;			=>>AX = AX ^ AR//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_145:;				=>>_A01B23225_145:;
	asm I1 = L5589D4CE_34+0;		=>>I1 = L5589D4CE_34+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_146:;				=>>_A01B23225_146:;
	asm I1 = L5589D4CE_33+0;		=>>I1 = L5589D4CE_33+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_34;		=>>I1	= L5589D4CE_34
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A01B23225_147:;				=>>_A01B23225_147:;
	_i_1_4+0	= 0x05;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AR	= 0x05;rm[I1]	= AR
L5589D4CE_46:;					=>>L5589D4CE_46:;
_A01B23225_148:;				=>>_A01B23225_148:;
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_47;	=>>if NZ	jmp L5589D4CE_47
	goto	L5589D4CE_45;			=>>jmp	L5589D4CE_45
L5589D4CE_47:;					=>>L5589D4CE_47:;
	
_A01B23225_149:;				=>>_A01B23225_149:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bits_1_6+0;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_49;		=>>if ZR	jmp L5589D4CE_49
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_49:;					=>>L5589D4CE_49:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_50;	=>>if NZ	jmp L5589D4CE_50
	goto	L5589D4CE_48;			=>>jmp	L5589D4CE_48
L5589D4CE_50:;					=>>L5589D4CE_50:;
	
_A01B23225_150:;				=>>_A01B23225_150:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bitp_1_8+0;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_52;		=>>if ZR	jmp L5589D4CE_52
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_52:;					=>>L5589D4CE_52:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_53;	=>>if NZ	jmp L5589D4CE_53
	goto	L5589D4CE_51;			=>>jmp	L5589D4CE_51
L5589D4CE_53:;					=>>L5589D4CE_53:;
	
_A01B23225_151:;				=>>_A01B23225_151:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_55;	=>>if NZ	jmp L5589D4CE_55
	goto	L5589D4CE_54;			=>>jmp	L5589D4CE_54
L5589D4CE_55:;					=>>L5589D4CE_55:;
_A01B23225_152:;				=>>_A01B23225_152:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_54:;					=>>L5589D4CE_54:;
_A01B23225_153:;				=>>_A01B23225_153:;
	goto L5589D4CE_56;			=>>jmp	L5589D4CE_56
L5589D4CE_51:;					=>>L5589D4CE_51:;
	
_A01B23225_154:;				=>>_A01B23225_154:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_58;	=>>if NZ	jmp L5589D4CE_58
	goto	L5589D4CE_57;			=>>jmp	L5589D4CE_57
L5589D4CE_58:;					=>>L5589D4CE_58:;
_A01B23225_155:;				=>>_A01B23225_155:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_57:;					=>>L5589D4CE_57:;
_A01B23225_156:;				=>>_A01B23225_156:;
L5589D4CE_56:;					=>>L5589D4CE_56:;
_A01B23225_157:;				=>>_A01B23225_157:;
	goto L5589D4CE_59;			=>>jmp	L5589D4CE_59
L5589D4CE_48:;					=>>L5589D4CE_48:;
	
_A01B23225_158:;				=>>_A01B23225_158:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bitp_1_8+0;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_61;		=>>if ZR	jmp L5589D4CE_61
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_61:;					=>>L5589D4CE_61:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_62;	=>>if NZ	jmp L5589D4CE_62
	goto	L5589D4CE_60;			=>>jmp	L5589D4CE_60
L5589D4CE_62:;					=>>L5589D4CE_62:;
	
_A01B23225_159:;				=>>_A01B23225_159:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_64;	=>>if NZ	jmp L5589D4CE_64
	goto	L5589D4CE_63;			=>>jmp	L5589D4CE_63
L5589D4CE_64:;					=>>L5589D4CE_64:;
_A01B23225_160:;				=>>_A01B23225_160:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_63:;					=>>L5589D4CE_63:;
_A01B23225_161:;				=>>_A01B23225_161:;
L5589D4CE_60:;					=>>L5589D4CE_60:;
_A01B23225_162:;				=>>_A01B23225_162:;
L5589D4CE_59:;					=>>L5589D4CE_59:;
_A01B23225_163:;				=>>_A01B23225_163:;
_A01B23225_164:;				=>>_A01B23225_164:;
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_165:;				=>>_A01B23225_165:;
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A01B23225_166:;				=>>_A01B23225_166:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0003;			=>>AR = 0x0003//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto L5589D4CE_46;			=>>jmp	L5589D4CE_46
L5589D4CE_45:;					=>>L5589D4CE_45:;
L5589D4CE_40:;					=>>L5589D4CE_40:;
_A01B23225_167:;				=>>_A01B23225_167:;
	return;					=>>AR	= 5;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_PollingKey3B90E3B1_end:;			=>>_PollingKey3B90E3B1_end:;
_A01B23225_168:;				=>>_A01B23225_168:;
}




.code


naked void ginit_code_keypad_0E0216C1_s(void)	=>>ginit_code_keypad_0E0216C1_s:
{
	return;					=>>rets
}








.code



.code







.data





.code




















































































































































