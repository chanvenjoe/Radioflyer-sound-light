
#include "crt0.h"













__int16 _flags026116D5;
__int16 _songidx8C42F7DA;



// CODE segment					=>>VarRM[0:4095]={
 _flags026116D5,_songidx8C42F7DA 
};

.code


rjmp void _InitialDA4A7CC4();
rjmp void _CheckSongLimit402181B4();




.code



.data



.code
rjmp void L0E8FA404_19()			=>>L0E8FA404_19:
{
_A0EDC73FE_68:;					=>>_A0EDC73FE_68:;
	
_A0EDC73FE_69:;					=>>_A0EDC73FE_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0EDC73FE_70:;					=>>_A0EDC73FE_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0EDC73FE_71:;					=>>_A0EDC73FE_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0EDC73FE_72:;					=>>_A0EDC73FE_72:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A0EDC73FE_73:;					=>>_A0EDC73FE_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_74:;					=>>_A0EDC73FE_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_75:;					=>>_A0EDC73FE_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_76:;					=>>_A0EDC73FE_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_77:;					=>>_A0EDC73FE_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_78:;					=>>_A0EDC73FE_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_79:;					=>>_A0EDC73FE_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_80:;					=>>_A0EDC73FE_80:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A0EDC73FE_81:;					=>>_A0EDC73FE_81:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_A0EDC73FE_82:;					=>>_A0EDC73FE_82:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A0EDC73FE_83:;					=>>_A0EDC73FE_83:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A0EDC73FE_84:;					=>>_A0EDC73FE_84:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A0EDC73FE_85:;					=>>_A0EDC73FE_85:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_21:;					=>>L0E8FA404_21:;
_A0EDC73FE_86:;					=>>_A0EDC73FE_86:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_A0EDC73FE_87:;					=>>_A0EDC73FE_87:;
}

rjmp void L0E8FA404_22()			=>>L0E8FA404_22:
{
_A0EDC73FE_88:;					=>>_A0EDC73FE_88:;
	
_A0EDC73FE_89:;					=>>_A0EDC73FE_89:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_A0EDC73FE_90:;					=>>_A0EDC73FE_90:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_A0EDC73FE_91:;					=>>_A0EDC73FE_91:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_A0EDC73FE_92:;					=>>_A0EDC73FE_92:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
L0E8FA404_24:;					=>>L0E8FA404_24:;
_A0EDC73FE_93:;					=>>_A0EDC73FE_93:;
	return;					=>>rets
L0E8FA404_22_end:;				=>>L0E8FA404_22_end:;
_A0EDC73FE_94:;					=>>_A0EDC73FE_94:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A0EDC73FE_95:;					=>>_A0EDC73FE_95:;
	
_A0EDC73FE_96:;					=>>_A0EDC73FE_96:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0EDC73FE_97:;					=>>_A0EDC73FE_97:;
_A0EDC73FE_98:;					=>>_A0EDC73FE_98:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
_A0EDC73FE_99:;					=>>_A0EDC73FE_99:;
_A0EDC73FE_100:;				=>>_A0EDC73FE_100:;
	NEARCALL(L0E8FA404_22);			=>>call	L0E8FA404_22
_A0EDC73FE_101:;				=>>_A0EDC73FE_101:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_25:;					=>>L0E8FA404_25:;
_A0EDC73FE_102:;				=>>_A0EDC73FE_102:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A0EDC73FE_103:;				=>>_A0EDC73FE_103:;
}

rjmp void _CheckSongLimit402181B4()		=>>_CheckSongLimit402181B4:
{
_A0EDC73FE_104:;				=>>_A0EDC73FE_104:;
	
_A0EDC73FE_105:;				=>>_A0EDC73FE_105:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L0E8FA404_28;	=>>if ZR	jmp L0E8FA404_28
	goto	L0E8FA404_27;			=>>jmp	L0E8FA404_27
L0E8FA404_28:;					=>>L0E8FA404_28:;
	
_A0EDC73FE_106:;				=>>_A0EDC73FE_106:;
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
	goto L0E8FA404_29;			=>>jmp	L0E8FA404_29
L0E8FA404_27:;					=>>L0E8FA404_27:;
	
_A0EDC73FE_107:;				=>>_A0EDC73FE_107:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto L0E8FA404_31;	=>>if ZR	jmp L0E8FA404_31
	goto	L0E8FA404_30;			=>>jmp	L0E8FA404_30
L0E8FA404_31:;					=>>L0E8FA404_31:;
	
_A0EDC73FE_108:;				=>>_A0EDC73FE_108:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_30:;					=>>L0E8FA404_30:;
_A0EDC73FE_109:;				=>>_A0EDC73FE_109:;
L0E8FA404_29:;					=>>L0E8FA404_29:;
_A0EDC73FE_110:;				=>>_A0EDC73FE_110:;
L0E8FA404_26:;					=>>L0E8FA404_26:;
_A0EDC73FE_111:;				=>>_A0EDC73FE_111:;
	return;					=>>rets
_CheckSongLimit402181B4_end:;			=>>_CheckSongLimit402181B4_end:;
_A0EDC73FE_112:;				=>>_A0EDC73FE_112:;
}




.code


naked void ginit_code_global_6037E6D5_s(void)	=>>ginit_code_global_6037E6D5_s:
{
	return;					=>>rets
}








.code



.code







.data





.code



































































