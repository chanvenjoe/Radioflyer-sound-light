;;******************************************************************************
.CODE
;;******************************************************************************
;;******************************************************************************
;; DAC OUT: PWMP
;; Circuit: Doc/An-0088_V1.1.Pdf
;;Application: Pwm To Dac Translaction. It Can Use For 8002 Audio Power Amplifier.
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************
VarRM[0:127] = {
#ifdef 		DAC_Output
	Dac_Flag				;;Bit 0=1 Ramp Up; Bit 1 =1 Ramp Down
	Dac_Ramp_Value
#endif
}
VarRM[128:511] = {
}
VarRM[512:4095] = {
}
;-----------------------------------------------------------------------------
;; DAC OUT:PWMP   请接一个1~2M阻值的电阻到地，再根据An-0088_V1.1.Pdf接功放
;;Dac_Ramp.sam对开机/唤醒/睡眠时，“波”声有所改善，但是还是能够听到一点，
;;如果还想进一步改善，就需要用IO去控制功放的Mute脚；
;;开PWM/DAC使能后，功放Mute脚 OFF(之前是ON)
;;关PWM/DAC使能前，功放Mute脚 ON
;-----------------------------------------------------------------------------
;;如果开启DAC输出模式，而IC没有DAC硬件，请打开_Pwm_To_Dac_的注释,音质比PWM输出有所降低，请知悉；
;;Pwm 转 DAC 输出，原理请查看AN-0088_V1.0.pdf
/*
		Ar			= FLTO
#ifdef	_Pwm_To_Dac_
		Push			Ax
		Sra			Ar
		Ax			= 0x4000
		Ar			= Ar + Ax
		Pop			Ax
#else
		Nop
		Nop
#endif
		Io[Dacl]		= Ar
*/

;;******************************************************************************
#define		_Dac_Inc_		16	;;Ramp 递增步长
#define		_Dac_Dec_		8	;;Ramp 递减步长
;;******************************************************************************
;;******************************************************************************
Dac_Up_Start:
#ifdef		DAC_Output
		Ar			= 1
		Rm[Dac_Flag]		= Ar
#endif
		Rets
;;******************************************************************************
Dac_Down_Start:
#ifdef		DAC_Output
		Ar			= 4
		Rm[Dac_Flag]		= Ar
	#ifdef		_Pwm_To_Dac_
		Ar			= 0x4000
		Rm[Dac_Ramp_Value]	= Ar
	#else
		Ar			= 0x0000
		Rm[Dac_Ramp_Value]	= Ar
	#endif

Wait_Dac_Down_End:
		Io[Clrwdt]		= Ar
		Ar			= Rm[Dac_Flag]
		Test			Ar.B15
		Jzr			Wait_Dac_Down_End
		Ar			= 0x0000
		Rm[Dac_Flag]		= Ar
#endif
		Rets

;;******************************************************************************
;;******************************************************************************
Dac_Ramp_Isr:
#ifdef		DAC_Output
		Push			Cx
		Ar			= Rm[Dac_Flag]
		Jzr			Dac_Ramp_Isr_Exit
		Sf			= Ar - 1
		Jeq			Dac_Isr_Ramp_Up_Start
		Sf			= Ar - 2
		Jeq			Dac_Isr_Ramp_Up
		Sf			= Ar - 3
		Jeq			Dac_Isr_Ramp_Up_End
		Sf			= Ar - 4
		Jeq			Dac_Isr_Ramp_Down
		Sf			= Ar - 5
		Jeq			Dac_Isr_Ramp_Down_End
		Jmp			Dac_Ramp_Isr_Exit
	;;==============================================
	#ifdef		_Pwm_To_Dac_
Dac_Isr_Ramp_Up_Start:
		Pwm_Out_Enable
		Pwm_Mute_Off
		Ar			= 2
		Rm[Dac_Flag]		= Ar
		Ar			= 0
		Rm[Dac_Ramp_Value]	= Ar
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Up:
		Cx			= 3
