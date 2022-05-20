;*******************************************************************************
;*******************************************************************************
.Code
R_bts_ch0_get_ix	EQU	Sub3_Adr_L
R_bts_ch0_get_ix_H	EQU	Sub3_Adr_H
;;*******************************************************************************
;;*******************************************************************************
Varrm[0:127] = {
	Play_Sub3_Flag				;;播放标志，=1播放，
	Sub3_Idx				;;播放序号
	Pcmyin_Ptr
	Pcmyou_Ptr
	Sub3_Lp_Times				;;循环播放次数：Bit15=1,一直Loop，Bit14~0=N,播放N+1次
	Sub3_Sum				;;声音总数
	Samplech0Rate				;;声音播放率
	Sub3_Adr_H				;;声音 Address H
	Sub3_Adr_L				;;声音 Address L
	Sub3_Adr_H_Bak				;;开始地址备份 H
	Sub3_Adr_L_Bak				;;开始地址备份 L
}
Varrm[128:511] = {
}
Varrm[512:4095] = {
	Reallocate#512
	Baseon512#Pcmy[512]
	;;Reallocate#1024
	;;Sdsp_Sub_Buf[1696]	;576+576+272+272
}
;========================================================;
;========================================================;
;========================================================;
;========================================================;
#ifdef		_MSPEECHDSP_		;;//SF16128
	;//定义Obj在Varrm[0:127]的开始地址
	;#Objreallocate	SDSP_Sbb3_Ch0decV08 , 82	;(46)
	;;;//Obj在Varrm[128:511]的开始地址
	;#Objreallocate	SDSP_Sbb3_Ch0decV08 , 181	;(75)
	;;;//Obj在Varrm[512:4095]的开始地址
	#Objreallocate	SDSP_Sbb3_Ch0decV08, 1024	;(1696)
#else
	;//定义Obj在Varrm[0:127]的开始地址
	;#Objreallocate	Sbb3_Ch0decV08 , 82		;(46)
	;;;//Obj在Varrm[128:511]的开始地址
	;#Objreallocate	Sbb3_Ch0decV08 , 181		;(75)
	;;;//Obj在Varrm[512:4095]的开始地址
	#Objreallocate	Sbb3_Ch0decV08, 1024		;(1696)
#endif
;*******************************************************************************
;*******************************************************************************
#ifdef		_MSPEECHDSP_		;;//SF16128
	#define		Sbb3_Use_Bank_Size	 Sbb3_Maxbank_Used
	#define		Sbb3_Usepram
#else
	#define		Sbb3_Use_Bank_Size	Sbb3_Maxbank_Used+8
#endif

;*******************************************************************************
;*******************************************************************************
/*
本Asm文档提供给用户使用的函数有:
1、Sub3中断向量表重新定义: Sub3_Vectortableinit
2、Sub3开启播放函数:	Play_Sub3_Start
3、Sub3播放解码函数:	Play_Sub3
4、Sub3播放结束函数:	Play_Sub3_End
5、Sub3 PWM输出函数:	Play_Sub3_Isr
6、Sub3 Mark点跳转函数:
*/
;*******************************************************************************
;Sub3中断向量表新定义
;Input:Na
;*******************************************************************************
Sub3_Vectortableinit:
#ifdef		Sbb3_Usepram					;Sub3解码是否运行1Kw Sram Code
		Dsi
		Nop
		Pcb			= 0
		P1.Hh			= 0
		Set			Io[Status].B13		;Enabled Intvect Change
	#ifdef		_MFDSP_			;;//F064/032
		Cx			= 0x0E
		P1			= #T_Vector_Access_Addr_16
	#else		// _MFDSP_
		Cx			= 0x04
		P1			= #T_Vector_Access_Addr_6
	#endif		// _MFDSP_
Sub3_Vectortableinit_Lp:
		Ar			= Pm[P1++]
		Io[Intvect]		= Ar			;<---此条指令会参考Pcb的值
		Loop			Sub3_Vectortableinit_Lp

		Pcb			= RamBank 		; Bank7
		Ar			= Sbb3_Use_Bank_Size	; Pwm Addr .. ;
		Io[Intvect]		= Ar
		Clr			Io[Status].B13
		Pcb			= 0
		;;***********************************************
