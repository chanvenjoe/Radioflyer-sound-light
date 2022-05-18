
; =================================================================
; ------------- Interrupt Service Routine--------------------------
; =================================================================
Touch_INT:	;Clear Int5 Request!!
		clr		io[INTREQ].b5
		reti

PEORPP_INT:	;Clear Int4 Request!!
		clr		io[INTREQ].b4
		reti

RTC_INT:	;Clear Int3 Request!!
		clr		io[INTREQ].b3
		reti

Timer2_INT:	;Clear Int2 Request!!
		clr		io[INTREQ].b2
		reti

Timer1_INT:	;Clear Int1 Request!!
		clr		io[INTREQ].b1
		reti


AudioPwm_INT:	;Clear Int0 Request!!

		push		i0
		push		cx
		push		cbl

		clr		io[INTREQ].b0
		ar		=rm[Filter_GainNum]
		ar++
		ar		&=_Filter_GainNum
		rm[Filter_GainNum]=ar

		ar		=rm[Sbb3_Flag]
		cx		=ar
		ar		=rm[PCM_Flag]
		cx		|=ar
		ar		=cx
		jan		AudioPwm_Play
		ar		=0x0000
                io[DACL]        =ar
                io[DACL]        =ar
                io[DACL]        =ar
                io[DACL]        =ar
                jmp		AudioPwm_INT_Time
AudioPwm_Play:
		M_Sbb3Play_PWM
		M_PCMPlay_PWM




AudioPwm_INT_Time:

		ar		=rm[Filter_GainNum]
		jne		AudioPwm_INT_Exit		;;250us

		ar		=rm[PauseFlag]
		jne		Sentence_Time_End
		ar		=rm[Sentence_Time]
		jeq		Sentence_Time_End
		ar--
		rm[Sentence_Time]=ar
Sentence_Time_End:
		ar		=rm[KeyTime]
		ar++
		clr		ar.b15
		rm[KeyTime]	=ar
		ar		=rm[HaltTime]
		ar++
		clr		ar.b15
		rm[HaltTime]	=ar


AudioPwm_INT_Exit:


		pop		CBL
		pop		cx
		pop		i0

		reti







;;******************************************************************************
;;******************************************************************************
Play_RampUpDown:
		test		ar.b14
		jne		Play_RampUpDown_Up
	Play_RampUpDown_Down:
		ar		=i0
		jeq		Play_RampUpDown_Exit
		i0--
		jmp		Play_RampUpDown_Exit
	Play_RampUpDown_Up:
		ar		=i0
		sf		=ar-cx
		jeq		Play_RampUpDown_Exit
		jge		Play_RampUpDown_Down
		i0++
	Play_RampUpDown_Exit:
		ar		=i0
		rets

