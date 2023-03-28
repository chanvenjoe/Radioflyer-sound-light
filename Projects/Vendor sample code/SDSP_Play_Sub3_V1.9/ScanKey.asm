;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
;;上电按键IO初始化
Scan_Key_Init:

#ifdef 		_MFDSP_			;;//F064/032
		Ar			= Io[IOC_PB]
		Clr			Ar.B0
		Clr			Ar.B1
		Clr			Ar.B2
		Clr			Ar.B3
		Io[IOC_PB]		= Ar

		Ar			= 0x000F
		Io[PUPD_PB]		= Ar
		Iop_Write		IOP_WAKEN_PB,0X000F
		Iop_Write		IOP_WAKELV_PB,0X000F
#else
		Ar			= Io[IOC_PA]
		Clr			Ar.B0
		Clr			Ar.B1
		Clr			Ar.B2
		Clr			Ar.B3
		Io[IOC_PA]		= Ar

		Iop_Write		IOP_PA_PD50K,0x000F
		Iop_Write		IOP_WAKEN_PA,0x000F
		Iop_Write		IOP_WAKELV_PA,0x000F
#endif
Scan_Key_Init_Exit:
		Rets

;;******************************************************************************
;;******************************************************************************
Scan_Key:
#ifdef 		_MFDSP_			;;//F064/032
		Ar			= Io[PortB]
#else
		Ar			= Io[PortA]
#endif
		Ar			&= 0x000F		;Portb0,1,2,3
		Ax			= Rm[Key_Flag]
		Sf			= Ar - Ax
		Jeq			Key_No_Change

		Ax			= Rm[Key_Buf]
		Sf			= Ar - Ax
		Jnz			Clr_Key_Debounce

		Ar			= Rm[DebounceTime]
		Sf			= Ar - 31		;;//32Ms,Base On 1Ms
		Jle			Scan_End

		Ar			= Rm[Key_Flag]
		Ax			= Rm[Key_Buf]
		Ar			= Ar ^ Ax
		Ar			= Ar & Ax
		Rm[Key_Value]		= Ar			;;按下的按键

		Ax			= Rm[Key_Flag]
		Ar			= Rm[Key_Buf]
		Ar			= Ar ^ Ax
		Ar			= Ar & Ax
		Rm[Key_Rel_Value]	= Ar			;;松开的按键

		Ar			= Rm[Key_Buf]
		Rm[Key_Flag]		= Ar
Key_Process:
		AR			= Rm[Key_Value]
		Jzr			Key_Rel_Process
		Test			AR.B0
		Jnz			Play_Key_0
		Test			AR.B1
		Jnz			Play_Key_1
		Test			AR.B2
		Jnz			Play_Key_2
		Test			AR.B3
		Jnz			Play_Key_3
		AR			= 0
		Rm[Key_Value]		= AR
Key_Rel_Process:
		AR			= RM[Key_Rel_Value]
		JZR			Scan_End
		Test			AR.B0
		JNZ			Play_Rel_Key_0
		AR			= 0
		RM[Key_Rel_Value]	= AR
		Jmp			Scan_End
Key_No_Change:
		RM[Key_Buf]		= AR
		JMP			Scan_End
Clr_Key_Debounce:
		RM[Key_Buf]		= AR
		AR			= 0
		RM[Debouncetime]	= AR
Scan_End:
		Rets
;;******************************************************************************
;;******************************************************************************
Play_Key_0:	;;Next Marknum
		CLR			AR.B0
		RM[Key_Value]		= AR

		AR			= RM[MarkNum]			;;控制mark点
		AR++
		RM[MarkNum]		= AR

		CALL			SelectPlayMark			;;进行跳转

		JMP			Key_Process

;;******************************************************************************
Play_Rel_Key_0:
		CLR			AR.B0
		RM[Key_Rel_Value]	= AR
		JMP			Key_Rel_Process
;;******************************************************************************
;;******************************************************************************
Play_Key_1:	;;Play/End
		CLR			AR.B1
		RM[Key_Value]		= AR

		AR			= RM[Play_Sub3_Flag]
		JNZ			Stop_Play_Sub3

		AR			= RM[Sub3_Idx]
		AR++
		RM[Sub3_Idx]		= AR

		AR			= 0
		RM[MarkNum]		= AR
		PCH			= Play_Sub3_Start
		LCALL			Play_Sub3_Start

		JMP			Key_Process

Stop_Play_Sub3:
		PCH			= Play_Sub3_End
		LCALL			Play_Sub3_End

		JMP			Key_Process

;;******************************************************************************
Play_Key_2:	;;Previous
		CLR			AR.B2
		RM[Key_Value]		= AR
		PCH			= Resume_play
		Lcall			Resume_play		;;恢复播放功能
		JMP			Key_Process
;;******************************************************************************
Play_Key_3:
		CLR			AR.B3
		RM[Key_Value]		= AR

		JMP			Key_Process
;;******************************************************************************
;;******************************************************************************