Copy_Sbb3_Int_Bank0:
		P1 			= Sbb3_Use_Bank_Size	;;#Bank7粘贴开始地址
		P0			= #L_INTVB0_ENTRY	;;#Bank0被复制代码的开始地址
		Ar			= #PWM_END_ADR		;;#Bank0被复制代码的结束地址
		P0.Hh			= 0
		P1.Hh			= PH_H			;;PH_H=_OPT_PRAMBank_
		Ar			= Ar - P0		;;结束地址-开始地址=Size
		Cx			= Ar
		Cx--
Copy_Sbb3_Int_Bank0_Lp:
		Ar			= Pm[P0++]
		Pm[P1++]		= Ar
		Loop			Copy_Sbb3_Int_Bank0_Lp
		P1.Hh			= 0
		;;***********************************************
		Eni
#endif
Sub3_Vectortableinit_Exit:
		Rets

;*******************************************************************************
;*******************************************************************************
;Sub3开启播放函数
;Input:	Rm[Sub3_Idx]	=Ar；播放序号
;*******************************************************************************
Play_Sub3_Start:
;		Call			Sub3_Vectortableinit	;Sub3中断向量表新定义
		Call			Sub3_Clr_Pcmy		;;Clr Pcmy
		Ar			= Pcmy
		Rm[Pcmyin_Ptr]		= Ar
		Rm[Pcmyou_Ptr]		= Ar
		Ar			= 0
		Flti			= Ar
		Flti			= Ar
		Flti			= Ar
		Flti			= Ar
		Flta			= Ar
		Ar			= 0x3F
;		Set			Ar.B7			; Close Filter
		Fltg			= Ar
		;;------------------------------------------------------------------;;
		Call			Get_Sub3_Sum		;;获得曲目总数
		Ar			= Rm[Sub3_Sum]
		Jzr			Play_Sub3_Init_Exit
		Call			Chk_Sub3_Limit		;;确保播放序号在总数内
		Call			Play_Sub3_Adr_Init	;;初始化地址
		;;------------------------------------------------------------------;;
Play_Sub3_Loop_Init:
#ifdef		Sub3_In_Spi
		Pch			= SpiFlash_Wait_Ready
		Lcall			SpiFlash_Wait_Ready	;;等待Flash空闲
		Ar			= Rm[Sub3_Adr_L]
		Rm[Flash_Adr_L]		= Ar
		Ar			= Rm[Sub3_Adr_H]
		Rm[Flash_Adr_H]		= Ar
		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
#endif
		P1.Hh			= 0
		P0.Hh			= 0
Play_Sub3_Init_Again:
		MAC_SBB3_CH0_INIT				;;Sub3解码初始化
		Jzr			Play_Sub3_Init_Again 	;;// Cant Find Header!! Initial Error!!

		Ar			= Rm[Samplech0Rate]
		Fltp			= Ar
		Audio_Config_Adjust_Fltp			;;根据PWN选项,调整fltp
		Rm[Samplech0Rate]	= Ar

		Ar			= 1			;;开启播放标致
		Rm[Play_Sub3_Flag]	= Ar

Play_Sub3_Init_Exit:
		Rets

;*******************************************************************************
;*******************************************************************************
;主循环调用
Play_Sub3:
		Ar			= Rm[Play_Sub3_Flag]
		Jzr			Play_Sub3_Exit
Subband3_Decode:
#ifdef		Sub3_In_Spi
		Pch			= SpiFlash_Wait_Ready
		Lcall			SpiFlash_Wait_Ready	;;等待Flash空闲
		Ar			= Rm[Sub3_Adr_L]
		Rm[Flash_Adr_L]		= Ar
		Ar			= Rm[Sub3_Adr_H]
		Rm[Flash_Adr_H]		= Ar
		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
