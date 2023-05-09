; sub3play.c Code Start!!;
VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

; //
.code
; //
; //
; //rjmp void _ClearRenderBufB079D01D();
; //rjmp void _Sub3Initial96BE24F3();
; //rjmp void _WaitPCM_Empty_size53398B9D();
; //rjmp void _Sub3ZeroFillABFF23AA();
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
; //naked rjmp void Sbb_Ch0GetBts();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
.code
; //rjmp void _ClearRenderBufB079D01D()		
_ClearRenderBufB079D01D:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE0CFD6DA_2683:;				
_AE0CFD6DA_2683:
; //	
; //_AE0CFD6DA_2684:;				
_AE0CFD6DA_2684:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_AE0CFD6DA_2685:;				
_AE0CFD6DA_2685:
; //	asm	AR = AX				
	AR = AX
; //_AE0CFD6DA_2686:;				
_AE0CFD6DA_2686:
; //	asm	I0 = AR				
	I0 = AR
; //_AE0CFD6DA_2687:;				
_AE0CFD6DA_2687:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //LFB78B58C_122:;					
LFB78B58C_122:
; //_AE0CFD6DA_2688:;				
_AE0CFD6DA_2688:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LFB78B58C_123;	
	if NZ	jmp LFB78B58C_123
; //	goto	LFB78B58C_121;			
	jmp	LFB78B58C_121
; //LFB78B58C_123:;					
LFB78B58C_123:
; //	
; //_AE0CFD6DA_2689:;				
_AE0CFD6DA_2689:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AE0CFD6DA_2690:;				
_AE0CFD6DA_2690:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_122;			
	jmp	LFB78B58C_122
; //LFB78B58C_121:;					
LFB78B58C_121:
; //LFB78B58C_120:;					
LFB78B58C_120:
; //_AE0CFD6DA_2691:;				
_AE0CFD6DA_2691:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_AE0CFD6DA_2692:;				
_AE0CFD6DA_2692:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_AE0CFD6DA_2693:;				
_AE0CFD6DA_2693:
; //_AE0CFD6DA_2694:;				
_AE0CFD6DA_2694:
; //	asm	dsi				
	dsi
; //_AE0CFD6DA_2695:;				
_AE0CFD6DA_2695:
; //	asm	nop				
	nop
; //	
; //_AE0CFD6DA_2696:;				
_AE0CFD6DA_2696:
; //_AE0CFD6DA_2697:;				
_AE0CFD6DA_2697:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_AE0CFD6DA_2698:;				
_AE0CFD6DA_2698:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_AE0CFD6DA_2699:;				
_AE0CFD6DA_2699:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2700:;				
_AE0CFD6DA_2700:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2701:;				
_AE0CFD6DA_2701:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_AE0CFD6DA_2702:;				
_AE0CFD6DA_2702:
; //_AE0CFD6DA_2703:;				
_AE0CFD6DA_2703:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_124:;					
LFB78B58C_124:
; //_AE0CFD6DA_2704:;				
_AE0CFD6DA_2704:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_AE0CFD6DA_2705:;				
_AE0CFD6DA_2705:
; //}
; //
; //rjmp void _WaitPCM_Empty_size53398B9D()		
_WaitPCM_Empty_size53398B9D:
; //{
; //	__int16 _x_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE0CFD6DA_2706:;				
_AE0CFD6DA_2706:
; //_AE0CFD6DA_2707:;				
_AE0CFD6DA_2707:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2708:;				
_AE0CFD6DA_2708:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LFB78B58C_127;	
	if ZR	jmp LFB78B58C_127
; //	goto	LFB78B58C_126;			
	jmp	LFB78B58C_126
; //LFB78B58C_127:;					
LFB78B58C_127:
; //	
; //_AE0CFD6DA_2709:;				
_AE0CFD6DA_2709:
; //	sAX	= 0x01FF;			
	AX	= 0x01FF
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LFB78B58C_126:;					
LFB78B58C_126:
; //_AE0CFD6DA_2710:;				
_AE0CFD6DA_2710:
; //_AE0CFD6DA_2711:;				
_AE0CFD6DA_2711:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0121;			
	CX	= 0x0121
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2712:;				
_AE0CFD6DA_2712:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_125;			
	jmp	LFB78B58C_125
