;;******************************************************************************
;;******************************************************************************
#Define		_Sram_Size_	0X0C00			;;3K Sram To Rm,  1K Sram To Pm.
#Define		_Stack_Size_	0x0040			;;堆栈缓存区大小
#Define		_BANK0_		0x0000			;;
#Define		_BANK7_              0x0007			;;
#Define		Stack_Size_Set	_Stack_Size_-1           	;;堆栈
#Define		Sram_Size_Set	_Sram_Size_-1       	;;SRAM
;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
Power_On_Int:
		DSI
		NOP
		Call		SetUp_IO		;;设置IO
		Io[Clrwdt]	= Ar
		Call		Ram_Clear		;;清SRAM
		Call		Setup_Other		;;设置其他
		Call		SetUp_Timer		;;设置定时器
		Call		Open_PwmOrDac		;;打开声音输出方式

;		Ar		=_BANK7_		;;中断向量表定义到BANK7
		Ar		=_BANK0_		;;中断向量表定义到BANK0
		Call		VectorTableInit
		Io[Clrwdt]	= Ar

		Call		PowerOnDelay		;;上电延时

		Rets
;;******************************************************************************
;函数名称:SetUp_IO
;功能描述:设置IO的状态
;;******************************************************************************
SetUp_IO:
		;; PortA
		;;----------------------;;Io InPut/OutPut Set
		Ar		= 0x000F		;;PortA[3:0] 1：输出模式 0：输入模式
		Io[IOC_PA]	= Ar
		Ar		= 0x0000
		Io[PORTA]	= Ar		;;输出高低

		Ar		= IOP_PA_PD50K	;;PortA[3:0] pull down 50k 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0x0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PA_PD220K	;;PortA[3:0] pull down 220k 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PA_PD1M	;;PortA[3:0] pull down 1M 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PA_4MA	;;PortA[3:0] 1=输出电流是4mA  0 = 输出16mA
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PA_WLOW	;;PortA[3:0] 1=  0 =
		Io[IOP_IX]	= Ar
		Ar		= 0x0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKEN_PA	;;PortA[3:0] wake up enable   1:enable 0:disable
		Io[IOP_IX]	= Ar		;;对应相应的bit
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKELV_PA	;;PortA[3:0] 1=上升沿唤醒, 0 = 下降沿唤醒
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		;; PortB
		;;----------------------;;Io InPut/OutPut Set
		Ar		= 0X003F		;;PortB[5:0] 1：输出模式 0：输入模式
		Io[IOC_PB]	= Ar
		Ar		= 0X0000
		Io[PORTB]	= Ar		;;输出高低

		Ar		= IOP_PB_PD50K	;;PortB[5:0]pull down 50k 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PB_PD220K	;;PortB[5:0]pull down 220k 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar
		Ar		= IOP_PB_PD1M	;;PortB[5:0]pull down 1M 1:enable 0:disable
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PB_4MA	;;PortB[5:0] 1=输出电流是4mA  0 = 输出16mA
		Io[IOP_IX]	= Ar
		Ar		= 0x0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PB_WLOW	;PortB[5:0]   1=  0 =
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKEN_PB	;;PortB[5:0]  wake up enable   1:enable 0:disable
		Io[IOP_IX]	= Ar		;;对应相应的bit
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKELV_PB;;PortB[5:0]  1=上升沿唤醒, 0 = 下降沿唤醒
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKEDLV_PB	;;PortB[3:0]]  1= 双沿唤醒
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		;; PortCI
		;;----------------------;;Io InPut/OutPut Set
		Ar		= 0XCFFF		;;PortCI[15:14] PortCI[11:0]
		Io[IOC_PCI]	= Ar			;;1：输出模式 0：输入模式
		Ar		= 0X0000
		Io[PORTCI]	= Ar			;;输出高低

		Ar		= IOP_PCI_PD50K		;;Pull Down 50K 1:Enable 0:Disable
		Io[IOP_IX]	= Ar			;;PortCI[15:14] PortCI
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PCI_PD220K	;;pull down 220k 1:enable 0:disable
		Io[IOP_IX]	= Ar			;;PortCI[15:14] Po0]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PCI_PD1M		;;pull down 1M 1:enable 0:disable
		Io[IOP_IX]	= Ar			;;PortCI[15:14] PortCI[11:0]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PCI_4MA		;;1=输出电流是4mA  0 = 输出16mA
		Io[IOP_IX]	= Ar			;;PortCI[15:14] PortCI[11:0]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_PCI_WLOW		;;1=  0 =
		Io[IOP_IX]	= Ar			;;PortCI[15:14] PortCI[11:0]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKEN_PC		;;wake up enable   1:enable 0:disable
		Io[IOP_IX]	= Ar			;;对觟t
		Ar		= 0X0000		;;PortCI[11:0]
		Io[IOP_DAT]	= Ar

		Ar		= IOP_WAKELV_PC	;;1=上升沿唤醒, 0 = 下降沿唤醒
		Io[IOP_IX]	= Ar			;;PortCI[11:0]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Rets