#endif

		MAC_SBB3_CH0_DEC				;;SUB3解码
		Jnz			Subband3_Decode_Exit	;;// Az=1 Is End Of Decode
		;;Sub解码结束后的动作


		Ar			= Rm[Sub3_Lp_Times]
		Jzr			Subband3_End
		Jan			Play_Sub3_Loop_Ok
		Ar--
		Rm[Sub3_Lp_Times]	= Ar
Play_Sub3_Loop_Ok:
		Ar			= Rm[Sub3_Adr_L_Bak]
		Rm[Sub3_Adr_L]		= Ar
		Ar			= Rm[Sub3_Adr_H_Bak]
		Rm[Sub3_Adr_H]		= Ar
		Call			Play_Sub3_Loop_Init	;;Loop,重新初始化地址
		Jmp			Subband3_Decode
Subband3_End:
		Call			Play_Sub3_End
		Ar			= 0
		Jmp			Play_Sub3_Exit
Subband3_Decode_Exit:
		Ar			= 1
Play_Sub3_Exit:
		Rets

;*******************************************************************************
;Sub3播放结束函数
;Input:	Na
;*******************************************************************************
Play_Sub3_End:
		Ar			= Rm[Play_Sub3_Flag]
		Jzr			Play_Sub3_End_Exit
		Call			Sdsp_Sub3_Ramp_Down
		Call			Sub3_Clr_Pcmy		;;Clr Pcmy
		Ar			= 0
		Rm[Play_Sub3_Flag]	= Ar
Play_Sub3_End_Exit:
		Rets

;*******************************************************************************
;*******************************************************************************
;;获得曲目总数
Get_Sub3_Sum:
#ifdef		Sub3_In_Spi
		Pch			= SpiFlash_Wait_Ready
		Lcall			SpiFlash_Wait_Ready	;;等待Flash空闲
		Ar			= 4			;;Sub3在总表4位置
		Rm[Flash_Adr_L]		= Ar
		Ar			= 0
		Rm[Flash_Adr_H]		= Ar

		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Flash_Adr_L]		= Ar
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Flash_Adr_H]		= Ar
		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Sub3_Sum]		= Ar
#else
		P1.Hh			= #Sub3_Adr_Tab.N2
		P1			= #Sub3_Adr_Tab
		Ar			= Pm[P1]
		Rm[Sub3_Sum]		= Ar			;;获得sub3总数
		P1.Hh			= 0
#endif
		Rets
;*******************************************************************************
;*******************************************************************************
;;确保播放序号在总数内
Chk_Sub3_Limit:
		Ar			= Rm[Sub3_Idx]
		Jge			Chk_Sub3_Limit_Pos
		Ar			= Rm[Sub3_Sum]
		Ar--
		Rm[Sub3_Idx]		= Ar
		Jmp			Chk_Sub3_Limit_Exit
Chk_Sub3_Limit_Pos:
		Ar			= Rm[Sub3_Sum]
		Ax			= Ar
		Ar			= Rm[Sub3_Idx]
		Sf			= Ar - Ax
		Jan			Chk_Sub3_Limit_Exit
		Ar			= 0
		Rm[Sub3_Idx]		= Ar
Chk_Sub3_Limit_Exit:
		Rets
;*******************************************************************************
;*******************************************************************************
;播放语音地址初始化
;函数输入值为 Rm[Sub3_Idx]
Play_Sub3_Adr_Init:
;;-----------------------------------------------------------------------------------------------------------------
#ifdef		Sub3_In_Spi
		Pch			= SpiFlash_Wait_Ready	;;等待Flash空闲
		Lcall			SpiFlash_Wait_Ready	;;等待Flash空闲
		Ar			= 4			;;Sub3在总表4位置
		Rm[Flash_Adr_L]		= Ar
		Ar			= 0
		Rm[Flash_Adr_H]		= Ar

		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Flash_Adr_L]		= Ar
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Flash_Adr_H]		= Ar

		Ar			= Rm[Sub3_Idx]
		Slz			Ar,2
		Slz			Ar,1
		Ar			= Ar + 2
		Ax			= Ar
		Ar			= Rm[Flash_Adr_L]
		Ar			= Ar + Ax
		Rm[Flash_Adr_L]		= Ar

		Ar			= Rm[Flash_Adr_H]
		Ar			= Ar + 0 + C
		Rm[Flash_Adr_H]		= Ar

		Pch			= SpiFlash_Read_LoadAdr
		Lcall			SpiFlash_Read_LoadAdr	;;给 读地址
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Ah			= 0			;;格式
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Sub3_Lp_Times]	= Ar			;;播放次数
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Sub3_Adr_L]		= Ar			;;Adr_L
		Rm[Sub3_Adr_L_Bak]	= Ar
		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Rm[Sub3_Adr_H]		= Ar			;;Adr_H
		Rm[Sub3_Adr_H_Bak]	= Ar
