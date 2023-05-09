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
_A56E00E50_2659:;
	////////////////////////////
_A56E00E50_2660:;
	asm AX = PCMY+0;
_A56E00E50_2661:;
	asm	AR = AX
_A56E00E50_2662:;
	asm	I0 = AR
_A56E00E50_2663:;
	_i_1_2+0	= 0x0200;
LBF17F8C6_108:;
_A56E00E50_2664:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LBF17F8C6_109;
	goto	LBF17F8C6_107;
LBF17F8C6_109:;
	////////////////////////////
_A56E00E50_2665:;
	sAX	= 0x0000;
_A56E00E50_2666:;
	asm	rm[I0++] = AX
	goto LBF17F8C6_108;
LBF17F8C6_107:;
LBF17F8C6_106:;
_A56E00E50_2667:;
	return;
_ClearRenderBufB079D01D_end:;
_A56E00E50_2668:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A56E00E50_2669:;
_A56E00E50_2670:;
	asm	dsi
_A56E00E50_2671:;
	asm	nop
	////////////////////////////
_A56E00E50_2672:;
_A56E00E50_2673:;
	_ClearRenderBufB079D01D();
_A56E00E50_2674:;
	asm	AR = PASR,0
_A56E00E50_2675:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2676:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2677:;
	io[0x3C]	= 0x0000;
_A56E00E50_2678:;
	io[0x3E]	= 0x1FFF;
_A56E00E50_2679:;
	io[0x3B]	= 0x0000;
_A56E00E50_2680:;
_A56E00E50_2681:;
	Subb3_Init();
LBF17F8C6_110:;
_A56E00E50_2682:;
	return;
_Sub3Initial96BE24F3_end:;
_A56E00E50_2683:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A56E00E50_2684:;
_A56E00E50_2685:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A56E00E50_2686:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LBF17F8C6_113;
	goto	LBF17F8C6_112;
LBF17F8C6_113:;
	////////////////////////////
_A56E00E50_2687:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LBF17F8C6_112:;
_A56E00E50_2688:;
_A56E00E50_2689:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A56E00E50_2690:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LBF17F8C6_111;
LBF17F8C6_111:;
_A56E00E50_2691:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A56E00E50_2692:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A56E00E50_2693:;
_A56E00E50_2694:;
	asm	push CBL
_A56E00E50_2695:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A56E00E50_2696:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A56E00E50_2697:;
	asm	AR = AX
_A56E00E50_2698:;
	asm	I0 = AR
_A56E00E50_2699:;
	_i_1_2+0	= 0x0120;
LBF17F8C6_116:;
_A56E00E50_2700:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LBF17F8C6_117;
	goto	LBF17F8C6_115;
LBF17F8C6_117:;
	////////////////////////////
_A56E00E50_2701:;
	sAX	= 0x0000;
_A56E00E50_2702:;
	asm	rm[I0++] = AX
	goto LBF17F8C6_116;
LBF17F8C6_115:;
_A56E00E50_2703:;
_A56E00E50_2704:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2705:;
	asm	pop CBL
LBF17F8C6_114:;
_A56E00E50_2706:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A56E00E50_2707:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A56E00E50_2708:;
	////////////////////////////
_A56E00E50_2709:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A56E00E50_2710:;
_A56E00E50_2711:;
	_Sub3Initial96BE24F3();
_A56E00E50_2712:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A56E00E50_2713:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A56E00E50_2714:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A56E00E50_2715:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A56E00E50_2716:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2717:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2718:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A56E00E50_2719:;
	asm	set io[INTENA].b0
_A56E00E50_2720:;
	asm	eni
LBF17F8C6_118:;
_A56E00E50_2721:;
	return;
_Sub3Play422CAD6D_end:;
_A56E00E50_2722:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_A56E00E50_2723:;
_A56E00E50_2724:;
	asm	push I1
_A56E00E50_2725:;
	asm	push P1
_A56E00E50_2726:;
	asm	push AX
_A56E00E50_2727:;
	asm	push BX
_A56E00E50_2728:;
	asm	push CX
_A56E00E50_2729:;
	asm	push DX
_A56E00E50_2730:;
	asm	AR = P1.hh
_A56E00E50_2731:;
	asm	push AR
	////////////////////////////
_A56E00E50_2732:;
_A56E00E50_2733:;
_A56E00E50_2734:;
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
_A56E00E50_2735:;
	asm	pop AR
_A56E00E50_2736:;
	asm	P1.hh = AR
_A56E00E50_2737:;
	asm	AR = AX
	////////////////////////////
_A56E00E50_2738:;
	asm	pop DX
_A56E00E50_2739:;
	asm	pop CX
_A56E00E50_2740:;
	asm	pop BX
_A56E00E50_2741:;
	asm	pop AX
_A56E00E50_2742:;
	asm	pop P1
_A56E00E50_2743:;
	asm	pop I1
LBF17F8C6_119:;
_A56E00E50_2744:;
	return;
Sbb_Ch0GetBts_end:;
_A56E00E50_2745:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_sub3play_DFFE7AB1_s(void)
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
// extern dtxfltg:word
// extern dtxsongcnt:word
// extern dtxtonech:word
// extern dtxRender:long
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern dtxStartBGServe:proc
// extern dtxStopBGServe:proc
// extern _dtxDoEvent05EA2C8C:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
// extern inbuf:word
// extern outbuf:word
// public PCMY
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
// public ginit_code_sub3play_DFFE7AB1_s