;;******************************************************************************
;函数名称:Ram_Clear
;功能描述:上电后清除RM,PM和特殊寄存器。同时设置堆栈bp到栈顶
;;******************************************************************************
Ram_Clear:
		Ar		= Stack_Size_Set
		Ax		= StackBuffer
		Ar		= Ar+Ax
		Bp		= Ar

		Ar		= Sram_Size_Set
		Ar		= Ar - 2
		Cx		= Ar
		Ar		= 0X0000
		I1		= 0X0002
CLR_RM:
		Rm[I1++]	= Ar
		Loop		Clr_Rm
		P1.Hh		= 0
		P0.Hh		= 0
		I0		= 0x0000
		I1		= 0x0000
		P0		= 0x0000
		P1		= 0x0000
		Ax		= 0x0000
		Bx		= 0x0000
		Cx		= 0x0000
		Dx		= 0x0000
		R0		= 0x0000
		R1		= 0x0000
		R2		= 0x0000
		R3		= 0x0000
		CBL		= 0x0000
		Ar		= 0x0000

		Io[MISC3]	= Ar
		Io[MISC4]	= Ar
		Io[MISC5]	= Ar
		Ar		= 0x0000
 		Io[DACL]	= Ar		;  // output DAC L FIFO 0
 		Io[DACL]	= Ar		;  // output DAC L FIFO 1
		Io[DACL]	= Ar		;  // output DAC L FIFO 2
 		Io[DACL]	= Ar		;  // output DAC L FIFO 3

		Ar		= 0x0000
		FLTI		= Ar
		FLTI		= Ar
		FLTI		= Ar
		FLTI		= Ar
		FLTA		= Ar
		Ar		= 0x003F
		FLTG		= Ar
		Ar		= 0x1FFF
		FLTP		= Ar
		Ar		= FLTO		;// INitial Filter State
		Ar		= 0
		Rets

;;******************************************************************************
;函数名称:SetUp_Other
;功能描述:设置其他
;;******************************************************************************
Setup_Other:
		Ar		= 0xDB3F
		Io[Enc_Dat]	= Ar
		Ar		= 0x8A17
		Io[Enc_Dat]	= Ar
		Rets
;;******************************************************************************
;函数名称:SetUp_Timer
;功能描述:设置定时器的状态
;;******************************************************************************
SetUp_Timer:
		AR		= IOP_Timer1		;Timer1 Set
		IO[IOP_IX]	= AR
		AR		= 0X07FF		;16k 	32768k/ (16k) - 1=7FF
		IO[IOP_DAT]	= AR
		;;-------------------------------------------------------;Timer2 Set
		AR		= IOP_Timer2		;
		IO[IOP_IX]	= AR
		AR		= 0X7FFF		;1K 	32768k/ (8k) - 1 =7FFF
		IO[IOP_DAT]	= AR

		Ar		= IOP_RTC32K		;设置定时器RTC32K
		Io[IOP_IX]	= Ar
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar

		Ar		= IOP_FetchCNT		;设置关联CP的定时器
		Io[IOP_IX]	= Ar			;[1:0]=[Fetch_Timer2:Fetch_Timer1]
		Ar		= 0X0000
		Io[IOP_DAT]	= Ar
		Rets

;;******************************************************************************
;函数名称:Open_PwmorDac
;功能描述:打开声音输出方式
;;******************************************************************************
Open_PwmorDac:
/*
#Ifdef		DAC_Output
                	Clr 		IO[MISC].B9                	;PWM Disable
                	Set 		IO[MISC].B6                	;DAC Enable
                	Set 		IO[MISC].B4                	;DAC Mute Off
		Set		IO[MISC4].B14
#Else
                	Clr 		IO[MISC].B6                	;DAC Disable
		Set 		IO[MISC].B9                	;PWM Enable
#Endif
		Rets*/
#ifdef	_MSPEECHDSP_
#ifdef	DAC_Output
		SET		IO[MISC].B6		;DAC Enable
		CLR		IO[MISC].B9		;PWM Disable
		SET		IO[MISC].B4		;DAC Mute off
		AR		= 0x4000		;DAC Gain
		IO[MISC4]	= AR			;MISC4 = 0X19
