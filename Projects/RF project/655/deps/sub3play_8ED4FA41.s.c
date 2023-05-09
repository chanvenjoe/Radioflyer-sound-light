// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 bts_ch0_get_ix[2];
__int16 PCMYIN_PTR;
__int16 PCMYOU_PTR;
__int16 PCMIN;
__int16 SampleCh0Rate;
align(512) __int16 PCMY[512];
__int16 SUBFLTI[4];
__int16 SUBFLTA;
__int16 SUBFLTP;
__int16 SUBFLTG;

// .bss ends _bss

// CODE segment

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
naked rjmp void Sbb_Ch0GetBts();
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
rjmp void _ClearRenderBufB079D01D()
{
	__int16 _i_1_2;
	////////////////////////////
_AE0CFD6DA_2683:;
	////////////////////////////
_AE0CFD6DA_2684:;
	asm AX = PCMY+0;
_AE0CFD6DA_2685:;
	asm	AR = AX
_AE0CFD6DA_2686:;
	asm	I0 = AR
_AE0CFD6DA_2687:;
	_i_1_2+0	= 0x0200;
LFB78B58C_122:;
_AE0CFD6DA_2688:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_123;
	goto	LFB78B58C_121;
LFB78B58C_123:;
	////////////////////////////
_AE0CFD6DA_2689:;
	sAX	= 0x0000;
_AE0CFD6DA_2690:;
	asm	rm[I0++] = AX
	goto LFB78B58C_122;
LFB78B58C_121:;
LFB78B58C_120:;
_AE0CFD6DA_2691:;
	return;
_ClearRenderBufB079D01D_end:;
_AE0CFD6DA_2692:;
}

