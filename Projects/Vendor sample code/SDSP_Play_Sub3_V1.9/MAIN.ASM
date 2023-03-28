;-----------------------------------------------------------------------------
;	DSP Series Demo Code , TRITAN Technology Inc.
;	@File		SFDSP_Play_Sub3_V1.9
;	@Brief		How To Play Sub2 / 3
;	@Version	1.9
;	@Author		Jin
;-----------------------------------------------------------------------------
;	Remark:
;	按键说明：
;	SFDSP如下
;	PA0:	Next MarkNum
;	PA1:	Next/Stop
;	PA2:	Resume_pla
;-----------------------------------------------------------------------------
;	Change History:
;	<Date>		<Version>	<Author>	<Description>
;-----------------------------------------------------------------------------
;	2020/04/10	1.3		Marky		Initial Version
;	2020/06/18	1.4		Marky		Upgrade Sub3 Obj To V05
;	2020/08/11	1.5		Marky		Support 128/127/256/512
;	2020/12/30	1.6		Marky		Upgrade Sub3 Obj To V06
;	2020/05/19	1.7		Wall		Upgrade Sub3 Obj To V08, Add Marknum Jump
;	2021/06/29	1.8		Jin		Modify the logic of Sub3 Jump Mark In Spi_Flash
;							Add The New Function (Sub3_Resume_play)
;	2021/09/15	1.9		Jin		Modify noise issue after power-on in DAC mode.
;							To avoid Spi first data error issue
;-----------------------------------------------------------------------------
;RM[MarkNum]						;;Mark点序号
;在使用MARK点跳跃功能请注意:
;（请配套使用V6.5版本以上的TSP软件，进行转码时勾选Add Mark info 点击Show mark info进行mark点设置）
;-----------------------------------------------------------------------------
;需要先通过改变RM[MarkNum]寄存器的值，再调用SelectPlayMark模块实现*当前歌曲的播放*内设MARK点的跳跃
;			AR		= 0x0002
;			RM[MarkNum]	= AR
;			CALL		SelectPlayMark
;	PS:
;		此功能的添加不影响原sub3播放的调用模块，《mark点跳跃仅支持TFB文件》，且歌曲播放要提前打开。
;例如要直接从第二首歌的第三个mark点开始播放,程序如下:
;			Ar		= 1
;			Rm[Sub3_Idx]	= Ar			//选择第二首歌
;			Pch		= Play_Sub3_Start
;			Lcall		Play_Sub3_Start
;			AR		= 0x0003		//选择该歌曲的第三个mark点
;			RM[MarkNum]	= AR
;			CALL		SelectPlayMark
;-----------------------------------------------------------------------------
;#define			 DAC_Output		;;打开为DAC输出,16127/FDSP没有硬件DAC,会改为PWM转15bit DAC输出；
;#define			_Pwm_To_Dac_		;;若为非TRSF16127   若要使用PWM_TO_DAC 请打开DAC_Output&_Pwm_To_Dac_
;-----------------------------------------------------------------------------
#include		"Common.Inc"
#include		"General.Inc"
;-----------------------------------------------------------------------------
#ifdef	DAC_Output
	;;//FDSP 801/064/032/900B和SFDSP 127没有硬件DAC输出，可以选择PWM软件转DAC
	#ifdef	_MFDSP_||_OPT_TRSF16127B_||_OPT_TRSF16127A_
		#define		_Pwm_To_Dac_
	#endif
#endif
;;******************************************************************************
;;******************************************************************************
;;外部Flash档案放在\BIN_DATA\SPI_FLASH\XXX.BIN
;;******************************************************************************
//#define		Use_Spi_Flash	;;定义是否有外挂SPI	Flash
//#define		Sub3_In_Spi	;;定义声音放外部Flash
;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
		ORG			0000H
RSTB_ENTRY:						;	System program entry
		PCH			= SYS_PROG_ENTRY
		LJMP			SYS_PROG_ENTRY
		ORG			0004H
WAKEUP_ENTRY:						;	Wake up	entry
		PCH			= WAKEUP_PROC
		LJMP			WAKEUP_PROC

;;******************************************************************************
;;		*Main	Program	Start*
;;******************************************************************************
		ORG			0100H
SYS_PROG_ENTRY:
		Pch			= Power_On_Int
		Lcall			Power_On_Int		;;IC上电初始化

#Ifdef		Use_Spi_Flash
		Pch			= SpiFlash_PowerOn_Int
		Lcall			SpiFlash_PowerOn_Int
#Endif
		Pch			= Scan_Key_Init
		Lcall			Scan_Key_Init		;;按键IO上电初始化
		Pch			= Sub3_Vectortableinit
		Lcall			Sub3_Vectortableinit	;;Sub3中断向量表新定义
		;;-------------------------------------------------------------
#ifdef 		_Pwm_To_Dac_
		Pch			= Dac_Up_Start
		Lcall			Dac_Up_Start		;;Dac	Ramp Up	Start
#Endif
		;;-------------------------------------------------------------
		Ar			= 0
		Rm[Sub3_Idx]		= Ar			//选择第一首歌
		Pch			= Play_Sub3_Start
		Lcall			Play_Sub3_Start

		ENA			INT2
		ENA			INT0
		ENI

		SET			IO[IOC_PA].B0

		Jmp			Main_Loop
