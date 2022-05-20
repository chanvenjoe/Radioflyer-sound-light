;;******************************************************************************
;;******************************************************************************
.CODE
;;******************************************************************************
;;=====================================;;
Macro		Iop_Write	Index, Data
		Ar		= Index		;;I/O Index
		Io[Iop_Ix]	= Ar
		Ar		= Data		;;I/O Data
		Io[Iop_Dat]	= Ar
		Endm
;;=====================================;;
Macro		Iop_Read	Index
		Ar		= Index		;;I/O Index
		Io[Iop_Ix]	= Ar
		Ar		= Io[Iop_Dat]
		Endm
;;=====================================;;
;;******************************************************************************
;;******************************************************************************
Power_On_Int:
		Dsi
		Nop
		Io[Clrwdt]	= Ar
		Call		Open_PwmOrDac		;;打开声音输出方式
		Call		Clr_Pwm_Data		;;清零DACL

		Call		SetUp_IO		;;设置IO
		Call		Ram_Clear		;;清SRAM
		Call		Open_LDO		;;FDSP 开启LDO v330 =2.9V
		Call		PowerOnDelay		;;上电延时100Ms

		Call		SetUp_IO		;;设置IO
		Call		Ram_Clear		;;清SRAM
		Call		Open_LDO		;;FDSP 开启LDO v330 =2.9V
		Call		PowerOnDelay		;;上电延时100Ms

;		Ar		= RamBank		;;中断向量表定义到BANK2/7/15
		Ar		=_BANK0_		;;中断向量表定义到BANK0
		Call		VectorTableInit
;		Call		Remove_Write_Protection	;;去掉写保护，允许擦写
		Call		SetUp_Timer		;;设置定时器
		Rets

;;******************************************************************************
;函数名称:Clr_Pwm_Data:
;功能描述:清零DACL
;;******************************************************************************
Clr_Pwm_Data:
		Ar		= 0
		Io[DACL]	= Ar			;  // output DAC L FIFO 0
		Io[DACL]	= Ar			;  // output DAC L FIFO 1
		Io[DACL]	= Ar			;  // output DAC L FIFO 2
		Io[DACL]	= Ar			;  // output DAC L FIFO 3
		Rets

;;******************************************************************************
;;******************************************************************************
;函数名称:SetUp_IO
;功能描述:设置IO的状态
;;******************************************************************************
SetUp_IO:
		;; PortA----------------------;;Io InPut/OutPut Set
		Ar		= 0x003F	;;PortA[5:0] 1：输出模式 0：输入模式
		Io[IOC_PA]	= Ar
		Ar		= 0x0000
		Io[PORTA]	= Ar		;;输出高低

		;; PortB----------------------;;Io InPut/OutPut Set
		Ar		= 0X003F	;;PortB[5:0] 1：输出模式 0：输入模式
		Io[IOC_PB]	= Ar
		Ar		= 0X0000
		Io[PORTB]	= Ar		;;输出高低
		;; PortCI----------------------;;Io InPut/OutPut Set
		Ar		= 0XCFFF	;;PortCI[15:14] PortCI[11:0]
		Io[IOC_PCI]	= Ar		;;1：输出模式 0：输入模式
		Ar		= 0X0000
		Io[PORTCI]	= Ar		;;输出高低
;;===================================;;Io  pull down Set
#ifdef 		_MFDSP_		;;//F064/032
		Ar		= 0X0000	;;PortA[5:0] pull down 50k 1:enable 0:disable
		Io[PUPD_PA]	= Ar
		Ar		= 0X0000	;;PortB[5:0]pull down 50k 1:enable 0:disable
		Io[PUPD_PB]	= Ar
		Ar		= 0X0000	;;Pull Down 50K 1:Enable 0:Disable
		Io[PUPD_PC]	= Ar

#else
		;; ----------------------PortA
		Iop_Write	IOP_PA_PD50K,0X0000	;;PortA[3:0] Pull Down 50K 1:Enable 0:Disable
		Iop_Write	IOP_PA_PD220K,0X0000	;;PortA[3:0] pull down 220k 1:enable 0:disable
		Iop_Write	IOP_PA_PD1M,0X0000	;;PortA[3:0] pull down 1M 1:enable 0:disable

		;; ----------------------PortB
		Iop_Write	IOP_PB_PD50K,0X0000	;;PortB[5:0]pull down 50k 1:enable 0:disable
		Iop_Write	IOP_PB_PD220K,0X0000	;;PortB[5:0]pull down 220k 1:enable 0:disable
		Iop_Write	IOP_PB_PD1M,0X0000	;;PortB[5:0]pull down 1M 1:enable 0:disable

		;; ----------------------PortCI
		Iop_Write	IOP_PCI_PD50K,0X0000	;;Pull Down 50K 1:Enable 0:Disable
		Iop_Write	IOP_PCI_PD220K,0X0000	;;Pull Down 220K 1:Enable 0:Disable
		Iop_Write	IOP_PCI_PD1M,0X0000	;;Pull Down 1M 1:Enable 0:Disable