; //LFB78B58C_125:;					
LFB78B58C_125:
; //_AE0CFD6DA_2713:;				
_AE0CFD6DA_2713:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_AE0CFD6DA_2714:;				
_AE0CFD6DA_2714:
; //}
; //
; //rjmp void _Sub3ZeroFillABFF23AA()		
_Sub3ZeroFillABFF23AA:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AE0CFD6DA_2715:;				
_AE0CFD6DA_2715:
; //_AE0CFD6DA_2716:;				
_AE0CFD6DA_2716:
; //	asm	push CBL			
	push CBL
; //_AE0CFD6DA_2717:;				
_AE0CFD6DA_2717:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_AE0CFD6DA_2718:;				
_AE0CFD6DA_2718:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AE0CFD6DA_2719:;				
_AE0CFD6DA_2719:
; //	asm	AR = AX				
	AR = AX
; //_AE0CFD6DA_2720:;				
_AE0CFD6DA_2720:
; //	asm	I0 = AR				
	I0 = AR
; //_AE0CFD6DA_2721:;				
_AE0CFD6DA_2721:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AR	= 0x0120
	rm[I1]	= AR
; //LFB78B58C_130:;					
LFB78B58C_130:
; //_AE0CFD6DA_2722:;				
_AE0CFD6DA_2722:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LFB78B58C_131;	
	if NZ	jmp LFB78B58C_131
; //	goto	LFB78B58C_129;			
	jmp	LFB78B58C_129
; //LFB78B58C_131:;					
LFB78B58C_131:
; //	
; //_AE0CFD6DA_2723:;				
_AE0CFD6DA_2723:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AE0CFD6DA_2724:;				
_AE0CFD6DA_2724:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_130;			
	jmp	LFB78B58C_130
; //LFB78B58C_129:;					
LFB78B58C_129:
; //_AE0CFD6DA_2725:;				
_AE0CFD6DA_2725:
; //_AE0CFD6DA_2726:;				
_AE0CFD6DA_2726:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2727:;				
_AE0CFD6DA_2727:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_128:;					
LFB78B58C_128:
; //_AE0CFD6DA_2728:;				
_AE0CFD6DA_2728:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_AE0CFD6DA_2729:;				
_AE0CFD6DA_2729:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_AE0CFD6DA_2730:;				
_AE0CFD6DA_2730:
; //	
; //_AE0CFD6DA_2731:;				
_AE0CFD6DA_2731:
; //	sSI	= (int)&_sdata_0_4_0;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_AE0CFD6DA_2732:;				
_AE0CFD6DA_2732:
; //_AE0CFD6DA_2733:;				
_AE0CFD6DA_2733:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_AE0CFD6DA_2734:;				
_AE0CFD6DA_2734:
; //	asm AX = SUBFLTI+0;			
	AX = SUBFLTI+0//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2735:;				
_AE0CFD6DA_2735:
; //	asm AX = SUBFLTI+1;			
	AX = SUBFLTI+1//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2736:;				
_AE0CFD6DA_2736:
; //	asm AX = SUBFLTI+2;			
	AX = SUBFLTI+2//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2737:;				
_AE0CFD6DA_2737:
; //	asm AX = SUBFLTI+3;			
	AX = SUBFLTI+3//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AE0CFD6DA_2738:;				
_AE0CFD6DA_2738:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2739:;				
_AE0CFD6DA_2739:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2740:;				
_AE0CFD6DA_2740:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AE0CFD6DA_2741:;				
_AE0CFD6DA_2741:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_AE0CFD6DA_2742:;				
_AE0CFD6DA_2742:
; //	asm	eni				
	eni
