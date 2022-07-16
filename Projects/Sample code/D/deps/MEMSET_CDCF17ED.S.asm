
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
_A0432E234_321:;				=>>_A0432E234_321:;
	
_A0432E234_322:;				=>>_A0432E234_322:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LF2D2B0F3_101:;					=>>LF2D2B0F3_101:;
_A0432E234_323:;				=>>_A0432E234_323:;
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_102;	=>>if NZ	jmp LF2D2B0F3_102
	goto	LF2D2B0F3_100;			=>>jmp	LF2D2B0F3_100
LF2D2B0F3_102:;					=>>LF2D2B0F3_102:;
_A0432E234_324:;				=>>_A0432E234_324:;
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
_A0432E234_325:;				=>>_A0432E234_325:;
	goto LF2D2B0F3_101;			=>>jmp	LF2D2B0F3_101
LF2D2B0F3_100:;					=>>LF2D2B0F3_100:;
_A0432E234_326:;				=>>_A0432E234_326:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LF2D2B0F3_99;			=>>jmp	LF2D2B0F3_99
LF2D2B0F3_99:;					=>>LF2D2B0F3_99:;
_A0432E234_327:;				=>>_A0432E234_327:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_memset_sC3E11DB1_end:;				=>>_memset_sC3E11DB1_end:;
_A0432E234_328:;				=>>_A0432E234_328:;
}

rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)=>>_memset_rC7200006:
{
	__int16 _ret_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A0432E234_329:;				=>>_A0432E234_329:;
	
_A0432E234_330:;				=>>_A0432E234_330:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_ret_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LF2D2B0F3_105:;					=>>LF2D2B0F3_105:;
_A0432E234_331:;				=>>_A0432E234_331:;
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_n_0_8;			=>>AR	= 4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_106;	=>>if NZ	jmp LF2D2B0F3_106
	goto	LF2D2B0F3_104;			=>>jmp	LF2D2B0F3_104
LF2D2B0F3_106:;					=>>LF2D2B0F3_106:;
_A0432E234_332:;				=>>_A0432E234_332:;
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
_A0432E234_333:;				=>>_A0432E234_333:;
	goto LF2D2B0F3_105;			=>>jmp	LF2D2B0F3_105
LF2D2B0F3_104:;					=>>LF2D2B0F3_104:;
_A0432E234_334:;				=>>_A0432E234_334:;
	sSI	= (int)&_s_0_4;			=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LF2D2B0F3_103;			=>>jmp	LF2D2B0F3_103
LF2D2B0F3_103:;					=>>LF2D2B0F3_103:;
_A0432E234_335:;				=>>_A0432E234_335:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_memset_rC7200006_end:;				=>>_memset_rC7200006_end:;
_A0432E234_336:;				=>>_A0432E234_336:;
}

rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)=>>_memset5A9D755A:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A0432E234_337:;				=>>_A0432E234_337:;
	
_A0432E234_338:;				=>>_A0432E234_338:;
	sAX	= (int)&_s_0_4_0;		=>>AR	= 2;AX	= rm[BP_SAVE];AX	+= AR
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF2D2B0F3_109;	=>>if NZ	jmp LF2D2B0F3_109
	goto	LF2D2B0F3_108;			=>>jmp	LF2D2B0F3_108
LF2D2B0F3_109:;					=>>LF2D2B0F3_109:;
_A0432E234_339:;				=>>_A0432E234_339:;
_A0432E234_340:;				=>>_A0432E234_340:;
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
	goto LF2D2B0F3_107;			=>>jmp	LF2D2B0F3_107
LF2D2B0F3_108:;					=>>LF2D2B0F3_108:;
_A0432E234_341:;				=>>_A0432E234_341:;
_A0432E234_342:;				=>>_A0432E234_342:;
_A0432E234_343:;				=>>_A0432E234_343:;
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
	goto LF2D2B0F3_107;			=>>jmp	LF2D2B0F3_107
LF2D2B0F3_107:;					=>>LF2D2B0F3_107:;
_A0432E234_344:;				=>>_A0432E234_344:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_memset5A9D755A_end:;				=>>_memset5A9D755A_end:;
_A0432E234_345:;				=>>_A0432E234_345:;
}








.code



.code







.data





.code





