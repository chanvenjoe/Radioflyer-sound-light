
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10);




.code
rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)=>>_memset_sC3E11DB1:
{
	__int16 _ret_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A149B8B01_202:;				=>>_A149B8B01_202:;
_A149B8B01_203:;				=>>_A149B8B01_203:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LF2D2B0F3_88:;					=>>LF2D2B0F3_88:;
_A149B8B01_204:;				=>>_A149B8B01_204:;
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_89;	=>>if NZ	jmp LF2D2B0F3_89
	goto	LF2D2B0F3_87;			=>>jmp	LF2D2B0F3_87
LF2D2B0F3_89:;					=>>LF2D2B0F3_89:;
_A149B8B01_205:;				=>>_A149B8B01_205:;
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_c_0_6;			=>>AR	= 3;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm rm[I1] = AX + AR;			=>>rm[I1] = AX + AR//
	goto LF2D2B0F3_88;			=>>jmp	LF2D2B0F3_88
LF2D2B0F3_87:;					=>>LF2D2B0F3_87:;
_A149B8B01_206:;				=>>_A149B8B01_206:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LF2D2B0F3_86;			=>>jmp	LF2D2B0F3_86
LF2D2B0F3_86:;					=>>LF2D2B0F3_86:;
_A149B8B01_207:;				=>>_A149B8B01_207:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_memset_sC3E11DB1_end:;				=>>_memset_sC3E11DB1_end:;
_A149B8B01_208:;				=>>_A149B8B01_208:;
}

rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)=>>_memset_rC7200006:
{
	__int16 _ret_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A149B8B01_209:;				=>>_A149B8B01_209:;
_A149B8B01_210:;				=>>_A149B8B01_210:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LF2D2B0F3_92:;					=>>LF2D2B0F3_92:;
_A149B8B01_211:;				=>>_A149B8B01_211:;
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_93;	=>>if NZ	jmp LF2D2B0F3_93
	goto	LF2D2B0F3_91;			=>>jmp	LF2D2B0F3_91
LF2D2B0F3_93:;					=>>LF2D2B0F3_93:;
_A149B8B01_212:;				=>>_A149B8B01_212:;
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_c_0_6;			=>>AR	= 3;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm rm[I1] = AX + AR;			=>>rm[I1] = AX + AR//
	goto LF2D2B0F3_92;			=>>jmp	LF2D2B0F3_92
LF2D2B0F3_91:;					=>>LF2D2B0F3_91:;
_A149B8B01_213:;				=>>_A149B8B01_213:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LF2D2B0F3_90;			=>>jmp	LF2D2B0F3_90
LF2D2B0F3_90:;					=>>LF2D2B0F3_90:;
_A149B8B01_214:;				=>>_A149B8B01_214:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_memset_rC7200006_end:;				=>>_memset_rC7200006_end:;
_A149B8B01_215:;				=>>_A149B8B01_215:;
}

rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)=>>_memset5A9D755A:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A149B8B01_216:;				=>>_A149B8B01_216:;
	
_A149B8B01_217:;				=>>_A149B8B01_217:;
	sAX	= (int)&_s_0_4_0;		=>>AR	= 2;AX	= rm[BP_SAVE];AX	+= AR
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_96;	=>>if NZ	jmp LF2D2B0F3_96
	goto	LF2D2B0F3_95;			=>>jmp	LF2D2B0F3_95
LF2D2B0F3_96:;					=>>LF2D2B0F3_96:;
_A149B8B01_218:;				=>>_A149B8B01_218:;
_A149B8B01_219:;				=>>_A149B8B01_219:;
	sSI	= (int)&_n_0_10;		=>>AR	= 5;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_c_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sAX	= (int)&_s_0_4_0;		=>>AR	= 2;AX	= rm[BP_SAVE];AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_memset_rC7200006(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);=>>call	_memset_rC7200006
	RESTORESP(3);				=>>AR	= 3;BP	+= AR;
	sDX	= 0x0800;			=>>DX	= 0x0800
	goto LF2D2B0F3_94;			=>>jmp	LF2D2B0F3_94
LF2D2B0F3_95:;					=>>LF2D2B0F3_95:;
_A149B8B01_220:;				=>>_A149B8B01_220:;
_A149B8B01_221:;				=>>_A149B8B01_221:;
_A149B8B01_222:;				=>>_A149B8B01_222:;
	sSI	= (int)&_n_0_10;		=>>AR	= 5;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_c_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sAX	= (int)&_s_0_4_0;		=>>AR	= 2;AX	= rm[BP_SAVE];AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_memset_sC3E11DB1(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);=>>call	_memset_sC3E11DB1
	RESTORESP(3);				=>>AR	= 3;BP	+= AR;
	sDX	= 0;				=>>DX	= 0x00
	goto LF2D2B0F3_94;			=>>jmp	LF2D2B0F3_94
LF2D2B0F3_94:;					=>>LF2D2B0F3_94:;
_A149B8B01_223:;				=>>_A149B8B01_223:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_memset5A9D755A_end:;				=>>_memset5A9D755A_end:;
_A149B8B01_224:;				=>>_A149B8B01_224:;
}




.code


naked void ginit_code_memset_CDCF17ED_s(void)	=>>ginit_code_memset_CDCF17ED_s:
{
	return;					=>>rets
}








.code



.code







.data





.code




























































