; //LFB78B58C_132:;					
LFB78B58C_132:
; //_AE0CFD6DA_2743:;				
_AE0CFD6DA_2743:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_AE0CFD6DA_2744:;				
_AE0CFD6DA_2744:
; //}
; //
; //naked rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_AE0CFD6DA_2745:;				
_AE0CFD6DA_2745:
; //_AE0CFD6DA_2746:;				
_AE0CFD6DA_2746:
; //	asm	push I1				
	push I1
; //_AE0CFD6DA_2747:;				
_AE0CFD6DA_2747:
; //	asm	push P1				
	push P1
; //_AE0CFD6DA_2748:;				
_AE0CFD6DA_2748:
; //	asm	push AX				
	push AX
; //_AE0CFD6DA_2749:;				
_AE0CFD6DA_2749:
; //	asm	push BX				
	push BX
; //_AE0CFD6DA_2750:;				
_AE0CFD6DA_2750:
; //	asm	push CX				
	push CX
; //_AE0CFD6DA_2751:;				
_AE0CFD6DA_2751:
; //	asm	push DX				
	push DX
; //_AE0CFD6DA_2752:;				
_AE0CFD6DA_2752:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_AE0CFD6DA_2753:;				
_AE0CFD6DA_2753:
; //	asm	push AR				
	push AR
; //	
; //_AE0CFD6DA_2754:;				
_AE0CFD6DA_2754:
; //_AE0CFD6DA_2755:;				
_AE0CFD6DA_2755:
; //_AE0CFD6DA_2756:;				
_AE0CFD6DA_2756:
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	sSI	= (int)&bts_ch0_get_ix[0];	
	I1	= bts_ch0_get_ix
; //	PUSH(sAX);				
	push	AX
; //	PUSH(sDX);				
	push	DX
; //	sfx_GETSILONG_BXCX();			
	CX	= rm[I1++]
	BX	= rm[I1--]
; //	sAX = 0x0001;				
	AX	= 0x01
; //	sDX = 0x0000;				
	DX	= 0x00
; //	sfx_ADDLONG_BXCX_DXAX();		
	AR	= AX
	CX	= CX + AR
	AR	= DX
	BX	= BX + AR + C
; //	sfx_STORSILONG_BXCX();			
	rm[I1++]	= CX
	rm[I1--]	= BX
; //	sDX	= POP();			
	pop	DX
; //	sAX	= POP();			
	pop	AX
; //	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _lptr_read
	lcall	_lptr_read
; //	vXCHG(STACK[sSP + 0]);			
	AR	= AX
	AX	= xchg AR
; //_AE0CFD6DA_2757:;				
_AE0CFD6DA_2757:
; //	asm	pop AR				
	pop AR
; //_AE0CFD6DA_2758:;				
_AE0CFD6DA_2758:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_AE0CFD6DA_2759:;				
_AE0CFD6DA_2759:
; //	asm	AR = AX				
	AR = AX
; //	
; //_AE0CFD6DA_2760:;				
_AE0CFD6DA_2760:
; //	asm	pop DX				
	pop DX
; //_AE0CFD6DA_2761:;				
_AE0CFD6DA_2761:
; //	asm	pop CX				
	pop CX
; //_AE0CFD6DA_2762:;				
_AE0CFD6DA_2762:
; //	asm	pop BX				
	pop BX
; //_AE0CFD6DA_2763:;				
_AE0CFD6DA_2763:
; //	asm	pop AX				
	pop AX
; //_AE0CFD6DA_2764:;				
_AE0CFD6DA_2764:
; //	asm	pop P1				
	pop P1
; //_AE0CFD6DA_2765:;				
_AE0CFD6DA_2765:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_133:;					
LFB78B58C_133:
; //_AE0CFD6DA_2766:;				
_AE0CFD6DA_2766:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_AE0CFD6DA_2767:;				
_AE0CFD6DA_2767:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_sub3play_8ED4FA41_s(void)	
ginit_code_sub3play_8ED4FA41_s:
; //{
; //	return;					
	rets
; //}
; //
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
