
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
_AB97CD6AD_68:;					=>>_AB97CD6AD_68:;
	
_AB97CD6AD_69:;					=>>_AB97CD6AD_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AB97CD6AD_70:;					=>>_AB97CD6AD_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AB97CD6AD_71:;					=>>_AB97CD6AD_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AB97CD6AD_72:;					=>>_AB97CD6AD_72:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AB97CD6AD_73:;					=>>_AB97CD6AD_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_74:;					=>>_AB97CD6AD_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_75:;					=>>_AB97CD6AD_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_76:;					=>>_AB97CD6AD_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_77:;					=>>_AB97CD6AD_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_78:;					=>>_AB97CD6AD_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_79:;					=>>_AB97CD6AD_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_80:;					=>>_AB97CD6AD_80:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AB97CD6AD_81:;					=>>_AB97CD6AD_81:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_AB97CD6AD_82:;					=>>_AB97CD6AD_82:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AB97CD6AD_83:;					=>>_AB97CD6AD_83:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AB97CD6AD_84:;					=>>_AB97CD6AD_84:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AB97CD6AD_85:;					=>>_AB97CD6AD_85:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_21:;					=>>L0E8FA404_21:;
_AB97CD6AD_86:;					=>>_AB97CD6AD_86:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_AB97CD6AD_87:;					=>>_AB97CD6AD_87:;
}

rjmp void L0E8FA404_22()			=>>L0E8FA404_22:
{
_AB97CD6AD_88:;					=>>_AB97CD6AD_88:;
	
_AB97CD6AD_89:;					=>>_AB97CD6AD_89:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_AB97CD6AD_90:;					=>>_AB97CD6AD_90:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_AB97CD6AD_91:;					=>>_AB97CD6AD_91:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_AB97CD6AD_92:;					=>>_AB97CD6AD_92:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
L0E8FA404_24:;					=>>L0E8FA404_24:;
_AB97CD6AD_93:;					=>>_AB97CD6AD_93:;
	return;					=>>rets
L0E8FA404_22_end:;				=>>L0E8FA404_22_end:;
_AB97CD6AD_94:;					=>>_AB97CD6AD_94:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_AB97CD6AD_95:;					=>>_AB97CD6AD_95:;
	
_AB97CD6AD_96:;					=>>_AB97CD6AD_96:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AB97CD6AD_97:;					=>>_AB97CD6AD_97:;
_AB97CD6AD_98:;					=>>_AB97CD6AD_98:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
_AB97CD6AD_99:;					=>>_AB97CD6AD_99:;
_AB97CD6AD_100:;				=>>_AB97CD6AD_100:;
	NEARCALL(L0E8FA404_22);			=>>call	L0E8FA404_22
_AB97CD6AD_101:;				=>>_AB97CD6AD_101:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_25:;					=>>L0E8FA404_25:;
_AB97CD6AD_102:;				=>>_AB97CD6AD_102:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AB97CD6AD_103:;				=>>_AB97CD6AD_103:;
}

rjmp void _CheckSongLimit402181B4()		=>>_CheckSongLimit402181B4:
{
_AB97CD6AD_104:;				=>>_AB97CD6AD_104:;
	
_AB97CD6AD_105:;				=>>_AB97CD6AD_105:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L0E8FA404_28;	=>>if ZR	jmp L0E8FA404_28
	goto	L0E8FA404_27;			=>>jmp	L0E8FA404_27
L0E8FA404_28:;					=>>L0E8FA404_28:;
	
_AB97CD6AD_106:;				=>>_AB97CD6AD_106:;
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
	goto L0E8FA404_29;			=>>jmp	L0E8FA404_29
L0E8FA404_27:;					=>>L0E8FA404_27:;
	
_AB97CD6AD_107:;				=>>_AB97CD6AD_107:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto L0E8FA404_31;	=>>if ZR	jmp L0E8FA404_31
	goto	L0E8FA404_30;			=>>jmp	L0E8FA404_30
L0E8FA404_31:;					=>>L0E8FA404_31:;
	
_AB97CD6AD_108:;				=>>_AB97CD6AD_108:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_30:;					=>>L0E8FA404_30:;
_AB97CD6AD_109:;				=>>_AB97CD6AD_109:;
L0E8FA404_29:;					=>>L0E8FA404_29:;
_AB97CD6AD_110:;				=>>_AB97CD6AD_110:;
L0E8FA404_26:;					=>>L0E8FA404_26:;
_AB97CD6AD_111:;				=>>_AB97CD6AD_111:;
	return;					=>>rets
_CheckSongLimit402181B4_end:;			=>>_CheckSongLimit402181B4_end:;
_AB97CD6AD_112:;				=>>_AB97CD6AD_112:;
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



































