#else
		CLR		IO[MISC].B6		;DAC Disable
		SET		IO[MISC].B9		;PWM Enable
		CLR		IO[MISC].B5		;PWM Mute off
#endif	// DAC_Output
#endif	// _MSPEECHDSP_
#ifdef	_MSPEECHDSP2_
		; PWM Output
		; MISC |= PWMEN | MODX;
		SET		IO[MISC].b9
		SET		IO[MISC].b8
#endif	// _MSPEECHDSP2_
		RETS

;;******************************************************************************
Macro 		Close_Dac_Output
		Clr 		IO[MISC].B6
		Clr 		IO[MISC].B9                	;PWM Disable
Endm
;;******************************************************************************
;;******************************************************************************
;Function	:VectorTableInit
;Input	:AR=BANK, bank是指中断需要在那个bank执行,
;	=0:在bank0执行
;	=7:在bank7执行
;	初始化中断向量表，可配置它在那个bank执行　
;;******************************************************************************
VectorTableInit:
		DSI
		Nop
		PCB		= Ar
		SET		IO[STATUS].B13          	;Enabled Intvect Change
		Cx		= 0X05
		P1.HH		= 0
		P1		= #T_Vector_Access_Addr
Init_Intvecttable_Lp:
		Ar		= Pm[P1++]
		Io[Intvect]	= Ar			;<---此条指令会参考PCB的值
		Loop		Init_Intvecttable_Lp
		CLR		IO[STATUS].B13
		PCB		= 0
		ENI
		Rets

;;******************************************************************************
T_Vector_Access_Addr:
DW		#L_INTVB5_ENTRY
DW		#L_INTVB4_ENTRY
DW		#L_INTVB3_ENTRY
DW		#L_INTVB2_ENTRY
DW		#L_INTVB1_ENTRY
DW		#L_INTVB0_ENTRY


;;******************************************************************************
;;******************************************************************************
;函数名称:PowerOndelay
;功能描述:上电做延时，使IC稳定后开始工作
;Delay 100Ms
;;******************************************************************************
PowerOnDelay:
		Ar		= 0X0064		;;100
		Call		Delay_Ms()
		Rets

;;*******************************************************************************
;;Delay Ms()
;;*******************************************************************************
Delay_Ms():
		Push		Cx
		Cx		= Ar
		Cx--
Delay_Ms()_Loop:
		Ar		= 0X03E8		;;1000us
		Call		Delay_Us()
		Loop		Delay_Ms()_Loop
Delay_Ms()_Exit:
		Pop		Cx
		Rets
;;*******************************************************************************
;;Base 8M, Delay Us()
;;*******************************************************************************
Delay_Us():
		Push		Cx
		Cx		= Ar
		Cx--
Delay_Us()_Loop:
		Nop
		Nop
		Nop
		Nop
		Nop

		Nop
		Io[Clrwdt]	= Ar
		Loop		Delay_Us()_Loop
		Pop		Cx
		Rets

;;******************************************************************************
;;******************************************************************************
;;Copy_Bank0_To_Bank7
;;Input	:	Ar	= #Bank0被复制代码的开始地址
;;从Bank7的0地址开始复制 1K内容
;;******************************************************************************
Copy_Bank0_To_Bank7:
		P0		= Ar
		P0.HH		= 0
		P1		= 0
		P1.HH		= 7				;// Bank7 = 1K
		Cbl		= 0
		CX		= 0X03FF
Bank7_Copy_Lp:
		Io[CLRWDT]	= Ar
		Ar		= Pm[P0++]
		Pm[P1++]	= Ar
		Loop		Bank7_Copy_Lp
		P1.HH		= 0
		P1		= 0
		Rets
;;******************************************************************************
;;******************************************************************************
;;Copy_Bank0_To_Bank7
;;Input	:	P0	= #Bank0被复制代码的开始地址
;;		Ar	= #Bank0被复制代码的结束地址
;;		P1	= #Bank7 粘贴地址
;;从Bank7的P1地址 复制 Cx条内容
;;******************************************************************************
MoveProgToBank2:
		Cbl		= 0
		P1.Hh		= 7				;// Bank7 = 1K
		P0.Hh		= 0
		Ar		= Ar - P0
		Cx		= Ar
		Cx--
MoveProgToBank2_Loop:
		Ar		= Pm[P0++]
		Pm[P1++]	= Ar
		Loop		MoveProgToBank2_Loop
		P1.Hh		= 0
		P1		= 0
		Rets
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************