Ramp_Up_Lp:
		Ar			= Rm[Dac_Ramp_Value]
		Ar			+= _Dac_Inc_
		Rm[Dac_Ramp_Value]	= Ar
		Test			Ar.B14
		Jzr			Ramp_Up_Play
		Ar			= 3
		Rm[Dac_Flag]		= Ar
		Ar			= 0x4000
		Rm[Dac_Ramp_Value]	= Ar
Ramp_Up_Play:
		Io[Dacl]		= Ar
		Loop			Ramp_Up_Lp
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Up_End:
		Ar			= 0x4000
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Ar			= 0
		Rm[Dac_Flag]		= Ar
		Ar			= 0x4000
		Rm[Dac_Ramp_Value]	= Ar
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Down:
		Cx			= 3
Ramp_Down_Lp:
		Ar			= Rm[Dac_Ramp_Value]
		Ar			-= _Dac_Dec_
		Rm[Dac_Ramp_Value]	= Ar
		Jge			Ramp_Down_Play
		Ar			= 5
		Rm[Dac_Flag]		= Ar
		Ar			= 0x0000
		Rm[Dac_Ramp_Value]	= Ar
Ramp_Down_Play:
		Io[Dacl]		= Ar
		Loop			Ramp_Down_Lp
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Down_End:
		Ar			= 0x0000
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Ar			= 0x8000
		Rm[Dac_Flag]		= Ar
		Jmp			Dac_Ramp_Isr_Exit
	;;==============================================
	#else	// _Pwm_To_Dac_
Dac_Isr_Ramp_Up_Start:
		Pwm_Out_Enable
		Pwm_Mute_Off
		Ar			= 2
		Rm[Dac_Flag]		= Ar
		Ar			= 0x0000
		Rm[Dac_Ramp_Value]	= Ar
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Up:
		Cx			= 3
Ramp_Up_Lp:
		Ar			= Rm[Dac_Ramp_Value]
		Ar			+= _Dac_Inc_
		Rm[Dac_Ramp_Value]	= Ar
		Test			Ar.B15
		Jzr			Ramp_Up_Play
		Ar			= 3
		Rm[Dac_Flag]		= Ar
		Ar			= 0x7FFF
		Rm[Dac_Ramp_Value]	= Ar
Ramp_Up_Play:
		Io[Dacl]		= Ar
		Loop			Ramp_Up_Lp
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Up_End:
		Ar			= 0x7FFF
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Io[Dacl]		= Ar
		Pwm_Mute_On
		Pwm_Out_Disable
		Dac_Out_Enable
		Dac_Mute_Off

		Ar			= 0
		Rm[Dac_Flag]		= Ar
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Down:
		Cx			= 3
Ramp_Down_Lp:
		Ar			= Rm[Dac_Ramp_Value]
		Ar			-= _Dac_Dec_
		Rm[Dac_Ramp_Value]	= Ar
		Jav			Ramp_Down_Lp_End
		Jmp			Ramp_Down_Play
Ramp_Down_Lp_End:
		Ar			= 5
		Rm[Dac_Flag]		= Ar
		Ar			= 0x8000
		Rm[Dac_Ramp_Value]	= Ar
Ramp_Down_Play:
		Io[Dacl]		= Ar
		Loop			Ramp_Down_Lp
		Jmp			Dac_Ramp_Isr_Exit
		;;-------------------------------------------------------------------------
Dac_Isr_Ramp_Down_End:
		Ar			= 0x8000
		Io[DACL]		= Ar		;;// output DAC L FIFO 0
		Io[DACL]		= Ar		;;// output DAC L FIFO 1
		Io[DACL]		= Ar		;;// output DAC L FIFO 2
		Io[DACL]		= Ar		;;// output DAC L FIFO 3
		Ar			= 0x8000
		Rm[Dac_Flag]		= Ar
		Jmp			Dac_Ramp_Isr_Exit
	#endif	// _Pwm_To_Dac_
	;;==============================================
Dac_Ramp_Isr_Exit:
		Pop			Cx
#endif	// DAC_Output
		Rets
;;******************************************************************************
;;******************************************************************************