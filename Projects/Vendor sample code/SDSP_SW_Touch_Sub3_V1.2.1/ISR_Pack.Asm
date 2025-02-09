;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
L_INTVB5_ENTRY:
		Clr 			Io[INTREQ].B5
		Reti
;;******************************************************************************
L_INTVB4_ENTRY:
		Clr 			Io[INTREQ].B4
		Reti
;;******************************************************************************
L_INTVB3_ENTRY:
		Clr 			Io[INTREQ].B3
		Reti
;;******************************************************************************
L_INTVB2_ENTRY:
		Clr 			Io[INTREQ].B2
		Ar			= Rm[Time_Ms]
		Ar++
		Clr			Ar.B15
		Rm[Time_Ms]		= Ar

		Ar			= Rm[DebounceTime]
		Ar++
		Clr			Ar.B15
		Rm[DebounceTime]	= Ar
		Reti
;;******************************************************************************
L_INTVB1_ENTRY:
		Clr 			Io[INTREQ].B1
		Reti
;;******************************************************************************
L_INTVB0_ENTRY:
		Clr 			Io[INTREQ].B0
		Pch			= Play_Sub2_Isr
		Lcall			Play_Sub2_Isr

		Pch			= Trsp16Stouchscan
		Lcall			Trsp16Stouchscan
		Reti
;;*******************************************************************************
;;*******************************************************************************
;;*******************************************************************************