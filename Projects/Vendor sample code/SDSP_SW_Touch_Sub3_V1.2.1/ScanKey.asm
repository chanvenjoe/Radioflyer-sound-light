;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
;;上电按键IO初始化
Scan_Key_Init:
		Ar			= Io[IOC_PCI]
		Ax			= 0XF0F8
		Ar			= Ar & Ax
		Io[IOC_PCI]		= Ar

		Ar			= IOP_PCI_PD50K
		Io[IOP_IX]		= Ar
		Ar			= 0X0F07
		Io[IOP_DAT]		= Ar

		Ar			= IOP_WAKEN_PC
		Io[IOP_IX]		= Ar
		Ar			= 0X0F07
		Io[IOP_DAT]		= Ar

		Ar			= IOP_WAKELV_PC
		Io[IOP_IX]		= Ar
		Ar			= 0X0F07
		Io[IOP_DAT]		= Ar
Scan_Key_Init_Exit:
		Rets

;;******************************************************************************
;;******************************************************************************
Scan_Key:
		Ar			= Io[PortCI]
		BX			= 0X0F07
		Ar			= Ar & BX
		Ax			= Rm[Key_Flag]
		Sf			= Ar - Ax
		Jeq			Key_No_Change
		Ax			= Rm[Key_Buf]
		Sf			= Ar - Ax
		Jnz			Clr_Key_Debounce
		Ar			= Rm[Debouncetime]
		Ax			= 0x0020
		Sf			= Ar - Ax			;;//32Ms,Base On 1k
		Jle			Scan_End
		Ar			= Rm[Key_Flag]
		Ax			= Rm[Key_Buf]
		Ar			= Ar ^ Ax
		Ar			= Ar & Ax
		R0			= Ar			;;按下的按键
		Ax			= Rm[Key_Flag]
		Ar			= Rm[Key_Buf]
		Ar			= Ar^Ax
		Ar			= Ar&Ax
		R1			= Ar			;;松开的按键
		Ar			= Rm[Key_Buf]
		Rm[Key_Flag]		= Ar
Key_Process:
		Ar			= R0
		Jzr			Key_Rel_Process
		Test			Ar.B0
		Jnz			Play_Key_1
		Test			Ar.B1
		Jnz			Play_Key_2
		Test			Ar.B2
		Jnz			Play_Key_3
		R0			= 0
Key_Rel_Process:
		Ar			= R1
		Jzr			Scan_End
		R1			= 0
		Jmp			Scan_End
Key_No_Change:
		Rm[Key_Buf]		= Ar
		Jmp			Scan_End
Clr_Key_Debounce:
		Rm[Key_Buf]		= Ar
		Ar			= 0
		Rm[Debouncetime]	= Ar
Scan_End:
		Rets

;;******************************************************************************
;;******************************************************************************
Play_Key_1:
		Clr			R0.B0
		Pch=			Sub2_Play_End
		Lcall			Sub2_Play_End

		Ar			= Rm[Sub2_Num]
		Ar++
		Rm[Sub2_Num]		= Ar
		Pch=			Play_Sub2_Int
		Lcall			Play_Sub2_Int
		Jmp			Key_Process
;;******************************************************************************
;;******************************************************************************
Play_Key_2:
		Clr			R0.B1
		Pch=			Sub2_Play_End
		Lcall			Sub2_Play_End
		Jmp			Key_Process
;;******************************************************************************
;;******************************************************************************
Play_Key_3:
		Clr			R0.B2
		Jmp			Key_Process
;;******************************************************************************
;;******************************************************************************