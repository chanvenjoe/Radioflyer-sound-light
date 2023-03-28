;;******************************************************************************
#Define	STACK_Size_Set	_STACK_Size_-1		;;��ջ
#Define	SRAM_Size_Set	_Sram_Size_-1		;;SRAM
;;******************************************************************************
#Define		_Sram_Size_	0X0C00	;3K Sram To Rm,  1K Sram To Pm.
;#Define	_Sram_Size_	0X1000	;4K Sram To Rm	;;��ѡһ

#Define		_Stack_Size_	0x0040	;��ջ��������С

#define  	_SRAM_BANK_	RamBank
;-----------------------------------------------------------
;��������:Power_on_init
;��������:�ϵ�IC��ʼ��
;-----------------------------------------------------------
;-----------------------------------------------------------
Power_on_init:
		dsi
		nop
		call		SetUp_IO		;;����IO
		io[Clrwdt]	=ar
		call		PowerOndelay		;;�ϵ���ʱ
		call		Ram_Clear		;;��SRAM
		call		SetUp_IO		;;����IO
		call		SetUp_Timer		;;���ö�ʱ��
		call		On_PWMOrDAC		;;�����������ʽ
		call		SetUp_Other		;;��������
		io[Clrwdt]	=ar
		call		PowerOndelay		;;�ϵ���ʱ
		rets


;-----------------------------------------------------------
;��������:PowerOndelay
;��������:�ϵ���131ms����ʱ��ʹIC�ȶ���ʼ����
;-----------------------------------------------------------
;16M:cx=15;;8M:cx=7;;6M:cx=5;;4M:cx=3;;2M:cx=1;;1M:cx=0;
PowerOndelay:	;;ָ��Ƶ��4M
		push		cx
		cx		=0x0007
;;;;;;;65536*2=131072��ָ��

		ar		=0x0000
	PowerOndelay_Loop:
		ar++
		jnz		PowerOndelay_Loop
		nop
		loop		PowerOndelay_Loop
		pop		cx
		rets

;-----------------------------------------------------------
;��������:SetUp_IO
;��������:����IO��״̬
;-----------------------------------------------------------
SetUp_IO:
		;; PortA
		;;----------------------;;Io InPut/OutPut Set

		ar		=0x000f		;;PortA[3:0] 1�����ģʽ 0������ģʽ
		io[IOC_PA]	=ar
		ar		=0x0000
		io[PORTA]=	ar		;;����ߵ�

		ar		=IOP_PA_PD50K	;;PortA[3:0] pull down 50k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PA_PD220K	;;PortA[3:0] pull down 220k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PA_PD1M	;;PortA[3:0] pull down 1M 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar


		ar		=IOP_PA_4MA	;;PortA[3:0] 1=���������4mA  0 = ���16mA
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PA_WLOW	;;PortA[3:0] 1=  0 =
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_WAKEN_PA	;;PortA[3:0] wake up enable   1:enable 0:disable
		io[IOP_IX]	=ar		;;��Ӧ��Ӧ��bit
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_WAKELV_PA	;;PortA[3:0] 1=�����ػ���, 0 = �½��ػ���
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		;; PortB
		;;----------------------;;Io InPut/OutPut Set

#If		_SPI_Rom_		== 0	;;0��SPI  1��Rom
		ar		=0x0030		;;PortB[5:0] 1�����ģʽ 0������ģʽ
		io[IOC_PB]	=ar
		ar		=0x0000
		io[PORTB]	=ar		;;����ߵ�
		ar		=IOP_PB_PD50K	;;PortB[5:0]pull down 50k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x000f
		io[IOP_DAT]	=ar

		ar		=IOP_PB_PD220K	;;PortB[5:0]pull down 220k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar
		ar		=IOP_PB_PD1M	;;PortB[5:0]pull down 1M 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar


		ar		=IOP_PB_4MA	;;PortB[5:0] 1=���������4mA  0 = ���16mA
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PB_WLOW	;PortB[5:0]   1=  0 =
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_WAKEN_PB	;;PortB[5:0]  wake up enable   1:enable 0:disable
		io[IOP_IX]	=ar		;;��Ӧ��Ӧ��bit
		ar		=0x000f
		io[IOP_DAT]	=ar

		ar		=IOP_WAKELV_PB	;;PortB[5:0]  1=�����ػ���, 0 = �½��ػ���
		io[IOP_IX]	=ar
		ar		=0x000f
		io[IOP_DAT]	=ar


		ar		=IOP_WAKEDLV_PB	;;PortB[3:0]]  1= ˫�ػ���
		io[IOP_IX]	=ar
		ar		=0x000f
		io[IOP_DAT]	=ar