#else
;;-----------------------------------------------------------------------------------------------------------------
		Ar			= P1.Hh
		Push			Ar
		P1.Hh			= #Sub3_Adr_Tab.N2
		P1			= #Sub3_Adr_Tab
		Ar			= Rm[Sub3_Idx]
		Slz			Ar, 2
		Ar			= Ar + 1
		P1			= P1 + Ar
		Ar			= Pm[P1++]		;;格式
		Ah			= 0
		Ar			= Pm[P1++]		;;播放次数
		Rm[Sub3_Lp_Times]	= Ar
		Ar			= Pm[P1++]
		Rm[Sub3_Adr_L]		= Ar			;;Adr_L
		Rm[Sub3_Adr_L_Bak]	= Ar
		Ar			= Pm[P1++]
		Rm[Sub3_Adr_H]		= Ar			;;Adr_H
		Rm[Sub3_Adr_H_Bak]	= Ar
		Pop			Ar
		P1.Hh			= Ar
#endif
Play_Sub3_Adr_Init_Exit:
		Rets


;******************************************************************************
;******************************************************************************
Sbb_Ch0Getbts:
Sub3_Read_A_Word:
;----------------------------------------------------------------------------------------------------------------
#ifdef		Sub3_In_Spi

		Pch			= SpiFlash_Read_A_Word
		Lcall			SpiFlash_Read_A_Word	;;读出值到Ar
		Xchg			Ar
		push			ar

		Ar			= Rm[Sub3_Adr_L]
		Ar			= Ar+2			;;地址加2
		Rm[Sub3_Adr_L]		= Ar

		AR			= Rm[Sub3_Adr_H]
		AR			= Ar + 0 + C
		Rm[Sub3_Adr_H]		= AR
		pop			AR
#else
;----------------------------------------------------------------------------------------------------------------
		Push			P1
		Push			Ax
		Ar			= P1.Hh
		Push			Ar

		Ar			= Rm[Sub3_Adr_L]
		P1			= Ar
		Ar			= Rm[Sub3_Adr_H]
		P1.Hh			= Ar
		;---------------------------------------------
		Ax			= Pm[P1++]
		;---------------------------------------------
		Ar			= P1
		Rm[Sub3_Adr_L]		= Ar
		Ar			= P1.Hh
		Rm[Sub3_Adr_H] 		= Ar

		Pop			Ar
		P1.Hh			= Ar
		Ar			= Ax
		Pop			Ax
		Pop			P1

		Xchg			Ar
#endif
		Rets

;******************************************************************************
;******************************************************************************
;//   |----------|--------------------|---------------------|	Size 512
;//             Pcmyin_Ptr       Pcmyou_Ptr
;// Return An=1 Is Less 288
Waitpcmy_Empty_Size_Sub3:
		Ar			= Rm[Pcmyin_Ptr]
		Ax			= Rm[Pcmyou_Ptr]
		Ar			= Ax - Ar;
		Jan			Getpcmy_Empty_In_Gt_Sub3
		Jmp			Getpcmy_Empty_Next_Sub3
Getpcmy_Empty_In_Gt_Sub3:
		;;// Length = 512 - Pcmyin_Ptr + Pcmyou_Ptr
		Ax			= 0x01FF;
		Ar			= Ar & Ax