#endif
;;=========================================;;Io Wake Up Set
		Iop_Write	IOP_WAKEN_PA,0X0000	;;PortA[3:0] Wake Up Enable   1:Enable 0:Disable
		Iop_Write	IOP_WAKELV_PA,0X0000	;;PortA[3:0] 1=上升沿唤醒, 0 = 下降沿唤醒

		Iop_Write	IOP_WAKEN_PB,0X0000	;;PortB[5:0]  Wake Up Enable   1:Enable 0:Disable ;;对应相应的bit
		Iop_Write	IOP_WAKELV_PB,0X0000	;;PortB[5:0]  1=上升沿唤醒, 0 = 下降沿唤醒
		Iop_Write	IOP_WAKEDLV_PB,0X0000	;;PortB[3:0]] 1= 双沿唤醒

		Iop_Write	IOP_WAKEN_PC,0X0000	;;Wake Up Enable   1:Enable 0:Disable;;PortCI[11:0]
		Iop_Write	IOP_WAKELV_PC,0X0000	;;1=上升沿唤醒, 0 = 下降沿唤醒 ；PortCI[11:0]
		Rets

;;******************************************************************************
;函数名称:Ram_Clear
;功能描述:上电后清除RM,PM和特殊寄存器。同时设置堆栈bp到栈顶
;;******************************************************************************
Ram_Clear:
		Ar		= Stack_Size_Set
		Ax		= StackBuffer
		Ar		= Ar+Ax
		Bp		= Ar			;;堆栈指针设定

		Ar		= Sram_Size_Set
		Ar		= Ar - 2
		Cx		= Ar
		Ar		= 0X0000
		I1		= 0X0002
CLR_RM:
		Rm[I1++]	= Ar
		Loop		Clr_Rm
		Io[Clrwdt]	= Ar

		P1.Hh		= 0
		P0.Hh		= 0
		PCB		= 0
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
		;;--------------------------------------------;;Filter Clr
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
		Io[STATUS]	= Ar
		Io[Real_T]	= Ar		;Reset Realt

#ifdef 		_MSPEECHDSP_			;;//SF16128
		Ar		= 0
		Io[MISC2]	= Ar
		Io[MISC3]	= Ar
		Io[MISC4]	= Ar
		Io[MISC5]	= Ar
#endif
#ifdef 		_MSPEECHDSP2_			;;//SF16127/512/256
		Ar		= 0
		Io[MISC3]	= Ar
		Io[MISC4]	= Ar
		Io[MISC5]	= Ar
#endif
		Rets

;;******************************************************************************
;;******************************************************************************
;Function	:FDSP 开启LDO v330 =2.9V
;Input	:
;;******************************************************************************
Open_LDO:
#ifdef		_MFDSP_		;;//F064/032
		Set		Io[MISC].B8	;Tcs(B8=1): Realt Is 32bIt&Baseon 31.25Ns
		Set		Io[MISC].B9	;Open LDO 3.3V
#endif
		Rets
;;******************************************************************************
;;******************************************************************************
;Function	:VectorTableInit
;Input	:AR=BANK, bank是指中断需要在那个bank执行,
;	=0:在bank0执行
;	=2:在bank2执行
;	=7:在bank7执行
;	初始化中断向量表，可配置它在那个bank执行　
;;******************************************************************************
VectorTableInit:
		DSI
		Nop
		PCB		= Ar
		SET		IO[STATUS].B13		;Enabled Intvect Change
		P1.HH		= 0

#ifdef 		_MFDSP_		;;//F064/032
		Cx		= 0x0F
		P1		= #T_Vector_Access_Addr_16
#else
		Cx		= 0X05
		P1		= #T_Vector_Access_Addr_6
#endif
Init_Intvecttable_Lp:
		Ar		= Pm[P1++]
		Io[Intvect]	= Ar			;<---此条指令会参考PCB的值
		Loop		Init_Intvecttable_Lp
		CLR		IO[STATUS].B13
		PCB		= 0
		ENI
		Rets

