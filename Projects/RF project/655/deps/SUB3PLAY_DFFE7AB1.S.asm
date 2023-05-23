
#include "crt0.h"













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



// CODE segment					=>>VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
naked rjmp void Sbb_Ch0GetBts();




.code



.data



.code
rjmp void _ClearRenderBufB079D01D()		=>>_ClearRenderBufB079D01D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A56E00E50_2659:;				=>>_A56E00E50_2659:;
	
_A56E00E50_2660:;				=>>_A56E00E50_2660:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A56E00E50_2661:;				=>>_A56E00E50_2661:;
	asm	AR = AX				=>>AR = AX
_A56E00E50_2662:;				=>>_A56E00E50_2662:;
	asm	I0 = AR				=>>I0 = AR
_A56E00E50_2663:;				=>>_A56E00E50_2663:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
LBF17F8C6_108:;					=>>LBF17F8C6_108:;
_A56E00E50_2664:;				=>>_A56E00E50_2664:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LBF17F8C6_109;	=>>if NZ	jmp LBF17F8C6_109
	goto	LBF17F8C6_107;			=>>jmp	LBF17F8C6_107
LBF17F8C6_109:;					=>>LBF17F8C6_109:;
	
_A56E00E50_2665:;				=>>_A56E00E50_2665:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A56E00E50_2666:;				=>>_A56E00E50_2666:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LBF17F8C6_108;			=>>jmp	LBF17F8C6_108
LBF17F8C6_107:;					=>>LBF17F8C6_107:;
LBF17F8C6_106:;					=>>LBF17F8C6_106:;
_A56E00E50_2667:;				=>>_A56E00E50_2667:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_ClearRenderBufB079D01D_end:;			=>>_ClearRenderBufB079D01D_end:;
_A56E00E50_2668:;				=>>_A56E00E50_2668:;
}

rjmp void _Sub3Initial96BE24F3()		=>>_Sub3Initial96BE24F3:
{
_A56E00E50_2669:;				=>>_A56E00E50_2669:;
_A56E00E50_2670:;				=>>_A56E00E50_2670:;
	asm	dsi				=>>dsi
_A56E00E50_2671:;				=>>_A56E00E50_2671:;
	asm	nop				=>>nop
	
_A56E00E50_2672:;				=>>_A56E00E50_2672:;
_A56E00E50_2673:;				=>>_A56E00E50_2673:;
	_ClearRenderBufB079D01D();		=>>pch	= _ClearRenderBufB079D01D;lcall	_ClearRenderBufB079D01D
_A56E00E50_2674:;				=>>_A56E00E50_2674:;
	asm	AR = PASR,0			=>>AR = PASR,0
_A56E00E50_2675:;				=>>_A56E00E50_2675:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2676:;				=>>_A56E00E50_2676:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2677:;				=>>_A56E00E50_2677:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_A56E00E50_2678:;				=>>_A56E00E50_2678:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_A56E00E50_2679:;				=>>_A56E00E50_2679:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
_A56E00E50_2680:;				=>>_A56E00E50_2680:;
_A56E00E50_2681:;				=>>_A56E00E50_2681:;
	Subb3_Init();				=>>pch	= Subb3_Init;lcall	Subb3_Init
LBF17F8C6_110:;					=>>LBF17F8C6_110:;
_A56E00E50_2682:;				=>>_A56E00E50_2682:;
	return;					=>>rets
_Sub3Initial96BE24F3_end:;			=>>_Sub3Initial96BE24F3_end:;
_A56E00E50_2683:;				=>>_A56E00E50_2683:;
}

rjmp void _WaitPCM_Empty_size53398B9D()		=>>_WaitPCM_Empty_size53398B9D:
{
	__int16 _x_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A56E00E50_2684:;				=>>_A56E00E50_2684:;
_A56E00E50_2685:;				=>>_A56E00E50_2685:;
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2686:;				=>>_A56E00E50_2686:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LBF17F8C6_113;	=>>if ZR	jmp LBF17F8C6_113
	goto	LBF17F8C6_112;			=>>jmp	LBF17F8C6_112
LBF17F8C6_113:;					=>>LBF17F8C6_113:;
	
_A56E00E50_2687:;				=>>_A56E00E50_2687:;
	sAX	= 0x01FF;			=>>AX	= 0x01FF
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX & sCX;			=>>AR	= CX;AX	&= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LBF17F8C6_112:;					=>>LBF17F8C6_112:;
_A56E00E50_2688:;				=>>_A56E00E50_2688:;
_A56E00E50_2689:;				=>>_A56E00E50_2689:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0121;			=>>CX	= 0x0121
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2690:;				=>>_A56E00E50_2690:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LBF17F8C6_111;			=>>jmp	LBF17F8C6_111
LBF17F8C6_111:;					=>>LBF17F8C6_111:;
_A56E00E50_2691:;				=>>_A56E00E50_2691:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_WaitPCM_Empty_size53398B9D_end:;		=>>_WaitPCM_Empty_size53398B9D_end:;
_A56E00E50_2692:;				=>>_A56E00E50_2692:;
}

