
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
_AE3845712_43:;					=>>_AE3845712_43:;
_AE3845712_44:;					=>>_AE3845712_44:;
	asm	clr io[INTREQ].b0		=>>clr io[INTREQ].b0
_AE3845712_45:;					=>>_AE3845712_45:;
	asm	push AX				=>>push AX
_AE3845712_46:;					=>>_AE3845712_46:;
	asm	push I0				=>>push I0
_AE3845712_47:;					=>>_AE3845712_47:;
	asm	push CBL			=>>push CBL
	
_AE3845712_48:;					=>>_AE3845712_48:;
	io[0x3B]	= 0x0007;		=>>AR	= 0x07;io[0x3B]	= AR
	
_AE3845712_49:;					=>>_AE3845712_49:;
	asm AX = rm[outbuf+0];			=>>AX = rm[outbuf+0]//
_AE3845712_50:;					=>>_AE3845712_50:;
	asm	AR = AX				=>>AR = AX
_AE3845712_51:;					=>>_AE3845712_51:;
	asm	I0 = AR				=>>I0 = AR
	
_AE3845712_52:;					=>>_AE3845712_52:;
_AE3845712_53:;					=>>_AE3845712_53:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AE3845712_54:;					=>>_AE3845712_54:;
_AE3845712_55:;					=>>_AE3845712_55:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AE3845712_56:;					=>>_AE3845712_56:;
_AE3845712_57:;					=>>_AE3845712_57:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AE3845712_58:;					=>>_AE3845712_58:;
_AE3845712_59:;					=>>_AE3845712_59:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AE3845712_60:;					=>>_AE3845712_60:;
_AE3845712_61:;					=>>_AE3845712_61:;
	get_I0();				=>>push	I0;pop	AX;
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AE3845712_62:;					=>>_AE3845712_62:;
	asm	pop CBL				=>>pop CBL
_AE3845712_63:;					=>>_AE3845712_63:;
	asm	pop I0				=>>pop I0
_AE3845712_64:;					=>>_AE3845712_64:;
	asm	pop AX				=>>pop AX
L0E8FA404_15:;					=>>L0E8FA404_15:;
_AE3845712_65:;					=>>_AE3845712_65:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM_Entry4EB0B003_end:;			=>>_PWM_Entry4EB0B003_end:;
_AE3845712_66:;					=>>_AE3845712_66:;
}

rjmp void L0E8FA404_16()			=>>L0E8FA404_16:
{
_AE3845712_67:;					=>>_AE3845712_67:;
	
_AE3845712_68:;					=>>_AE3845712_68:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE3845712_69:;					=>>_AE3845712_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE3845712_70:;					=>>_AE3845712_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE3845712_71:;					=>>_AE3845712_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE3845712_72:;					=>>_AE3845712_72:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_73:;					=>>_AE3845712_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_74:;					=>>_AE3845712_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_75:;					=>>_AE3845712_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_76:;					=>>_AE3845712_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_77:;					=>>_AE3845712_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_78:;					=>>_AE3845712_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_79:;					=>>_AE3845712_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE3845712_80:;					=>>_AE3845712_80:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_AE3845712_81:;					=>>_AE3845712_81:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AE3845712_82:;					=>>_AE3845712_82:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AE3845712_83:;					=>>_AE3845712_83:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AE3845712_84:;					=>>_AE3845712_84:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_18:;					=>>L0E8FA404_18:;
_AE3845712_85:;					=>>_AE3845712_85:;
	return;					=>>rets
L0E8FA404_16_end:;				=>>L0E8FA404_16_end:;
_AE3845712_86:;					=>>_AE3845712_86:;
}

rjmp void L0E8FA404_19()			=>>L0E8FA404_19:
{
_AE3845712_87:;					=>>_AE3845712_87:;
	
_AE3845712_88:;					=>>_AE3845712_88:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_AE3845712_89:;					=>>_AE3845712_89:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_AE3845712_90:;					=>>_AE3845712_90:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_AE3845712_91:;					=>>_AE3845712_91:;
	io[0x08]	= 0x0000;		=>>AR	= 0x00;io[0x08]	= AR
L0E8FA404_21:;					=>>L0E8FA404_21:;
_AE3845712_92:;					=>>_AE3845712_92:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_AE3845712_93:;					=>>_AE3845712_93:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_AE3845712_94:;					=>>_AE3845712_94:;
	
_AE3845712_95:;					=>>_AE3845712_95:;
	sAX	= 0xFFFF;			=>>AX	= 0xFFFF
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_96:;					=>>_AE3845712_96:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	inbuf+0 = sAX				=>>rm[inbuf+0]	= AX
_AE3845712_97:;					=>>_AE3845712_97:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AE3845712_98:;					=>>_AE3845712_98:;
_AE3845712_99:;					=>>_AE3845712_99:;
	NEARCALL(L0E8FA404_16);			=>>call	L0E8FA404_16
_AE3845712_100:;				=>>_AE3845712_100:;
_AE3845712_101:;				=>>_AE3845712_101:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
L0E8FA404_22:;					=>>L0E8FA404_22:;
_AE3845712_102:;				=>>_AE3845712_102:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AE3845712_103:;				=>>_AE3845712_103:;
}








.code



.code







.data





.code