Getpcmy_Empty_Next_Sub3:
		;;// Check Empty Size > 288
		Ax			= 0x0121;
		Sf			= Ar - Ax
		Rets

;******************************************************************************
;******************************************************************************
Sub3_Clr_Pcmy:
		Ar			= 0
		Cx			= 511
		I1			= Pcmy
Sub3_Clr_Pcmy_Lp:
		Rm[I1++]		= Ar
		Loop			Sub3_Clr_Pcmy_Lp
		Rets
;*******************************************************************************
;*******************************************************************************

Clr_Sub_Obj_Ram:
		Io[Clrwdt]		= Ar
		Cx			= 42
		Cx--
		Ar			= 0
#ifdef		_MSPEECHDSP_		;;//SF16128
		I1			= SDSP_SBB3_CHZ0DECV01@IX1_BACK
#else
		I1			= SBB3_CHZ0DECV01@IX1_BACK
#endif
Clr_Ram_42_Lp:
		Rm[I1++]		= Ar
		Loop			Clr_Ram_42_Lp
		;;-----------------------------------------------------------------------------------------;;
		Cx			= 75
		Cx--
		Ar			= 0
#ifdef		_MSPEECHDSP_		;;//SF16128
		I1			= SDSP_SBB3_CHZ0DECV01@SCF_BUF_PTR
#else
		I1			= SBB3_CHZ0DECV01@SCF_BUF_PTR
#endif
Clr_Ram_75_Lp:
		Rm[I1++]		= Ar
		Loop			Clr_Ram_75_Lp
		;;-----------------------------------------------------------------------------------------;;
		Cx			= 0x06A0
		Cx--
		Ar			= 0
#ifdef		_MSPEECHDSP_		;;//SF16128
		I1			= SDSP_Sbb3_Chz0Decv01@Dsxch0
#else
		I1			= Sbb3_Chz0Decv01@Dsxch0
#endif

Clr_Ram_1696_Lp:
		Rm[I1++]		= Ar
		Loop			Clr_Ram_1696_Lp
Clr_Sub_Obj_Ram_Exit:
		Rets
;*******************************************************************************
;*******************************************************************************
;*******************************************************************************
;*******************************************************************************
;当声音正在播放的时候，突然打断声音会有Bo音，
;需要进行Ramp_Down处理：
;*******************************************************************************
Sdsp_Sub3_Ramp_Down:
		Push			Mx
		Push			Mr0
		Push			Mr1
		Push			Mr2
Sub3_Ramp_Down_Cbl_9:
		Ar			= 9
		Cbl			= Ar
		Cx			= 0x01FF		;;512 Word
		Ar			= Rm[Pcmyou_Ptr]
		I0			= Ar
		I1			= Ar
		Bx			= 0x0FF
Sub3_Ramp_Down_Lp1:
		Ar			= Rm[I0]
		Mx			= Ar
		Ar			= Bx
		Mulus
		Ar			= Mr0
		Xchg			Ar
		Ah			= Mr1
		Rm[I0++]		= Ar
		Ar			= Bx
		Jzr			Sub3_Test1
		Bx--
Sub3_Test1:
		Loop			Sub3_Ramp_Down_Lp1
Sub3_Test2:	;;>8Ms
		Io[Clrwdt]		= Ar			; Clear Watch Dog
		Ar			= Rm[Pcmyou_Ptr]
		Ar			= Ar - I1
		Ax			= 0x01FF
		Ar			= Ar & Ax
		Dx			= 0x101
		Sf			= Ar - Dx
		Jan			Sub3_Test2
		Jmp			Sub3_Ramp_Down_Exit
;;------------------------------------------------------------------;;
Sub3_Ramp_Down_Cbl_8:
		Ar			= 8
		Cbl			= Ar
		Cx			= 0x00FF		;;256 Word
		Ar			= Rm[Pcmyou_Ptr]
		I0			= Ar
		I1			= Ar
		Bx	 		= 0x00FF