#else
		ar		=0x003b		;;PortB[5:0] 1�����ģʽ 0������ģʽ
		io[IOC_PB]	=ar
		ar		=0x0000
		io[PORTB]	=ar		;;����ߵ�



		ar		=IOP_PB_PD50K	;;PortB[5:0]pull down 50k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0004
		io[IOP_DAT]	=ar

		ar		=IOP_PB_PD220K	;;PortB[5:0]pull down 220k 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar
		ar		=IOP_PB_PD1M	;;PortB[5:0]pull down 1M 1:enable 0:disable
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar


		ar		=IOP_PB_4MA	;;PortB[5:0] 1=���������4mA  0 = ���16mA
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PB_WLOW	;PortB[5:0]   1=  0 =
		io[IOP_IX]	=ar
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_WAKEN_PB	;;PortB[5:0]  wake up enable   1:enable 0:disable
		io[IOP_IX]	=ar		;;��Ӧ��Ӧ��bit
		ar		=0x0004
		io[IOP_DAT]	=ar

		ar		=IOP_WAKELV_PB	;;PortB[5:0]  1=�����ػ���, 0 = �½��ػ���
		io[IOP_IX]	=ar
		ar		=0x0004
		io[IOP_DAT]	=ar


		ar		=IOP_WAKEDLV_PB	;;PortB[3:0]]  1= ˫�ػ���
		io[IOP_IX]	=ar
		ar		=0x0004
		io[IOP_DAT]	=ar

#Endif

		;; PortCI
		;;----------------------;;Io InPut/OutPut Set
		ar		=0xcfff		;;PortCI[15:14] PortCI[11:0]
		io[IOC_PCI]	=ar		;;1�����ģʽ 0������ģʽ
		ar		=0x0000
		io[PORTCI]	=ar		;;����ߵ�


#Define		PCI_PD50k	0X0000

;;;¼��������Ҫ����PCI��ؿڣ�PCI4 PCI5 PCI6 PC7����50k����
;;;ֻ��ͨ���˽�PCI_PD50k������״̬ȥ����¼����IO��������Ӱ���¼���ڵ����á�
;;;����������PCI�ڵ�����������ĳ���PCI_PD50k��
;;;ע��¼���ڣ�PCI4 PCI5 PCI6 PC7����
;;;¼�����������벻��������¼���ر�������������ʡ��

		ar		=IOP_PCI_PD50K	;;pull down 50k 1:enable 0:disable
		io[IOP_IX]	=ar		;;PortCI[15:14] PortCI
		ar		=PCI_PD50k
		io[IOP_DAT]	=ar

		ar		=IOP_PCI_PD220K	;;pull down 220k 1:enable 0:disable
		io[IOP_IX]	=ar		;;PortCI[15:14] Po0]
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PCI_PD1M	;;pull down 1M 1:enable 0:disable
		io[IOP_IX]	=ar		;;PortCI[15:14] PortCI[11:0]
		ar		=0x0000
		io[IOP_DAT]	=ar


		ar		=IOP_PCI_4MA	;;1=���������4mA  0 = ���16mA
		io[IOP_IX]	=ar		;;PortCI[15:14] PortCI[11:0]
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_PCI_WLOW	;;1=  0 =
		io[IOP_IX]	=ar		;;PortCI[15:14] PortCI[11:0]
		ar		=0x0000
		io[IOP_DAT]	=ar

		ar		=IOP_WAKEN_PC	;;wake up enable   1:enable 0:disable
		io[IOP_IX]	=ar		;;���it
		ar		=0x0000		;;PortCI[11:0]
		io[IOP_DAT]	=ar

		ar		=IOP_WAKELV_PC	;;1=�����ػ���, 0 = �½��ػ���
		io[IOP_IX]	=ar	;;PortCI[11:0]
		ar		=0x0000
		io[IOP_DAT]	=ar

		rets




;-----------------------------------------------------------
;��������:Ram_Clear
;��������:�ϵ�����RM,PM������Ĵ�����ͬʱ���ö�ջbp��ջ��
;-----------------------------------------------------------
Ram_Clear:

		ar		=STACK_Size_Set
		ax		=StackBuffer
		ar		=ar+ax
		bp		=ar

		ar		=SRAM_Size_Set
		ar		=ar-2
		cx		=ar
		ar		=0x0000
		i1		=0x0002
CLR_RM:
		rm[i1++]	=ar;
		loop		CLR_RM
        	p1.hh		=PrgBank
        	p0.hh		=PrgBank
		i0		=0x0000;
		i1		=0x0000;
		p0		=0x0000;
		p1		=0x0000;
		ax		=0x0000
		bx		=0x0000;
		cx		=0x0000;
		dx		=0x0000;
		r0		=0x0000;
		r1		=0x0000;
		r2		=0x0000;
		r3		=0x0000;
		ar		=0x0000
