Pwm_process:
		CLR             IO[INTREQ].B0
                push            i0
                push            cx
                push            CBL
                ar              = 9                             ;
                CBL             = ar                            ;
//---------------------
                cx              = 0x3                           ;
                i0              = rm[PCMYOU_PTR]                ;
L_dac_fill_lp:
                jfa             L_filter_out                    // check filter buffer availed
                FLTI            = rm[i0++]                      ;   // filter in
L_filter_out:
                ar              = FLTO                          ;   // get filter out, and start delay 4 cycles to get next filter out
                io[DACL]        = ar                            // output PWM DAC
                nop
                loop            L_dac_fill_lp

                rm[PCMYOU_PTR]  = i0                            // restore index
                pop             CBL
                pop             cx
                pop             i0

                RETI
Pwm_process_end:
///////////////////////////////////////////////////////////////////////////////////////////////
F_ChangePWMVectTabletobank2:
// eable int-vector table access
                set             io[STATUS].b13
                i1		= PCMY
	#ifdef _MFDSP_ || _MFDSP2_
		CX=		14
	#else
		CX=		4
	#endif
F_ChangePWMVectTabletobank2_lp:
		ar              = io[0x3]                      ;
                rm[i1++]        = ar                           ;	// Int5~0
		ar		= pcb
                rm[i1++]        = ar                           ;	// Int5~0 pcb
                loop            F_ChangePWMVectTabletobank2_lp
 		//pwm to bank2
 		; ar              = 0x039c                       ; 	// pwm addr .. ;0~0x039b has used by subband 2
                ; rm[i1++]        = ar                           ;	// Int5~0
 		; ar		= RAMBANK
                ; rm[i1++]        = ar                           ;	// Int5~0 pcb
 		ar              = #PWM_process                       ; 	// pwm addr .. ;0~0x039b has used by subband 2
                rm[i1++]        = ar                           ;	// Int5~0
 		ar		= 0
                rm[i1++]        = ar                           ;	// Int5~0 pcb

                clr             io[STATUS].b13

                set             io[STATUS].b13
                i1		= PCMY
                //write new int-vector

	#ifdef _MFDSP_ || _MFDSP2_
		CX=		15
	#else
		CX=		5
	#endif
F_ChangePWMVectTabletobank2_lp2:
		ax		= rm[i1++]
		ar		= rm[i1++]
		pcb		= ar
		ar		= ax
		io[0x3]		= ar
		pcb		= 0
                loop            F_ChangePWMVectTabletobank2_lp2

                // Dis-int-vector table access
                clr             io[STATUS].b13

                ; p1 =		0x039c
                ; p0		= #Pwm_process
		; ar		= #Pwm_process_end
		; pch=		MoveProgToBank2
		; lcall		MoveProgToBank2
		p1.hh		= 0

                rets

; -----------------------------------------------------------------------------------------------------

MoveProgToBank2:

#if _OPT_PRAMBank_ != 0
		CBL		= 0
		p1.hh=		RAMBANK
		p0.hh		= 0
		ar		= ar - p0
		cx		= ar
		cx--
	MoveProgToBank2_Loop:
		ar		= pm[p0++]
		pm[p1++]	= ar
		loop		MoveProgToBank2_Loop
		p1.hh		= 0
#endif

		rets
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~














