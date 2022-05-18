

#define SUBBAND3_RAMBANK	_OPT_PRAMBank_
#define SUBBAND3_IPWM_ADR	0x039C

#ifdef _MSPEECHDSP_
	#ObjReAllocate SDSP_Sbb3_Ch0decV05, 1024
#else
	#ObjReAllocate Sbb3_Ch0decV05, 1024
#endif


ShareVar = {
	PCMYOU_PTR = mp_outbuf
	PCMYIN_PTR = mp_inbuf
	PCMY = RENDERBUF
}



Sub3_Pwm_process:
	clr             io[INTREQ].b0
	push            I0
	push            CX
	push            CBL
	AR=		9                             ;
	CBL=		AR                            ;
//---------------------
	CX=		0x03                          ;
	I0=		rm[PCMYOU_PTR]                ;
L_dac_fill_lp:
	jfa             L_filter_out                    ; check filter buffer availed
	FLTI=		rm[I0++]                      ;   ; filter in
L_filter_out:
	AR=		FLTO                          ;   ; get filter out, and stARt delay 4 cycles to get next filter out
	io[DACL]=	AR                            ; output PWM DAC
	nop
	loop            L_dac_fill_lp

	rm[PCMYOU_PTR]= I0                            ; restore index
	pop             CBL
	pop             CX
	pop             I0
	reti
Sub3_Pwm_process_end:


///////////////////////////////////////////////////////////////////////////////////////////////


F_ChangePWMVectTabletobank2:

	; ~~ backup orignal int-vector table access

	set             io[STATUS].b13
	I1=		PCMY
	CX=		4
F_ChangePWMVectTabletobank2_lp:
	AR=		io[IntVect]                      ;
	rm[I1++]=	AR                           ;	; Int5~0
	AR=		PCB
	rm[I1++]=	AR                           ;	; Int5~0 PCB
	loop            F_ChangePWMVectTabletobank2_lp



#if _OPT_PRAMBank_ != 0
	; ~~ pwm to bank2

	AR=		#Sub3_Pwm_process_end
	AX=		#Sub3_Pwm_process
	AR=		AR - AX
	P1=		0x0400
	P1=		P1 - AR
	
	rm[I1++]=	P1                           ;	; Int5~0
	AR=		SUBBAND3_RAMBANK
	rm[I1++]=	AR                           ;	; Int5~0 PCB
#else
	AR=		#Sub3_Pwm_process
	rm[I1++]=	AR
	AR=		0
	rm[I1++]=	AR
#endif
	
	clr             io[STATUS].b13

	; ~~ write new vector table

	set             io[STATUS].b13
	I1=		PCMY

	CX=		5
F_ChangePWMVectTabletobank2_lp2:
	AX=		rm[I1++]
	AR=		rm[I1++]
	PCB=		AR
	AR=		AX
	io[IntVect]=	AR
	PCB=		0
	loop            F_ChangePWMVectTabletobank2_lp2

	; Dis-int-vector table access
	clr             io[STATUS].b13

#if _OPT_PRAMBank_ != 0
	P0=		#Sub3_Pwm_process
	AR=		#Sub3_Pwm_process_end
	PCH=		MoveProgToBank2
	lcall		MoveProgToBank2
	P1.hh=		0
#endif


	rets


; -----------------------------------------------------------------------


MoveProgToBank2:


#if _OPT_PRAMBank_ != 0
	CBL=		0
	P1.hh=		SUBBAND3_RAMBANK
	P0.hh=		0
	AR=		AR - P0
	CX=		AR
	CX--
MoveProgToBank2_Loop:
	AR=		pm[P0++]
	pm[P1++]=	AR
	loop		MoveProgToBank2_Loop
	P1.hh=		0
#endif

	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~