;		io[MISC]	=ar
;		io[MISC2]	=ar
		ar		=io[MISC3]
		ax		=0xe07f
		ar		&=ax
		io[MISC3]	=ar
		ar		=0x0000
		io[MISC4]	=ar
		io[MISC5]	=ar

		rets


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-----------------------------------------------------------
;��������:SetUp_Timer
;��������:���ö�ʱ����״̬
;-----------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetUp_Timer:

		ar		=IOP_Timer1	;���ö�ʱ��Timer1
		io[IOP_IX]	=ar
		ar		=0x07ff
		io[IOP_DAT]	=ar

		ar		=IOP_Timer2	;���ö�ʱ��Timer2
		io[IOP_IX]	=ar
		ar		=0x07ff
		io[IOP_DAT]	=ar

		ar		=IOP_RTC32K	;���ö�ʱ��RTC32K
		io[IOP_IX]	=ar
		ar		=0x7fff
		io[IOP_DAT]	=ar

		ar		=IOP_FetchCNT	;���ù���CP�Ķ�ʱ��
		io[IOP_IX]	=ar	;[1:0]=[Fetch_Timer2:Fetch_Timer1]
		ar		=0x0000
		io[IOP_DAT]	=ar

		rets


;-----------------------------------------------------------
;��������:On_PWMOrDAC
;��������:�����������ʽ
;-----------------------------------------------------------
;#define 	DAC_Output    //use DAC output

On_PWMOrDAC:

#ifdef DAC_Output
		SET	io[MISC].b6                ;DAC Enable
		CLR	io[MISC].b9                ;PWM Disable
		SET	io[MISC].b4                ;DAC Mute off
#else
		CLR	io[MISC].b6                ;DAC Disable
		SET	io[MISC].b9                ;PWM Enable
		CLR	io[MISC].b5                ;PWM Mute off
#endif


		ar		=0x0000
 		io[DACL]	=ar;  // output DAC L FIFO 0
 		io[DACL]	=ar;  // output DAC L FIFO 1
		io[DACL]	=ar;  // output DAC L FIFO 2
 		io[DACL]	=ar;  // output DAC L FIFO 3
		FLTI		=ar;
		FLTI		=ar;
		FLTI		=ar;
		FLTI		=ar;
		FLTA		=ar;
		ar		=0x003f;
		ar		=0x0000
		FLTG		=ar;
		ar		=0x1fff
		FLTP		=ar;
		Audio_Config_Adjust_Fltp

		ar		=FLTO		// initial filter state
		ar		=0		// 2^9=512 ==> CBL
		CBL		=ar
		rets

;-----------------------------------------------------------
;��������:SetUp_Other
;��������:��������
;-----------------------------------------------------------
SetUp_Other:
		ar		=0xDB3F
		io[ENC_DAT]	=ar
		ar		=0x8A17
		io[ENC_DAT]	=ar
		rets


;-----------------------------------------------------------
;��������:OFF_PWMOrDAC
;��������:�����������ʽ
;-----------------------------------------------------------
OFF_PWMOrDAC:
		clr	io[MISC].b6                ;DAC Disable
		clr	io[MISC].b9                ;PWM Enable
                clr	io[MISC].b5                ;PWM Mute off
		rets
;-----------------------------------------------------------
;��������:Copy_Bank0_To_Bank7
;��������:
;-----------------------------------------------------------
CopyProm_To_Sram:

		CBL		= 0
		p1.hh		= PH_H
		p0.hh		= PrgBank
		ar		= ar - p0
		cx		= ar
		cx--
	CopyProm_To_Sram_Loop:
		ar		= pm[p0++]
		pm[p1++]	= ar
		loop		CopyProm_To_Sram_Loop
		p1		= PrgBank
		p1.hh		= PrgBank
		rets

;-----------------------------------------------------------
;��������:SetUp_Int
;��������:�ж�����
;-----------------------------------------------------------

SetUp_Int:
		pcb		=ar
		set		io[STATUS].B13	;Enabled Intvect Change
		cx		=0x0005
		p1.hh		=0
		p1		=#SetUp_ADDRTAB
SetUp_Int_Lp:
		ar		=pm[p1++]
		io[Intvect]	=ar		;<---����ָ���ο�PCB��ֵ����pcb��ֵд�뵽TABLE���λ�����Կ���ͨ���ı�PCB�������жϷ���ִ�е�bank.
		loop		SetUp_Int_Lp
		clr		io[STATUS].B13
		pcb		=PrgBank
		rets

SetUp_ADDRTAB:
		DW		#Touch_INT	;;SPI Master
		DW		#PEORPP_INT
		DW		#RTC_INT		;;SPI Master
		DW		#Timer2_INT	;;CMP2,EXTINT1 SPI Master
		DW		#Timer1_INT	;;CMP1,EXTINT0 SPI Master
		DW		#AudioPwm_INT