;;******************************************************************************
T_Vector_Access_Addr_16:
DW		#L_INTVB15_ENTRY
DW		#L_INTVB14_ENTRY
DW		#L_INTVB13_ENTRY
DW		#L_INTVB12_ENTRY
DW		#L_INTVB11_ENTRY
DW		#L_INTVB10_ENTRY
DW		#L_INTVB9_ENTRY
DW		#L_INTVB8_ENTRY
DW		#L_INTVB7_ENTRY
DW		#L_INTVB6_ENTRY
T_Vector_Access_Addr_6:
DW		#L_INTVB5_ENTRY
DW		#L_INTVB4_ENTRY
DW		#L_INTVB3_ENTRY
DW		#L_INTVB2_ENTRY
DW		#L_INTVB1_ENTRY
DW		#L_INTVB0_ENTRY
;;******************************************************************************
;函数名称:Remove_Write_Protection
;功能描述:去掉写保护，允许擦写
;;******************************************************************************
Remove_Write_Protection:
#ifdef 		_MFDSP_			;//FDSP 801/064/032/900B
#else
		Ar		= 0xDB3F
		Io[Enc_Dat]	= Ar
		Ar		= 0x8A17
		Io[Enc_Dat]	= Ar
#endif
		Rets
;;******************************************************************************
;函数名称:Open_Write_Protection
;功能描述:打开写保护，禁止擦写
;;******************************************************************************
Open_Write_Protection:
#ifdef 		_MFDSP_			;//FDSP 801/064/032/900B
#else
		AR		= 0x0000
		Io[Enc_Dat]	= AR
		AR		= 0x0000
		Io[Enc_Dat]	= AR
#endif
		Rets

;;******************************************************************************
;函数名称:SetUp_Timer
;功能描述:设置定时器的状态
;;******************************************************************************
SetUp_Timer:
#ifdef 		_MFDSP_		;;//F064/032
		;Timer1/2 Config
		;Write Io[Iop_Prescale]:	Config Clock Source.
		;Timer1_Trig_Sel[1:0] 	Assign To [B5:B4]   =00B,  Clock Source From 32.768Mhz
		;Timer1_Prescale[3:0] 	Assign To [B3:B0]   =1010B, Timer1 Clock:32.768M/8=4096Khz
		;Timer2_Trig_Sel[1:0] 	Assign To [B13:B12] =00B,  Clock Source From 32.768Mhz
		;Timer2_Prescale[3:0] 	Assign To [B11:B8]  =1110B, Timer2 Clock:32.768M/128=256Khz
		;;------------------------------------------------------------;
		Iop_Write	Iop_Prescale, 0x0000
#else
		;;------------------------------------------------------------;;设置关联CP的定时器
		Iop_Write	IOP_FetchCNT, 0x0000	;[1:0]=[Fetch_Timer2:Fetch_Timer1]
#endif
		;;------------------------------------------------------------;Timer1 Set
		Iop_Write	IOP_Timer1, 0x07FF	;16k 	=32768k/ (16k) - 1=7FF
		;;------------------------------------------------------------;Timer2 Set
		Iop_Write	IOP_Timer2, 0x7FFF	;1K 	=32768k/ (1k) - 1 =7FFF
		;;------------------------------------------------------------;RTC 32K Set
		Iop_Write	IOP_RTC32K, 0xFFFF	;1Hz	=32768Hz/1Hz - 1 =7FFF
		Rets
;;******************************************************************************
;函数名称:Open_PwmorDac
;功能描述:打开声音输出方式
;;******************************************************************************
Open_PwmorDac:
#ifdef		_MFDSP_
		Set		Io[MISC].B10		;;MODX=0 选择窄频带声音滤波器
							;;MODX=1 选择宽频带声音滤波器
#else
		Set		Io[MISC].B8		;;MODX=0 is chosen narrowband sound-effect filter
							;;MODX =1 is chosen wideband sound-effect filter.
							;;Actual bandwidth is dependent on source signal sample-rate
#endif
;;----------------------------------------------------------------------------------;;
#ifdef		Dac_Output
	#ifdef 	_Pwm_To_Dac_				; false DAC
		Dac_Out_Disable
		Dac_Mute_On

		Pwm_Out_Enable
		Pwm_Mute_Off
	#else						; true DAC
		Pwm_Out_Disable
		Pwm_Mute_On

		Dac_Out_Enable
		Dac_Mute_Off
	#endif
#else
		Dac_Out_Disable
		Dac_Mute_On

		Pwm_Out_Enable
		Pwm_Mute_Off
#endif

		Rets

;;******************************************************************************
;函数名称:Close Pwm Or Dac
;功能描述:打开声音输出方式
;;******************************************************************************
Close_Pwm_Or_Dac:
#ifdef		DAC_Output

	#ifdef 	_Pwm_To_Dac_
		Pwm_Mute_On
		Nop
		Pwm_Out_Disable
	#else
		Dac_Mute_On
		Dac_Out_Disable
	#endif
#else
		Pwm_Mute_On
		Nop
		Pwm_Out_Disable
#endif
		Ar		= 0
		Io[DACL]	= Ar			;;// output DAC L FIFO 0
		Io[DACL]	= Ar			;;// output DAC L FIFO 1
		Io[DACL]	= Ar			;;// output DAC L FIFO 2
 		Io[DACL]	= Ar			;;// output DAC L FIFO 3
		Rets