WAKEUP_PROC:
#Ifdef		Use_Spi_Flash
		Pch			= SpiFlash_PowerOn_Int
		Lcall			SpiFlash_PowerOn_Int
#Endif
		Pch			= Open_PwmOrDac
		Lcall			Open_PwmOrDac		;;打开声音输出方式
		;;-------------------------------------------------------------
		Pch			= Dac_Up_Start
		Lcall			Dac_Up_Start		;;Dac	Ramp Up	Start
		;;-------------------------------------------------------------
		ENA			INT2
		ENA			INT0

		ENI

		Jmp			Main_Loop

;;******************************************************************************
;;******************************************************************************
Main_Loop:

		Call			Scan_Key

		Pch			= Play_Sub3
		Lcall			Play_Sub3		;;Play Sub3

		Pch			= SaveFrameNumFun
		Lcall			SaveFrameNumFun


		Call			SysReliabilityChk
		Io[Clrwdt]		= Ar
		Jmp			Sleep_Work
		Jmp			Main_Loop

;;******************************************************************************
;;******************************************************************************
Sleep_Work:
		Ar			= Rm[Play_Sub3_Flag]
		Jnz			Cler_Sleep_Time
		Ar			= Rm[Time_Ms]
		Ax			= 0x0100
		Sf			= Ar - Ax
		Jle			Sleep_Work_Exit
		Ar			= 0
		Rm[Time_Ms]		= Ar

#ifdef		Use_Spi_Flash
		Pch			= SpiFlash_Wait_Ready	;;等待Flash空闲
		Lcall			SpiFlash_Wait_Ready
		Pch			= Spiflash_Deep_Powerdown	;;有Flash时，要做深度睡眠
		Lcall			Spiflash_Deep_Powerdown
#endif
		;;-------------------------------------------------------------------
#ifdef 		_Pwm_To_Dac_
		Pch			= Dac_Down_Start
		Lcall			Dac_Down_Start		;;Dac	Ramp Down	Start
#endif
		;;-------------------------------------------------------------------
		Pch			= Close_Pwm_Or_Dac
		Lcall			Close_Pwm_Or_Dac
		;;-------------------------------------------------------------------
		Ar			= 0
		Rm[Time_Ms]		= Ar
		;;-------------------------------------------------------------------
		DSI			Int2
		DSI			Int0
		DSI
		NOP

		Halt
Cler_Sleep_Time:
		Ar			= 0
		Rm[Time_Ms]		= Ar
Sleep_Work_Exit:
		Jmp			Main_Loop


;;******************************************************************************
;;******************************************************************************
SysReliaBilityChk:
		Ar			= Rm[RAM0]
		Sf			= Ar - 0x0007
		Jnz			SysReliaBilityChk	;	Wait For Watch-Dog Reset
		Ar			= Rm[RAM1]
		Sf			= Ar - 0x0006
		Jnz			SysReliaBilityChk	;	Wait For Watch-Dog Reset
		Rets
;;******************************************************************************
;;******************************************************************************
#include		"Sdsp_HwConFig.Asm"
#include		"Dac_Ramp.Asm"
#include		"Isr_Pack.Asm"
#include		"ScanKey.Asm"
#ifdef			Use_Spi_Flash
#include		"Sdsp_Hw_Spi.Asm"	;;硬件SPI驱动
;#include		"M_SpiFlash_Gpio.Asm"	;;IO模拟SPI驱动
#endif
;;******************************************************************************
;;******************************************************************************
#include		"SDSP_Play_Sub3.Asm"
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************
#ifdef		Sub3_In_Spi
;;如果音源放外部，内部可不放音源
#else
.DATA
Sub3_Adr_Tab:
Dw	1					;;歌曲总数
;;	格式,播放次数,低地址	,	高地址
Dw	0x0002, 0x0000, #Sub3_Adr_01, #Sub3_Adr_01.H
;Dw	0x0002, 0x8000, #Sub3_Adr_02, #Sub3_Adr_02.H
;Dw	0x0002, 0x8000, #Sub3_Adr_03, #Sub3_Adr_03.H
;Dw	0x0002, 0x8000, #Sub3_Adr_04, #Sub3_Adr_04.H
;Dw	0x0002, 0x8000, #Sub3_Adr_05, #Sub3_Adr_05.H
;Dw	0x0002, 0x8000, #Sub3_Adr_06, #Sub3_Adr_06.H
;Dw	0x0002, 0x8000, #Sub3_Adr_07, #Sub3_Adr_07.H
;-----------------------------------------------------------------------------------------
/*
0x0002:表示是sub3格式；
播放次数：0X0000表示播放一次，0x0001表示循环播放2次，以此类推到0x0FFF
;0x8000表示一直Loop；
*/
;-----------------------------------------------------------------------------------------
Sub3_Adr_01:
	Dw	"Sub3/demo@33K6bps.T3Z"
;Sub3_Adr_02:
;	Dw	"Sub3/测试音源@8K6bpsM0004.TFB"
;Sub3_Adr_03:
	;Dw	"Sub3/hum_03.TLB"
;Sub3_Adr_04:
	;Dw	"Sub3/x4P.TLB"
;Sub3_Adr_05:
	;Dw	"Sub3/x5P.TLB"
;Sub3_Adr_06:
	;Dw	"Sub3/hum_01.TLB"
;Sub3_Adr_07:
	;Dw	"Sub3/x3P.TLB"
#endif
;*******************************************************************************
;*******************************************************************************