rjmp void _Sub3Initial96BE24F3()
{
_AE0CFD6DA_2693:;
_AE0CFD6DA_2694:;
	asm	dsi
_AE0CFD6DA_2695:;
	asm	nop
	////////////////////////////
_AE0CFD6DA_2696:;
_AE0CFD6DA_2697:;
	_ClearRenderBufB079D01D();
_AE0CFD6DA_2698:;
	asm	AR = PASR,0
_AE0CFD6DA_2699:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2700:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2701:;
	io[0x3B]	= 0x0000;
_AE0CFD6DA_2702:;
_AE0CFD6DA_2703:;
	Subb3_Init();
LFB78B58C_124:;
_AE0CFD6DA_2704:;
	return;
_Sub3Initial96BE24F3_end:;
_AE0CFD6DA_2705:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_AE0CFD6DA_2706:;
_AE0CFD6DA_2707:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2708:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_127;
	goto	LFB78B58C_126;
LFB78B58C_127:;
	////////////////////////////
_AE0CFD6DA_2709:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_126:;
_AE0CFD6DA_2710:;
_AE0CFD6DA_2711:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2712:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_125;
LFB78B58C_125:;
_AE0CFD6DA_2713:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_AE0CFD6DA_2714:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_AE0CFD6DA_2715:;
_AE0CFD6DA_2716:;
	asm	push CBL
_AE0CFD6DA_2717:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_AE0CFD6DA_2718:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_AE0CFD6DA_2719:;
	asm	AR = AX
_AE0CFD6DA_2720:;
	asm	I0 = AR
_AE0CFD6DA_2721:;
	_i_1_2+0	= 0x0120;
LFB78B58C_130:;
_AE0CFD6DA_2722:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_131;
	goto	LFB78B58C_129;
LFB78B58C_131:;
	////////////////////////////
_AE0CFD6DA_2723:;
	sAX	= 0x0000;
_AE0CFD6DA_2724:;
	asm	rm[I0++] = AX
	goto LFB78B58C_130;
LFB78B58C_129:;
_AE0CFD6DA_2725:;
_AE0CFD6DA_2726:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2727:;
	asm	pop CBL
LFB78B58C_128:;
_AE0CFD6DA_2728:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_AE0CFD6DA_2729:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_AE0CFD6DA_2730:;
	////////////////////////////
_AE0CFD6DA_2731:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_AE0CFD6DA_2732:;
_AE0CFD6DA_2733:;
	_Sub3Initial96BE24F3();
_AE0CFD6DA_2734:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2735:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2736:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2737:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE0CFD6DA_2738:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2739:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2740:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2741:;
	asm	set io[INTENA].b0
_AE0CFD6DA_2742:;
	asm	eni
LFB78B58C_132:;
_AE0CFD6DA_2743:;
	return;
_Sub3Play422CAD6D_end:;
_AE0CFD6DA_2744:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_AE0CFD6DA_2745:;
_AE0CFD6DA_2746:;
	asm	push I1
_AE0CFD6DA_2747:;
	asm	push P1
_AE0CFD6DA_2748:;
	asm	push AX
_AE0CFD6DA_2749:;
	asm	push BX
_AE0CFD6DA_2750:;
	asm	push CX
_AE0CFD6DA_2751:;
	asm	push DX
_AE0CFD6DA_2752:;
	asm	AR = P1.hh
_AE0CFD6DA_2753:;
	asm	push AR
	////////////////////////////
_AE0CFD6DA_2754:;
_AE0CFD6DA_2755:;
_AE0CFD6DA_2756:;
	asm I1 = bts_ch0_get_ix+0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sSI	= (int)&bts_ch0_get_ix[0];
	PUSH(sAX);
	PUSH(sDX);
	sfx_GETSILONG_BXCX();
	sAX = 0x0001;
	sDX = 0x0000;
	sfx_ADDLONG_BXCX_DXAX();
	sfx_STORSILONG_BXCX();
	sDX	= POP();
	sAX	= POP();
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	vXCHG(STACK[sSP + 0]);
_AE0CFD6DA_2757:;
	asm	pop AR
_AE0CFD6DA_2758:;
	asm	P1.hh = AR
_AE0CFD6DA_2759:;
	asm	AR = AX
	////////////////////////////
_AE0CFD6DA_2760:;
	asm	pop DX
_AE0CFD6DA_2761:;
	asm	pop CX
_AE0CFD6DA_2762:;
	asm	pop BX
_AE0CFD6DA_2763:;
	asm	pop AX
_AE0CFD6DA_2764:;
	asm	pop P1
_AE0CFD6DA_2765:;
	asm	pop I1
LFB78B58C_133:;
_AE0CFD6DA_2766:;
	return;
Sbb_Ch0GetBts_end:;
_AE0CFD6DA_2767:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_sub3play_8ED4FA41_s(void)
{
	return;
}

// .code ends _ginit


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

// extern inp:proc
// extern outp:proc
// extern get_SATV:proc
// extern get_CBL:proc
// extern get_FLTO:proc
// extern get_FLTA:proc
// extern get_FLTP:proc
// extern get_FLTI:proc
// extern read_I0:proc
// extern read_I0P:proc
// extern read_I0P2:proc
// extern read_I0M:proc
// extern get_I0:proc
// extern read_P0:proc
// extern read_P0P:proc
// extern read_P0M:proc
// extern get_P0:proc
// extern set_IntVWR:proc
// extern clr_IntVWR:proc
// extern set_IntPrWR:proc
// extern clr_IntPrWR:proc
// extern set_INTENA:proc
// extern get_INTENA:proc
// extern set_INTREQ:proc
// extern get_INTREQ:proc
// extern set_IntVect:proc
// extern get_IntVect:proc
// extern get_IOC_PA:proc
// extern get_IOC_PB:proc
// extern get_IOC_PC:proc
// extern get_PortA:proc
// extern get_PortB:proc
// extern get_PortC:proc
// extern set_MISC:proc
// extern get_MISC:proc
// extern get_MACOP:proc
// extern vXCHG:proc
// extern cpuHalt:proc
// extern FA:proc
// extern _ClearTickCount5DDE4003:proc
// extern _GetTickCount18DC070C:proc
// extern _delay6F9F34ED:proc
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
// extern inbuf:word
// extern outbuf:word
// public PCMY
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// extern _InitialDA4A7CC4:proc
// extern _DoADPCM9CD0E20D:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// public _WaitPCM_Empty_size53398B9D
// public _Sub3ZeroFillABFF23AA
// public _Sub3Play422CAD6D
// public SUBFLTI
// public SUBFLTA
// public SUBFLTP
// public SUBFLTG
// public _ClearRenderBufB079D01D
// public _Sub3Initial96BE24F3
// public Sbb_Ch0GetBts
// public ginit_code_sub3play_8ED4FA41_s