rjmp void _Sub3ZeroFillABFF23AA()		=>>_Sub3ZeroFillABFF23AA:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A56E00E50_2693:;				=>>_A56E00E50_2693:;
_A56E00E50_2694:;				=>>_A56E00E50_2694:;
	asm	push CBL			=>>push CBL
_A56E00E50_2695:;				=>>_A56E00E50_2695:;
	io[0x3B]	= 0x0009;		=>>AR	= 0x09;io[0x3B]	= AR
	
_A56E00E50_2696:;				=>>_A56E00E50_2696:;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A56E00E50_2697:;				=>>_A56E00E50_2697:;
	asm	AR = AX				=>>AR = AX
_A56E00E50_2698:;				=>>_A56E00E50_2698:;
	asm	I0 = AR				=>>I0 = AR
_A56E00E50_2699:;				=>>_A56E00E50_2699:;
	_i_1_2+0	= 0x0120;		=>>I1	= rm[BP_SAVE];AR	= 0x0120;rm[I1]	= AR
LBF17F8C6_116:;					=>>LBF17F8C6_116:;
_A56E00E50_2700:;				=>>_A56E00E50_2700:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LBF17F8C6_117;	=>>if NZ	jmp LBF17F8C6_117
	goto	LBF17F8C6_115;			=>>jmp	LBF17F8C6_115
LBF17F8C6_117:;					=>>LBF17F8C6_117:;
	
_A56E00E50_2701:;				=>>_A56E00E50_2701:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A56E00E50_2702:;				=>>_A56E00E50_2702:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LBF17F8C6_116;			=>>jmp	LBF17F8C6_116
LBF17F8C6_115:;					=>>LBF17F8C6_115:;
_A56E00E50_2703:;				=>>_A56E00E50_2703:;
_A56E00E50_2704:;				=>>_A56E00E50_2704:;
	get_I0();				=>>push	I0;pop	AX;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2705:;				=>>_A56E00E50_2705:;
	asm	pop CBL				=>>pop CBL
LBF17F8C6_114:;					=>>LBF17F8C6_114:;
_A56E00E50_2706:;				=>>_A56E00E50_2706:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3ZeroFillABFF23AA_end:;			=>>_Sub3ZeroFillABFF23AA_end:;
_A56E00E50_2707:;				=>>_A56E00E50_2707:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)=>>_Sub3Play422CAD6D:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A56E00E50_2708:;				=>>_A56E00E50_2708:;
	
_A56E00E50_2709:;				=>>_A56E00E50_2709:;
	sSI	= (int)&_sdata_0_4_0;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A56E00E50_2710:;				=>>_A56E00E50_2710:;
_A56E00E50_2711:;				=>>_A56E00E50_2711:;
	_Sub3Initial96BE24F3();			=>>pch	= _Sub3Initial96BE24F3;lcall	_Sub3Initial96BE24F3
_A56E00E50_2712:;				=>>_A56E00E50_2712:;
	asm AX = SUBFLTI+0;			=>>AX = SUBFLTI+0//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2713:;				=>>_A56E00E50_2713:;
	asm AX = SUBFLTI+1;			=>>AX = SUBFLTI+1//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2714:;				=>>_A56E00E50_2714:;
	asm AX = SUBFLTI+2;			=>>AX = SUBFLTI+2//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2715:;				=>>_A56E00E50_2715:;
	asm AX = SUBFLTI+3;			=>>AX = SUBFLTI+3//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A56E00E50_2716:;				=>>_A56E00E50_2716:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = SUBFLTA+0;			=>>I1 = SUBFLTA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2717:;				=>>_A56E00E50_2717:;
	asm I1 = SampleCh0Rate+0;		=>>I1 = SampleCh0Rate+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = SUBFLTP+0;			=>>I1 = SUBFLTP+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2718:;				=>>_A56E00E50_2718:;
	sAX	= 0x003F;			=>>AX	= 0x3F
	asm I1 = SUBFLTG+0;			=>>I1 = SUBFLTG+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A56E00E50_2719:;				=>>_A56E00E50_2719:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A56E00E50_2720:;				=>>_A56E00E50_2720:;
	asm	eni				=>>eni
