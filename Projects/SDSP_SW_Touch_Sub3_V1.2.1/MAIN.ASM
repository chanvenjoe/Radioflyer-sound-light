;-----------------------------------------------------------------------------
;	SDSP Demo Code , TRITAN Technology Inc.
;	@File		SDSP_SW_Touch_Sub3_V1.1
;	@Brief		S/W Touch with subband3 player
;	@Version	1.2.1
;	@Date		09/26/20
;	@Author		John
;-----------------------------------------------------------------------------
;	Remark:
;	SDSP_SBB2_OBJ:运算部分占用了Bank7
;	Bank7:	0~0x039B 	Has Used By Subband 3
;
;	按键说明：
;	PC8:	播放sub2的声音
;	PC9:	关闭sub2的声音
;
;	Touch Key: PB0 PB1 set in LIB\Trsp16Touch_20key.inc
;
;	LED: PC0 for touch key PB1
;
;	若想播放外部Spi Flash的声音请如下配置
;	#Define		Sub2_In_Spi
;	;#Define		Sub2_In_Pm
;	SPI档案放在\BIN_DATA\SPI_FLASH\ADPCM_SUB2.BIN
;-----------------------------------------------------------------------------
;	Change History :
;	<Date>		<Version>	<Author>	<Description>
;-----------------------------------------------------------------------------
;	2019/08/27	1.0.0.0		Marky		Initial Version
;	2020/02/06	1.1.0.0		John		Change Touch Library to 3.05
;                                                       (Add TRSF16127 support)
;	2020/06/09	1.2.0.0		John		Change Touch Library to 3.06
;                                                       (Add TRSF16256/512 support)
;	2020/09/26	1.2.1.0		John		Modify PC10 issue for TRSF16128
;							(Touch Library to 3.07)
;-----------------------------------------------------------------------------
#Include		"Common.Inc"
#include		"General.inc"
#Include		".\lib\Trsp16Touch_20key.inc"
#Define		_Using_Touch_Lib_
;#Define		DAC_Output				; 注释为PWM输出
;-----------------------------------------------------------------------------
.CODE
;-----------------------------------------------------------------------------
		ORG			0000H
RSTB_ENTRY:							; System program entry
		PCH			= SYS_PROG_ENTRY
		LJMP			SYS_PROG_ENTRY
		ORG			0004H
WAKEUP_ENTRY:							; Wake up entry
		PCH			= WAKEUP_PROC
		LJMP			WAKEUP_PROC
		ORG			0100H
;-----------------------------------------------------------------------------
;		*Main Program Start*
;-----------------------------------------------------------------------------
SYS_PROG_ENTRY:
		Pch			= Power_On_Int
		Lcall			Power_On_Int   		; IC上电初始化

		Pch			= Scan_Key_Init
		Lcall			Scan_Key_Init		; 按键IO上电初始化

		Pch			= Subband2_Init
		Lcall			Subband2_Init		; Sub2上电初始化

		;-------------------------------------------------------------
		; Touch I/O pull-low setup
		;-------------------------------------------------------------
		Ar			= Iop_PA_Pd220K
		Io[Iop_Ix]		= Ar
		Ar			= 0x000F
		Io[Iop_Dat]		= Ar
		Ar			= Iop_PB_Pd220K
		Io[Iop_Ix]		= Ar
		Ar			= 0x003F
		Io[Iop_Dat]		= Ar
		Ar			= Iop_PCI_Pd220K
		Io[Iop_Ix]		= Ar
		Ar			= 0xCFFF
		Io[Iop_Dat]		= Ar
		Ar			= Iop_PCI_Pd50K		; Disable PI 50k pull-low resistor
		Io[Iop_Ix]		= Ar
		Ar			= 0x0000
		Io[Iop_Dat]		= Ar

		;-------------------------------------------------------------
		; LED Init
		;-------------------------------------------------------------