Sub3_Ramp_Down_Lp11:
		Ar			= Rm[I0]
		Mx			= Ar
		Ar			= Bx
		Mulus
		Ar			= Mr0
		Xchg			Ar
		Ah			= Mr1
		Rm[I0++]		= Ar
		Ar			= Bx
		Jzr			Sub3_Test11
		Bx--
		Ar			= Bx
		Jzr			Sub3_Test11
		Bx--
Sub3_Test11:
		Loop			Sub3_Ramp_Down_Lp11
Sub3_Test21:	;;>8Ms
		Io[Clrwdt]		= Ar			; Clear Watch Dog
		Ar			= Rm[Pcmyou_Ptr]
		Ar			= Ar - I1
		Ax			= 0x00FF
		Ar			= Ar & Ax
		Dx			= 0x0081
		Sf			= Ar - Dx
		Jan 			Sub3_Test21
Sub3_Ramp_Down_Exit:
		Pop			Mr2
		Pop			Mr1
		Pop			Mr0
		Pop			Mx

		Rets

;*******************************************************************************
;*******************************************************************************
;;=====================================;;
Macro		MAC_SBB3_CH0_INIT
	#ifdef	_MSPEECHDSP_		;;//SF16128
		PCH			= Sdsp_Sbb3_Ch0Initv08
		LCALL			Sdsp_Sbb3_Ch0Initv08
	#else
		PCH			= Sbb3_Ch0Initv08
		LCALL			Sbb3_Ch0Initv08
	#endif
Endm
;;=====================================;;
Macro		MAC_SBB3_CH0_DEC
	#ifdef	_MSPEECHDSP_		;;//SF16128
		PCH			= Sdsp_Sbb3_Ch0Decv08
		LCALL			Sdsp_Sbb3_Ch0Decv08
	#else
		PCH			= Sbb3_Ch0Decv08
		LCALL			Sbb3_Ch0Decv08
	#endif
Endm
;;****************************************************************************
;;补充的模块
Sbb_Skipdata:
#ifdef		Sub3_In_Spi
		SLZ			R0
		SLC			R1
		AR			= RM[Sub3_Adr_L]
		AR			= AR + R0
		RM[Sub3_Adr_L] 		= AR
		AR			= RM[Sub3_Adr_H]
		AR			= AR + R1 + C
		RM[Sub3_Adr_H] 		= AR
		AR			= RM[Sub3_Adr_L]
		RM[Flash_Adr_L]		= AR
		AR			= RM[Sub3_Adr_H]
		RM[Flash_Adr_H]		= AR
		PCH			= SpiFlash_Read_LoadAdr
		LCALL			SpiFlash_Read_LoadAdr	;;给 读地址
#else
		AR			= RM[Sub3_Adr_L]
		AR			= AR + R0
		RM[Sub3_Adr_L] 		= AR
		AR			= RM[Sub3_Adr_H]
		AR			= AR + R1 + C
		RM[Sub3_Adr_H] 		= AR
#endif
		RETS

;*******************************************************************************
;MARK点跳转播放函数
;Input:	Rm[MarkNum]	= AR；播放MARK序号
;*******************************************************************************
SelectPlayMark:
		CALL			Get_Sub3_Adr
		AR			= 0
		P0.hh			= AR
		P0			= AR
		AX			= RM[MarkNum]
		AR			= RM[MARKSIZE]
		AX++
		SF			= AR - AX		;;检测Mark点是否超过上限
		JZR			Reset_The_MarkNum
		PCH			= sb3_GoToMarkNum
		LCALL			sb3_GoToMarkNum
		RETS
Reset_The_MarkNum:
		AR			= 0x0
		RM[MARKNUM]		= AR
		PCH			= sb3_GoToMarkNum
		LCALL			sb3_GoToMarkNum
		RETS
;;******************************************************************************
SaveFrameNumFun:
		AR			= RM[FRAMENUM]
		RM[SaveFrmaeL]		= AR
		AR			= RM[FRAMENUMH]
		RM[SaveFrmaeH]		= AR
		RETS
