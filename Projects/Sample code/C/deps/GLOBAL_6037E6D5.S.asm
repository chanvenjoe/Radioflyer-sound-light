
#include "crt0.h"



fast __int16 inbuf;
fast __int16 outbuf;










align(128) __int16 PCMY[128];


						=>>VarRM[0:127]={
 inbuf,outbuf 
};
// CODE segment					=>>VarRM[0:4095]={
 BaseOn128#PCMY[128] 
};

.code


interrupt rjmp void _PWM_Entry4EB0B003();
rjmp void _InitialDA4A7CC4();




.code



.data



.code
interrupt rjmp void _PWM_Entry4EB0B003()	=>>_PWM_Entry4EB0B003:
{						=>>push ax;push bx;push cx;push dx;push r0;push r1;push r2;push r3;push i1;push p1;push mx;push mr0;push mr1;push mr2;ar = p1.hh;push ar;
_A569F39CC_44:;					=>>_A569F39CC_44:;
	
_A569F39CC_45:;					=>>_A569F39CC_45:;
	io[0x02]	= 0x0000;		=>>AR	= 0x00;io[0x02]	= AR
_A569F39CC_46:;					=>>_A569F39CC_46:;
	asm	push AX				=>>push AX
_A569F39CC_47:;					=>>_A569F39CC_47:;
	asm	push I0				=>>push I0
_A569F39CC_48:;					=>>_A569F39CC_48:;
	asm	push CBL			=>>push CBL
_A569F39CC_49:;					=>>_A569F39CC_49:;
	io[0x3B]	= 0x0007;		=>>AR	= 0x07;io[0x3B]	= AR
	
_A569F39CC_50:;					=>>_A569F39CC_50:;
	asm AX = rm[outbuf+0];			=>>AX = rm[outbuf+0]//
_A569F39CC_51:;					=>>_A569F39CC_51:;
	asm	AR = AX				=>>AR = AX
_A569F39CC_52:;					=>>_A569F39CC_52:;
	asm	I0 = AR				=>>I0 = AR
	
_A569F39CC_53:;					=>>_A569F39CC_53:;
_A569F39CC_54:;					=>>_A569F39CC_54:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_A569F39CC_55:;					=>>_A569F39CC_55:;
_A569F39CC_56:;					=>>_A569F39CC_56:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_A569F39CC_57:;					=>>_A569F39CC_57:;
_A569F39CC_58:;					=>>_A569F39CC_58:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_A569F39CC_59:;					=>>_A569F39CC_59:;
_A569F39CC_60:;					=>>_A569F39CC_60:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_A569F39CC_61:;					=>>_A569F39CC_61:;
_A569F39CC_62:;					=>>_A569F39CC_62:;
	get_I0();				=>>push	I0;pop	AX;
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_A569F39CC_63:;					=>>_A569F39CC_63:;
	asm	pop CBL				=>>pop CBL
_A569F39CC_64:;					=>>_A569F39CC_64:;
	asm	pop I0				=>>pop I0
_A569F39CC_65:;					=>>_A569F39CC_65:;
	asm	pop AX				=>>pop AX
L0E8FA404_15:;					=>>L0E8FA404_15:;
_A569F39CC_66:;					=>>_A569F39CC_66:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM_Entry4EB0B003_end:;			=>>_PWM_Entry4EB0B003_end:;
_A569F39CC_67:;					=>>_A569F39CC_67:;
}

rjmp void L0E8FA404_16()			=>>L0E8FA404_16:
{
_A569F39CC_68:;					=>>_A569F39CC_68:;
	
_A569F39CC_69:;					=>>_A569F39CC_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A569F39CC_70:;					=>>_A569F39CC_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A569F39CC_71:;					=>>_A569F39CC_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A569F39CC_72:;					=>>_A569F39CC_72:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A569F39CC_73:;					=>>_A569F39CC_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_74:;					=>>_A569F39CC_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_75:;					=>>_A569F39CC_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_76:;					=>>_A569F39CC_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_77:;					=>>_A569F39CC_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_78:;					=>>_A569F39CC_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_79:;					=>>_A569F39CC_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_80:;					=>>_A569F39CC_80:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A569F39CC_81:;					=>>_A569F39CC_81:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_A569F39CC_82:;					=>>_A569F39CC_82:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A569F39CC_83:;					=>>_A569F39CC_83:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A569F39CC_84:;					=>>_A569F39CC_84:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A569F39CC_85:;					=>>_A569F39CC_85:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_18:;					=>>L0E8FA404_18:;
_A569F39CC_86:;					=>>_A569F39CC_86:;
	return;					=>>rets
L0E8FA404_16_end:;				=>>L0E8FA404_16_end:;
_A569F39CC_87:;					=>>_A569F39CC_87:;
}

rjmp void L0E8FA404_19()			=>>L0E8FA404_19:
{
_A569F39CC_88:;					=>>_A569F39CC_88:;
	
_A569F39CC_89:;					=>>_A569F39CC_89:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_A569F39CC_90:;					=>>_A569F39CC_90:;
	io[0x08]	= 0x0000;		=>>AR	= 0x00;io[0x08]	= AR
L0E8FA404_21:;					=>>L0E8FA404_21:;
_A569F39CC_91:;					=>>_A569F39CC_91:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_A569F39CC_92:;					=>>_A569F39CC_92:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A569F39CC_93:;					=>>_A569F39CC_93:;
	
_A569F39CC_94:;					=>>_A569F39CC_94:;
	sAX	= 0xFFFF;			=>>AX	= 0xFFFF
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A569F39CC_95:;					=>>_A569F39CC_95:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	inbuf+0 = sAX				=>>rm[inbuf+0]	= AX
_A569F39CC_96:;					=>>_A569F39CC_96:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_A569F39CC_97:;					=>>_A569F39CC_97:;
_A569F39CC_98:;					=>>_A569F39CC_98:;
	NEARCALL(L0E8FA404_16);			=>>call	L0E8FA404_16
_A569F39CC_99:;					=>>_A569F39CC_99:;
_A569F39CC_100:;				=>>_A569F39CC_100:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
L0E8FA404_22:;					=>>L0E8FA404_22:;
_A569F39CC_101:;				=>>_A569F39CC_101:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A569F39CC_102:;				=>>_A569F39CC_102:;
}








.code



.code







.data





.code