#ifdef _MSPEECHDSP_
		SET			IO[IOC_PCI].b0
		SET			IO[PortCI].b0
#else
		SET			IO[IOC_PCI].b2
		CLR			IO[PortCI].b2
#endif

		;-------------------------------------------------------------
		; Note: Must to call initial function before using touch library
		;-------------------------------------------------------------
		Pch			= Trsp16Stouchinit
		Lcall			Trsp16Stouchinit
		;-------------------------------------------------------------

		ENA 			INT2
		ENA			INT0
		ENI
		Jmp			Main_Loop
WAKEUP_PROC:
		ENA 			INT2
		ENA			INT0
		ENI
		Jmp			Main_Loop

;-----------------------------------------------------------------------------
Main_Loop:
		;Call			Scan_Key

		;-------------------------------------------------------------
		; Touch key processing
		;-------------------------------------------------------------
		Call			TouchTask

		Pch			= Subband2_Play
		Lcall			Subband2_Play

		Call			SysReliabilityChk
		Io[Clrwdt]		= Ar

;		Jmp			Sleep_Work
		Jmp			Main_Loop

;-----------------------------------------------------------------------------
Sleep_Work:
		Ar			= Rm[Play_Sub2_Flag]
		Jnz			Cler_Sleep_Time
		Ar			= Rm[Time_Ms]
		Ax			= 0x0100
		Sf			= Ar - Ax
		Jle			Sleep_Work_Exit
		Ar			= 0
		Rm[Time_Ms]		= Ar

;		Pch			= SpiFlash_Deep_Powerdown	;;有flash时，要做深度睡眠
;		Lcall			SpiFlash_Deep_Powerdown
		;;-------------------------------------------------------------------
#ifdef		DAC_Output
		Clr 			IO[MISC].B4               	 ;DAC Mute On
Wait_Dac_Mute:
		Io[Clrwdt]		= Ar
		Ar			= Rm[Time_Ms]
		Ax			= 0x0040
		Sf			= Ar - Ax
		Jle			Wait_Dac_Mute
#else
#endif
		Close_Dac_Output
		Ar			= 0
		IO[DACL]		= Ar
		IO[DACL]		= Ar
		IO[DACL]		= Ar
		IO[DACL]		= Ar
		Ar			= 0
		Rm[Time_Ms]		= Ar
		;;-------------------------------------------------------------------
		DSI			Int2
		DSI			Int0
		DSI
		Nop
		Halt
Cler_Sleep_Time:
		Ar			= 0
		Rm[Time_Ms]		= Ar
Sleep_Work_Exit:
		Jmp			Main_Loop

;-----------------------------------------------------------------------------
SysReliaBilityChk:
		Ar			= Rm[RAM0]
		Sf			= Ar - 0x0007
		Jnz			SysReliaBilityChk	; Wait For Watch-Dog Reset
		Ar			= Rm[RAM1]
		Sf			= Ar - 0x0006
		Jnz			SysReliaBilityChk	; Wait For Watch-Dog Reset
		Rets
;-----------------------------------------------------------------------------
; Include files
;-----------------------------------------------------------------------------
#Include		"Sdsp_HwConFig.Asm"
#Include		"Isr_Pack.Asm"
#Include		"ScanKey.Asm"
#Include		"Touch_Key.asm"
#Include		"Sdsp_Play_Sub2.Asm"
;-----------------------------------------------------------------------------
.Data
;-----------------------------------------------------------------------------
; Macro
;-----------------------------------------------------------------------------
LED_ON		MACRO
#ifdef _MSPEECHDSP_
		CLR			IO[PortCI].b0
#else
		SET			IO[PortCI].b2
#endif
		ENDM
;-----------------------------------------------------------------------------
LED_OFF		MACRO
#ifdef _MSPEECHDSP_
		SET			IO[PortCI].b0
#else
		CLR			IO[PortCI].b2
#endif
		ENDM
;-----------------------------------------------------------------------------