;;******************************************************************************
Sbb3_CheckMarkNum:

		AR			= RM[R_bts_ch0_get_ix]
		PUSH			AR
		AR			= RM[R_bts_ch0_get_ix_H]
		PUSH			AR


		CALL			Get_Sub3_Adr

		AR			= RM[SaveFrmaeL]
		RM[FRAMENUM]		= AR
		AR			= RM[SaveFrmaeH]
		RM[FRAMENUMH]		= AR

		PCH			= Sb3_CheckMarkNum
		LCALL			Sb3_CheckMarkNum

		POP			AR
		RM[R_bts_ch0_get_ix_H]	= AR
		POP			AR
		RM[R_bts_ch0_get_ix]	= AR
		RETS
;;******************************************************************************
;*******************************************************************************
;恢复sub3播放
Resume_play:
		CALL			Sbb3_CheckMarkNum
		CALL			Get_Sub3_Adr
		PCH			= sb3_GoToMarkNum
		LCALL			sb3_GoToMarkNum
		RETS
;;****************************************************************************
;*******************************************************************************
;获得Sub3初始地址
Get_Sub3_Adr:

#ifdef		Sub3_In_Spi
		Pch			= SpiFlash_Wait_Ready	;;等待Flash空闲
		LCALL			SpiFlash_Wait_Ready	;;等待Flash空闲
		AR			= 4			;;Sub3在总表4位置
		RM[Flash_Adr_L]		= AR
		AR			= 0
		RM[Flash_Adr_H]		= AR

		PCH			= SpiFlash_Read_LoadAdr
		LCALL			SpiFlash_Read_LoadAdr	;;给 读地址
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		RM[Flash_Adr_L]		= AR
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		RM[Flash_Adr_H]		= AR

		AR			= RM[Sub3_Idx]
		SLZ			AR, 2
		SLZ			AR, 1
		AR			= AR + 2

		AX			= AR
		AR			= RM[Flash_Adr_L]
		AR			= AR + AX
		RM[Flash_Adr_L]		= AR


		AR			= RM[Flash_Adr_H]
		AR			= AR + 0 + C
		RM[Flash_Adr_H]		= AR

		PCH			= SpiFlash_Read_LoadAdr
		LCALL			SpiFlash_Read_LoadAdr	;;给 读地址
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		AH			= 0			;;格式
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		RM[Sub3_Lp_Times]	= AR			;;播放次数
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		RM[Sub3_Adr_L]		= AR			;;Adr_L
		RM[Sub3_Adr_L_Bak]	= AR
		RM[Flash_Adr_L]		= AR
		PCH			= SpiFlash_Read_A_Word
		LCALL			SpiFlash_Read_A_Word	;;读出值到Ar
		RM[Sub3_Adr_H]		= AR			;;Adr_H
		RM[Sub3_Adr_H_Bak]	= AR

		RM[Flash_Adr_H]		= AR

		PCH			= SpiFlash_Read_LoadAdr
		LCALL			SpiFlash_Read_LoadAdr	;;给 读地址

#else
		AR			= P1.Hh
		PUSH			AR
		P1.Hh			= #Sub3_Adr_Tab.H
		P1			= #Sub3_Adr_Tab
		AR			= RM[Sub3_Idx]
		SLZ			AR, 2
		AR			= AR + 1
		P1			= P1 + AR
		AR			= PM[P1++]		;;格式
		AH			= 0
		AR			= PM[P1++]		;;播放次数
		RM[Sub3_Lp_Times]	= AR
		AR			= PM[P1++]
		RM[Sub3_Adr_L]		= AR			;;Adr_L
		RM[Sub3_Adr_L_Bak]	= AR
		AR			= PM[P1++]
		RM[Sub3_Adr_H]		= AR			;;Adr_H
		RM[Sub3_Adr_H_Bak]	= AR
		POP			AR
		P1.Hh			= AR
#endif
		RETS

#ifdef		_MSPEECHDSP_		;;//SF16128
	#LinkOBJ 	"LIB\SDSP_Sbb3_Ch0decV08.Obj"
#else
	#LinkOBJ 	"LIB\Sbb3_Ch0decV08.Obj"
#endif
;*******************************************************************************
;*******************************************************************************