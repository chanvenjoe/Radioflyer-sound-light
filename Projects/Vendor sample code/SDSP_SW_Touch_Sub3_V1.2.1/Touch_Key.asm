;;Touch_Key.asm
.CODE
;-----------------------------------------------------------------------------
; Memory Allocation
;-----------------------------------------------------------------------------
VarRM[0:127] = {
;;Touch_Obj_UseBuf[12]
}

VarRM[128:511] = {
;;Touch_Obj_UseBuf[0]
}

VarRM[512:4095] = {
;;Touch_Obj_UseBuf[41]
}

;-----------------------------------------------------------------------------
;;//定义obj在VarRM[0:127]的开始地址
;#OBJReAllocate	Trsf16Touch_20key_v3.02, 26
;;;;//obj在VarRM[128:511]的开始地址
;#OBJReAllocate	Trsf16Touch_20key_v3.02, 128
;;;;//obj在VarRM[512:4095]的开始地址
;#OBJReAllocate	Trsf16Touch_20key_v3.02, 2944
;-----------------------------------------------------------------------------
.CODE

/*
		Pch			= Trsf16STouchInit
		Lcall			Trsf16STouchInit

		Pch 			= Trsf16sTouchScan
		Lcall			Trsf16sTouchScan
*/

;-----------------------------------------------------------------------------
TouchTask:
		Bx      		= 0			;Key1~Key16
		Cx			= Rm[TouchKeyFlagl]
		Ax			= Rm[Keyflagl]
		I1			= KeyFlagL
		I0			= Play_KeyL
		Ar			= Cx
		Ax			^= Ar			;判断是否有按键变化？
		Jne          		Find_Press_Key

		Cx			= Rm[TouchKeyFlagM]
		Ax			= Rm[KeyflagM]
		I1++
		Ar			= Cx
		Ax			^= Ar
		Jne          		Find_Press_Key2
		Jmp			NoTouchPress
;以下演示单个按键触发
	Find_Press_Key:
		Ar			= Cx
		Rm[I1]			= Ar
		Ar			&= Ax      	    	;判断变化的按键是压下？
		JZR			Touchkeyrelease

		Ax			= Ar
		Test			Ax.B0
		Jne			Touchkeypress1		;Sub2
		Test			Ax.B1
		Jne			Touchkeypress2
		Test			Ax.B2
		Jne			Touchkeypress3
		Test			Ax.B3
		Jne			Touchkeypress4
		Test			Ax.B4
		Jne			Touchkeypress5
		Test			Ax.B5
		Jne			Touchkeypress6
		Test			Ax.B6
		Jne			Touchkeypress7
		Test			Ax.B7
		Jne			Touchkeypress8
		Test			Ax.B8
		Jne			Touchkeypress9
		Test			Ax.B9
		Jne			Touchkeypress10
		Test			Ax.B10
		Jne			Touchkeypress11		;Sub2
		Test			Ax.B11
		Jne			Touchkeypress12
		Test			Ax.B12
		Jne			Touchkeypress13
		Test			Ax.B13
		Jne			Touchkeypress14
		Test			Ax.B14
		Jne			Touchkeypress15
		Test			Ax.B15
		Jne			Touchkeypress16
		Jmp			Notouchpress

	Find_Press_Key2:
		Ar			= Cx
		Rm[I1]			= Ar
		Ar			&= Ax      	    	;判断变化的按键是压下？
		JZR			Touchkeyrelease

		Ax			= Ar
		Test			Ax.B0
		Jne			Touchkeypress17		;Sub2
		Test			Ax.B1
		Jne			Touchkeypress18
		Test			Ax.B2
		Jne			Touchkeypress19
		Test			Ax.B3
		Jne			Touchkeypress20
		Jmp			Notouchpress

	TouchKeyRelease:
		Ar			= 0x7FFF
		Rm[I0]			= Ar
		LED_OFF
		Jmp			Notouchpress

	TouchKeyPress1:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 0
		Rm[Sub2_Num]		= Ar
		JMP			TouchKeyPress

	TouchKeyPress2:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 1
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress3:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 2
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress4:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 3
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress5:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 4
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress6:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 5
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress7:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 6
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress8:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 7
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress9:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 8
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress10:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 9
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress11:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 10
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress12:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 11
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress13:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 12
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress14:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 13
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress15:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 14
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress16:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 15
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress17:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 16
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress18:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 17
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress19:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 18
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress20:
		Ax			= Rm[I0]
		Sf			= Ar - Ax
		Jeq			Notouchpress
		Rm[I0]			= Ar

		Ar			= 19
		Rm[Sub2_Num]		= Ar
		Jmp			TouchKeyPress

	TouchKeyPress:
		LED_ON

		Pch			= Sub2_Play_End
		Lcall			Sub2_Play_End

		Pch			= Play_Sub2_Int
		Lcall			Play_Sub2_Int
		Jmp			Process_End
	;---------------------------------------------------------------------
	Process_End:
	NoTouchPress:
		Rets
;-----------------------------------------------------------------------------