;;******************************************************************************
;;******************************************************************************
Macro		Pwm_Out_Enable
		Set 		IO[MISC].B9		;;PWM Enable
Endm
;;----------------------------------------------------------------------------------;;
Macro		Pwm_Out_Disable
		Clr 		IO[MISC].B9		;;PWM Disable
Endm
;;----------------------------------------------------------------------------------;;
Macro		Pwm_Mute_On
		Set		Io[MISC].B5		;;Pwm Mute On
Endm
;;----------------------------------------------------------------------------------;;
Macro		Pwm_Mute_Off
		Clr		Io[MISC].B5		;;Pwm Mute Off
Endm
;;******************************************************************************
Macro		Dac_Out_Enable
	#ifdef	_MFDSP_
	#else
		#ifdef	_Opt_Trsf16127B_||_Opt_Trsf16127A_;;127
		#else
		;;	DAC Gain set:[ b12,b14]=0, DAC Gain=1
				Clr	Io[MISC4].B12		;Dac Gain(1~8)
				Clr	Io[MISC4].B13		;Dac Gain
			Clr	Io[MISC4].B14			;Dac Gain

			Set	IO[MISC].B6			;DAC Enable
		#endif
	#endif
Endm
;;----------------------------------------------------------------------------------;;
Macro		Dac_Out_Disable
	#ifdef	_MFDSP_
	#else
		#ifdef	_Opt_Trsf16127B_||_Opt_Trsf16127A_;;127
		#else
			Clr	IO[MISC].B6			;DAC Disable
		#endif
	#endif
Endm
;;----------------------------------------------------------------------------------;;
Macro		Dac_Mute_On
	#ifdef	_MFDSP_
	#else
		#Ifdef	_Opt_Trsf16127B_||_Opt_Trsf16127A_;;127
		#Else
			Clr	IO[MISC].B4		;;DAC Mute On
		#Endif
	#Endif
Endm
;;----------------------------------------------------------------------------------;;
Macro		Dac_Mute_Off
	#ifdef	_MFDSP_
	#else
		#ifdef	_Opt_Trsf16127B_||_Opt_Trsf16127A_	;;127
		#else
			Set	IO[MISC].B4		;;DAC Mute On
		#endif
	#endif
Endm
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************
;函数名称:PowerOndelay
;功能描述:上电做延时，使IC稳定后开始工作
;Delay 100Ms
;;******************************************************************************
PowerOnDelay:
		Ar		= 0x0064		;;100
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
		Ar		= 0X03E7		;;1000us
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
		Io[Clrwdt]	= Ar
;;==============================
#if	_Opt_Bank0Speed_ == 4
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 6
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 8
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 11
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 12
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 13
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
#if	_Opt_Bank0Speed_ == 16
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
		Nop
#endif
;;==============================
		Loop		Delay_Us()_Loop
		Pop		Cx
		Rets

;;******************************************************************************
;;******************************************************************************
;;Copy_1K_Bank0_To_Pram_Bank
;;Input	:	Ar	= #Bank0被复制代码的开始地址
;;从Pram_Bank的0地址开始复制 1K内容
;;******************************************************************************
Copy_1K_Bank0_To_Pram_Bank:
		Cbl		= 0
		Io[Clrwdt]	= Ar

		P0		= Ar
		P0.HH		= 0
		P1		= 0
		P1.HH		= PH_H			;;PH_H=_OPT_PRAMBank_
		CX		= 0x03FF		;// Pram_Bank = 1K
Copy_1K_Bank0_Lp:
		Ar		= Pm[P0++]
		Pm[P1++]	= Ar
		Loop		Copy_1K_Bank0_Lp
		P1.HH		= 0
		Rets
;;******************************************************************************
;;******************************************************************************
;;Copy_Bank0_To_Pram_Bank
;;Input	:	P0	= #Bank0被复制代码的开始地址
;;		Ar	= #Bank0被复制代码的结束地址
;;		P1	= #Pram_Bank 粘贴的起始地址
;;从Pram_Bank的P1地址 复制 Cx条内容
;;******************************************************************************
Copy_Bank0_To_Pram_Bank:
		Cbl		= 0
		Io[Clrwdt]	= Ar

		P0.Hh		= 0
		P1.Hh		= PH_H		;;PH_H=_OPT_PRAMBank_
		Ar		= Ar - P0	;;结束地址-开始地址=Size
		Cx		= Ar
		Cx--
Copy_Bank0_Lp:
		Ar		= Pm[P0++]
		Pm[P1++]	= Ar
		Loop		Copy_Bank0_Lp
		P1.Hh		= 0
		Rets
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************