LBF17F8C6_118:;					=>>LBF17F8C6_118:;
_A56E00E50_2721:;				=>>_A56E00E50_2721:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3Play422CAD6D_end:;				=>>_Sub3Play422CAD6D_end:;
_A56E00E50_2722:;				=>>_A56E00E50_2722:;
}

naked rjmp void Sbb_Ch0GetBts()			=>>Sbb_Ch0GetBts:
{
_A56E00E50_2723:;				=>>_A56E00E50_2723:;
_A56E00E50_2724:;				=>>_A56E00E50_2724:;
	asm	push I1				=>>push I1
_A56E00E50_2725:;				=>>_A56E00E50_2725:;
	asm	push P1				=>>push P1
_A56E00E50_2726:;				=>>_A56E00E50_2726:;
	asm	push AX				=>>push AX
_A56E00E50_2727:;				=>>_A56E00E50_2727:;
	asm	push BX				=>>push BX
_A56E00E50_2728:;				=>>_A56E00E50_2728:;
	asm	push CX				=>>push CX
_A56E00E50_2729:;				=>>_A56E00E50_2729:;
	asm	push DX				=>>push DX
_A56E00E50_2730:;				=>>_A56E00E50_2730:;
	asm	AR = P1.hh			=>>AR = P1.hh
_A56E00E50_2731:;				=>>_A56E00E50_2731:;
	asm	push AR				=>>push AR
	
_A56E00E50_2732:;				=>>_A56E00E50_2732:;
_A56E00E50_2733:;				=>>_A56E00E50_2733:;
_A56E00E50_2734:;				=>>_A56E00E50_2734:;
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sSI	= (int)&bts_ch0_get_ix[0];	=>>I1	= bts_ch0_get_ix
	PUSH(sAX);				=>>push	AX
	PUSH(sDX);				=>>push	DX
	sfx_GETSILONG_BXCX();			=>>CX	= rm[I1++];BX	= rm[I1--];
	sAX = 0x0001;				=>>AX	= 0x01
	sDX = 0x0000;				=>>DX	= 0x00
	sfx_ADDLONG_BXCX_DXAX();		=>>AR	= AX;CX	= CX + AR;AR	= DX;BX	= BX + AR + C;
	sfx_STORSILONG_BXCX();			=>>rm[I1++]	= CX;rm[I1--]	= BX;
	sDX	= POP();			=>>pop	DX
	sAX	= POP();			=>>pop	AX
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _lptr_read;lcall	_lptr_read
	vXCHG(STACK[sSP + 0]);			=>>AR	= AX;AX	= xchg AR;
_A56E00E50_2735:;				=>>_A56E00E50_2735:;
	asm	pop AR				=>>pop AR
_A56E00E50_2736:;				=>>_A56E00E50_2736:;
	asm	P1.hh = AR			=>>P1.hh = AR
_A56E00E50_2737:;				=>>_A56E00E50_2737:;
	asm	AR = AX				=>>AR = AX
	
_A56E00E50_2738:;				=>>_A56E00E50_2738:;
	asm	pop DX				=>>pop DX
_A56E00E50_2739:;				=>>_A56E00E50_2739:;
	asm	pop CX				=>>pop CX
_A56E00E50_2740:;				=>>_A56E00E50_2740:;
	asm	pop BX				=>>pop BX
_A56E00E50_2741:;				=>>_A56E00E50_2741:;
	asm	pop AX				=>>pop AX
_A56E00E50_2742:;				=>>_A56E00E50_2742:;
	asm	pop P1				=>>pop P1
_A56E00E50_2743:;				=>>_A56E00E50_2743:;
	asm	pop I1				=>>pop I1
LBF17F8C6_119:;					=>>LBF17F8C6_119:;
_A56E00E50_2744:;				=>>_A56E00E50_2744:;
	return;					=>>rets
Sbb_Ch0GetBts_end:;				=>>Sbb_Ch0GetBts_end:;
_A56E00E50_2745:;				=>>_A56E00E50_2745:;
}




.code


naked void ginit_code_sub3play_DFFE7AB1_s(void)	=>>ginit_code_sub3play_DFFE7AB1_s:
{
	return;					=>>rets
}








.code



.code







.data





.code





















































































