// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _iADPCCACC469;
__int16 _adpch30670376[18];
__int16 _adpFLTG0FBE3CB5;
__int16 ADPCMY[8];

// .bss ends _bss

// CODE segment

.code


rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
rjmp void ADPCM_CHX_Init();
rjmp void DoADPCM();
rjmp void _StopAllADPCM9255018D();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _text
.code
rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	__int16 _q_1_6;
	////////////////////////////
_A0432E234_102:;
	////////////////////////////
_A0432E234_103:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_A0432E234_104:;
	_i_1_2+0	= 0x00;
L7F5A46A0_33:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L7F5A46A0_37;
	goto	L7F5A46A0_35;
L7F5A46A0_37:;
	goto L7F5A46A0_34;
L7F5A46A0_36:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto L7F5A46A0_33;
L7F5A46A0_34:;
	////////////////////////////
_A0432E234_105:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sfx_CHECKZEROLONG();
	if(__jz__)	goto L7F5A46A0_39;
	goto	L7F5A46A0_38;
L7F5A46A0_39:;
	////////////////////////////
_A0432E234_106:;
_A0432E234_107:;
	sAX	= 0x0012;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sDX	= 0;
	PUSH(sDX);
	PUSH(sAX);
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	RESTORESP(4);
_A0432E234_108:;
	asm AX = #_adpdata32993E3B+0;
	PUSH(sAX);
	sSI	= (int)&_index_0_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0004;
	sfx_IMUL_AX_CX();
	sCX	= POP();
	sAX	= sAX + sCX;
	sSI	= (int)&_q_1_6;
	*(__int16*)sSI	= sAX;
_A0432E234_109:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI++;
	sDX	= *(__int16*)sDI--;
	sSI	= POP();
	sfx_STORSILONG();
_A0432E234_110:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0011;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_111:;
	asm AX = _adpFLTG0FBE3CB5+0;
	PUSH(sAX);
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	// mark sAX = sAX << 1;
	sCX	= POP();
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_112:;
	sAX	= 0x0001;
	goto L7F5A46A0_32;
L7F5A46A0_38:;
_A0432E234_113:;
_A0432E234_114:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A0432E234_115:;
	goto L7F5A46A0_36;
L7F5A46A0_35:;
_A0432E234_116:;
	sAX	= 0x0000;
	goto L7F5A46A0_32;
L7F5A46A0_32:;
_A0432E234_117:;
	return;
_playADPCMBACD5AFD_end:;
_A0432E234_118:;
}

rjmp void ADPCM_CHX_Init()
{
_A0432E234_119:;
	////////////////////////////
_A0432E234_120:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A0432E234_121:;
_A0432E234_122:;
	sAX	= 0x0012;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	asm AX = _adpch30670376+0;
	sDX	= 0;
	PUSH(sDX);
	PUSH(sAX);
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	RESTORESP(4);
L7F5A46A0_40:;
_A0432E234_123:;
	return;
ADPCM_CHX_Init_end:;
_A0432E234_124:;
}

rjmp void L7F5A46A0_41()
{
	__int16 _i_1_2;
	////////////////////////////
_A0432E234_125:;
	////////////////////////////
_A0432E234_126:;
	asm AX = ADPCMY+0;
_A0432E234_127:;
	asm	AR = AX
_A0432E234_128:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A0432E234_129:;
	_i_1_2+0	= 0x08;
L7F5A46A0_45:;
_A0432E234_130:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_46;
	goto	L7F5A46A0_44;
L7F5A46A0_46:;
	////////////////////////////
_A0432E234_131:;
	sAX	= 0x0000;
_A0432E234_132:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_133:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_A0432E234_134:;
	goto L7F5A46A0_45;
L7F5A46A0_44:;
L7F5A46A0_43:;
_A0432E234_135:;
	return;
L7F5A46A0_41_end:;
_A0432E234_136:;
}

rjmp void DoADPCM()
{
_A0432E234_137:;
	////////////////////////////
_A0432E234_138:;
	asm AX = ADPCMY+0;
_A0432E234_139:;
	asm	AR = AX
_A0432E234_140:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A0432E234_141:;
	sAX	= 0x0000;
_A0432E234_142:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_143:;
	sAX	= 0x0000;
_A0432E234_144:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_145:;
	sAX	= 0x0000;
_A0432E234_146:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_147:;
	sAX	= 0x0000;
_A0432E234_148:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_149:;
	sAX	= 0x0000;
_A0432E234_150:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_151:;
	sAX	= 0x0000;
_A0432E234_152:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_153:;
	sAX	= 0x0000;
_A0432E234_154:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_155:;
	sAX	= 0x0000;
_A0432E234_156:;
	asm	rm[I0++] = AX
	////////////////////////////
_A0432E234_157:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_A0432E234_158:;
	asm I1 = _adpFLTG0FBE3CB5+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A0432E234_159:;
_A0432E234_160:;
	DecodeChannel();
L7F5A46A0_47:;
_A0432E234_161:;
	return;
DoADPCM_end:;
_A0432E234_162:;
}

rjmp void _StopAllADPCM9255018D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_A0432E234_163:;
	////////////////////////////
_A0432E234_164:;
	_i_1_2+0	= 0x01;
_A0432E234_165:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
L7F5A46A0_50:;
_A0432E234_166:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_51;
	goto	L7F5A46A0_49;
L7F5A46A0_51:;
	////////////////////////////
_A0432E234_167:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_A0432E234_168:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A0432E234_169:;
	goto L7F5A46A0_50;
L7F5A46A0_49:;
L7F5A46A0_48:;
_A0432E234_170:;
	return;
_StopAllADPCM9255018D_end:;
_A0432E234_171:;
}

// .code ends _text


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _memset5A9D755A:proc
// extern ADPCM_Tmpi:word
// public _iADPCCACC469
// public ADPCMY
// public _adpch30670376
// extern _adpdata32993E3B:proc
// public ADPCM_CHX_Init
// public _playADPCMBACD5AFD
// public DoADPCM
// public _StopAllADPCM9255018D
// public _adpFLTG0FBE3CB5
// extern DecodeChannel:proc
