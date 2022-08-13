
#define STATUS				0x00
#define INTENA				0x01
#define INTREQ				0x02
#define IntVect				0x03
#define IOC_PA				0x04
#define IOC_PB				0x05
#define IOC_PC				0x06
#define IOC_PCI				0x06
#define PortA				0x07
#define PortB				0x08
#define PortC				0x09
#define PortCI				0x09
#define INTMASK				0x0A
#define DACL				0x16
#define MISC5				0x18
#define MISC4				0x19
#define MISC3				0x1A
#ifndef _MSPEECHDSP2_
	#define MISC2				0x1B
#endif
#define MISC				0x1C
#define ClrWDT				0x1D
#define Real_T				0x1D
#define IOP_IX				0x1E
#define IOP_DAT				0x1F


// Virtual Program IO Port

#define IOP_Timer1			0x00
#define IOP_Timer2			0x01
#define IOP_RTC32K			0x02
#define IOP_FetchCNT		0x03

#define IOP_PA_PD50K		0x05
#define IOP_PB_PD50K		0x06
#define IOP_PCI_PD50K		0x07
#define IOP_PA_PD220K		0x08
#define IOP_PB_PD220K		0x09
#define IOP_PCI_PD220K		0x0A
#define IOP_PA_PD1M			0x0B
#define IOP_PB_PD1M			0x0C
#define IOP_PCI_PD1M		0x0D
#define IOP_PA_4MA			0x0E
#define IOP_PB_4MA			0x0F
#define IOP_PCI_4MA			0x10
#define IOP_PA_WLOW			0x11
#define IOP_PB_WLOW			0x12
#define IOP_PCI_WLOW		0x13
#define IOP_WAKEN_PA		0x14
#define IOP_WAKEN_PB		0x15
#define IOP_WAKEN_PC		0x16
#define IOP_WAKELV_PA		0x17
#define IOP_WAKELV_PB		0x18
#define IOP_WAKELV_PC		0x19
#define IOP_WAKEDLV_PB		0x1A

// IO[0x40-0x7F]

#define ENC_DAT				0x54
#define SPI_CTL				0x55
#define SPI_DAT				0x56
#define EP					0x5E
#define SSC					0x63
#define SPEED				0x67


// ------------------------------------------------
// System File Register define

sfr R_STATUS		_AT(STATUS);

	#define B_AC			R_STATUS.b1
	#define B_AV			R_STATUS.b2
	#define B_AN			R_STATUS.b3
	#define B_AQ			R_STATUS.b4
	#define B_INTEN			R_STATUS.b7
	#define B_SPIM_EN		R_STATUS.b8
	#define B_INTVWR		R_STATUS.b13
	#define B_FA			R_STATUS.b14
	#define B_PA			R_STATUS.b15

	#define D_AC			BIT(1)
	#define D_AV			BIT(2)
	#define D_AN			BIT(3)
	#define D_AQ			BIT(4)
	#define D_INTEN			BIT(7)
	#define D_SPIM_EN		BIT(8)
	#define D_INTVWR		BIT(13)
	#define D_FA			BIT(14)
	#define D_PA			BIT(15)

sfr R_INTENA		_AT(INTENA);

	#define B_INTENA0		R_INTENA.b0
	#define B_INTENA1		R_INTENA.b1
	#define B_INTENA2		R_INTENA.b2
	#define B_INTENA3		R_INTENA.b3
	#define B_INTENA4		R_INTENA.b4
	#define B_INTENA5		R_INTENA.b5

	#define D_INTENA0		BIT(0)
	#define D_INTENA1		BIT(1)
	#define D_INTENA2		BIT(2)
	#define D_INTENA3		BIT(3)
	#define D_INTENA4		BIT(4)
	#define D_INTENA5		BIT(5)


sfr R_INTREQ		_AT(INTREQ);

	#define B_INTREQ0		R_INTREQ.b0
	#define B_INTREQ1		R_INTREQ.b1
	#define B_INTREQ2		R_INTREQ.b2
	#define B_INTREQ3		R_INTREQ.b3
	#define B_INTREQ4		R_INTREQ.b4
	#define B_INTREQ5		R_INTREQ.b5

	#define D_INTREQ0		BIT(0)
	#define D_INTREQ1		BIT(1)
	#define D_INTREQ2		BIT(2)
	#define D_INTREQ3		BIT(3)
	#define D_INTREQ4		BIT(4)
	#define D_INTREQ5		BIT(5)


sfr R_INTVECT		_AT(IntVect);

sfr R_IOC_PA		_AT(IOC_PA);

	#define B_IOC_PA0		R_IOC_PA.b0
	#define B_IOC_PA1		R_IOC_PA.b1
	#define B_IOC_PA2		R_IOC_PA.b2
	#define B_IOC_PA3		R_IOC_PA.b3

	#define D_IOC_PA0		BIT(0)
	#define D_IOC_PA1		BIT(1)
	#define D_IOC_PA2		BIT(2)
	#define D_IOC_PA3		BIT(3)

sfr R_IOC_PB		_AT(IOC_PB);

	#define B_IOC_PB0		R_IOC_PB.b0
	#define B_IOC_PB1		R_IOC_PB.b1
	#define B_IOC_PB2		R_IOC_PB.b2
	#define B_IOC_PB3		R_IOC_PB.b3
	#define B_IOC_PB4		R_IOC_PB.b4
	#define B_IOC_PB5		R_IOC_PB.b5

	#define D_IOC_PB0		BIT(0)
	#define D_IOC_PB1		BIT(1)
	#define D_IOC_PB2		BIT(2)
	#define D_IOC_PB3		BIT(3)
	#define D_IOC_PB4		BIT(4)
	#define D_IOC_PB5		BIT(5)


sfr R_IOC_PCI		_AT(IOC_PCI);
sfr R_IOC_PC		_AT(IOC_PC);

	#define B_IOC_PC0		R_IOC_PC.b0
	#define B_IOC_PC1		R_IOC_PC.b1
	#define B_IOC_PC2		R_IOC_PC.b2
	#define B_IOC_PC3		R_IOC_PC.b3
	#define B_IOC_PC4		R_IOC_PC.b4
	#define B_IOC_PC5		R_IOC_PC.b5
	#define B_IOC_PC6		R_IOC_PC.b6
	#define B_IOC_PC7		R_IOC_PC.b7
	#define B_IOC_PC8		R_IOC_PC.b8
	#define B_IOC_PC9		R_IOC_PC.b9
	#define B_IOC_PC10		R_IOC_PC.b10
	#define B_IOC_PC11		R_IOC_PC.b11
	#define B_IOC_PI0		R_IOC_PC.b14
	#define B_IOC_PI1		R_IOC_PC.b15

	#define D_IOC_PC0		BIT(0)
	#define D_IOC_PC1		BIT(1)
	#define D_IOC_PC2		BIT(2)
	#define D_IOC_PC3		BIT(3)
	#define D_IOC_PC4		BIT(4)
	#define D_IOC_PC5		BIT(5)
	#define D_IOC_PC6		BIT(6)
	#define D_IOC_PC7		BIT(7)
	#define D_IOC_PC8		BIT(8)
	#define D_IOC_PC9		BIT(9)
	#define D_IOC_PC10		BIT(10)
	#define D_IOC_PC11		BIT(11)
	#define D_IOC_PI0		BIT(14)
	#define D_IOC_PI1		BIT(15)


sfr R_PORTA			_AT(PortA);

	#define B_PORTA0		R_PORTA.b0
	#define B_PORTA1		R_PORTA.b1
	#define B_PORTA2		R_PORTA.b2
	#define B_PORTA3		R_PORTA.b3

	#define D_PORTA0		BIT(0)
	#define D_PORTA1		BIT(1)
	#define D_PORTA2		BIT(2)
	#define D_PORTA3		BIT(3)

sfr R_PORTB			_AT(PortB);

	#define B_PORTB0		R_PORTB.b0
	#define B_PORTB1		R_PORTB.b1
	#define B_PORTB2		R_PORTB.b2
	#define B_PORTB3		R_PORTB.b3
	#define B_PORTB4		R_PORTB.b4
	#define B_PORTB5		R_PORTB.b5

	#define D_PORTB0		BIT(0)
	#define D_PORTB1		BIT(1)
	#define D_PORTB2		BIT(2)
	#define D_PORTB3		BIT(3)
	#define D_PORTB4		BIT(4)
	#define D_PORTB5		BIT(5)


sfr R_PORTCI		_AT(PortCI);
sfr R_PORTC			_AT(PortC);

	#define B_PORTC0		R_PORTC.b0
	#define B_PORTC1		R_PORTC.b1
	#define B_PORTC2		R_PORTC.b2
	#define B_PORTC3		R_PORTC.b3
	#define B_PORTC4		R_PORTC.b4
	#define B_PORTC5		R_PORTC.b5
	#define B_PORTC6		R_PORTC.b6
	#define B_PORTC7		R_PORTC.b7
	#define B_PORTC8		R_PORTC.b8
	#define B_PORTC9		R_PORTC.b9
	#define B_PORTC10		R_PORTC.b10
	#define B_PORTC11		R_PORTC.b11
	#define B_PORTI0		R_PORTC.b14
	#define B_PORTI1		R_PORTC.b15

	#define D_PORTC0		BIT(0)
	#define D_PORTC1		BIT(1)
	#define D_PORTC2		BIT(2)
	#define D_PORTC3		BIT(3)
	#define D_PORTC4		BIT(4)
	#define D_PORTC5		BIT(5)
	#define D_PORTC6		BIT(6)
	#define D_PORTC7		BIT(7)
	#define D_PORTC8		BIT(8)
	#define D_PORTC9		BIT(9)
	#define D_PORTC10		BIT(10)
	#define D_PORTC11		BIT(11)
	#define D_PORTI0		BIT(14)
	#define D_PORTI1		BIT(15)

sfr R_INTMASK		_AT(INTMASK);

	#define B_INTMASK0		R_INTMASK.b0
	#define B_INTMASK1		R_INTMASK.b1
	#define B_INTMASK2		R_INTMASK.b2
	#define B_INTMASK3		R_INTMASK.b3
	#define B_INTMASK4		R_INTMASK.b4
	#define B_INTMASK5		R_INTMASK.b5

	#define D_INTMASK0		BIT(0)
	#define D_INTMASK1		BIT(1)
	#define D_INTMASK2		BIT(2)
	#define D_INTMASK3		BIT(3)
	#define D_INTMASK4		BIT(4)
	#define D_INTMASK5		BIT(5)

sfr R_DACL			_AT(DACL);

sfr R_MISC5			_AT(MISC5);

	#define B_CMP1_INT_EN	R_MISC5.b0
	#define B_CMP2_INT_EN	R_MISC5.b1
	#define B_CMP1_INT_INV	R_MISC5.b2
	#define B_CMP2_INT_INV	R_MISC5.b3
	#define B_CMP1_TIMER1	R_MISC5.b4
	#define B_CMP2_TIMER2	R_MISC5.b5
	#define B_LVDO			R_MISC5.b6
	#define B_THO			R_MISC5.b7

	#define D_CMP1_INT_EN	BIT(0)
	#define D_CMP2_INT_EN	BIT(1)
	#define D_CMP1_INT_INV	BIT(2)
	#define D_CMP2_INT_INV	BIT(3)
	#define D_CMP1_TIMER1	BIT(4)
	#define D_CMP2_TIMER2	BIT(5)
	#define D_LVDO			BIT(6)
	#define D_THO			BIT(7)


sfr R_MISC4			_AT(MISC4);

	#define B_PDBSTMG		R_MISC4.b0
	#define B_STMGWK_EN		R_MISC4.b1
	#define B_THEN			R_MISC4.b2
	#define B_SVT			R_MISC4.b3
	#define B_TISB0			R_MISC4.b4
	#define B_TISB1			R_MISC4.b5
	#define B_TINT_EN		R_MISC4.b6
	#define B_TOUCH_REALT	R_MISC4.b7
	#define B_DAC_OG_B0		R_MISC4.12
	#define B_DAC_OG_B1		R_MISC4.13
	#define B_DAC_OG_B2		R_MISC4.14

	#define D_PDBSTMG		BIT(0)
	#define D_STMGWK_EN		BIT(1)
	#define D_THEN			BIT(2)
	#define D_SVT			BIT(3)
	#define D_TISB0			BIT(4)
	#define D_TISB1			BIT(5)
	#define D_TINT_EN		BIT(6)
	#define D_TOUCH_REALT	BIT(7)
	#define D_DAC_OG_B0		BIT(12)
	#define D_DAC_OG_B1		BIT(13)
	#define D_DAC_OG_B2		BIT(14)

sfr R_MISC3			_AT(MISC3);

	#define B_PA0_ALG		R_MISC3.b0
	#define B_PC2_ALG		R_MISC3.b1
	#define B_PC4_ALG		R_MISC3.b2
	#define B_PC5_ALG		R_MISC3.b3
	#define B_PC6_ALG		R_MISC3.b4
	#define B_PC7_ALG		R_MISC3.b5
	#define B_LVDEN			R_MISC3.b6
	#define B_D2ENB			R_MISC3.b7
	#define B_LVD_B0		R_MISC3.b8
	#define B_LVD_B1		R_MISC3.b9
	#define B_LVD_B2		R_MISC3.b10
	#define B_LVD_B3		R_MISC3.b11
	#define B_LVD_B4		R_MISC3.b12
	#define B_SMTO			R_MISC3.b13
	#define B_CMPO1			R_MISC3.b14
	#define B_CMPO2			R_MISC3.b15

	#define D_PA0_ALG		BIT(0)
	#define D_PC2_ALG		BIT(1)
	#define D_PC4_ALG		BIT(2)
	#define D_PC5_ALG		BIT(3)
	#define D_PC6_ALG		BIT(4)
	#define D_PC7_ALG		BIT(5)
	#define D_LVDEN			BIT(6)
	#define D_D2ENB			BIT(7)
	#define D_LVD_B0		BIT(8)
	#define D_LVD_B1		BIT(9)
	#define D_LVD_B2		BIT(10)
	#define D_LVD_B3		BIT(11)
	#define D_LVD_B4		BIT(12)
	#define D_SMTO			BIT(13)
	#define D_CMPO1			BIT(14)
	#define D_CMPO2			BIT(15)


#ifndef _MSPEECHDSP2_

sfr R_MISC2			_AT(MISC2);

	#define B_HH_THR_B0		R_MISC2.b0
	#define B_HH_THR_B1		R_MISC2.b1
	#define B_HH_ATT_B0		R_MISC2.b2
	#define B_HH_ATT_B1		R_MISC2.b3
	#define B_OFT_SEL_B0	R_MISC2.b4
	#define B_OFT_SEL_B1	R_MISC2.b5
	#define B_CMP1EN		R_MISC2.b6
	#define B_CMP2EN		R_MISC2.b7
	#define B_AGCEN			R_MISC2.b8
	#define B_RXEN			R_MISC2.b9
	#define B_OPEN			R_MISC2.b10
	#define B_RECEN			R_MISC2.b11
	#define B_HHEN			R_MISC2.b12
	#define B_PGAEN			R_MISC2.b13
	#define B_BUZEN			R_MISC2.b14
	#define B_ENAVS			R_MISC2.b15

	#define D_HH_THR_B0		BIT(0)
	#define D_HH_THR_B1		BIT(1)
	#define D_HH_ATT_B0		BIT(2)
	#define D_HH_ATT_B1		BIT(3)
	#define D_OFT_SEL_B0	BIT(4)
	#define D_OFT_SEL_B1	BIT(5)
	#define D_CMP1EN		BIT(6)
	#define D_CMP2EN		BIT(7)
	#define D_AGCEN			BIT(8)
	#define D_RXEN			BIT(9)
	#define D_OPEN			BIT(10)
	#define D_RECEN			BIT(11)
	#define D_HHEN			BIT(12)
	#define D_PGAEN			BIT(13)
	#define D_BUZEN			BIT(14)
	#define D_ENAVS			BIT(15)

#endif

sfr R_MISC			_AT(MISC);

	#define B_WDT			R_MISC.b0
	#define B_LVR			R_MISC.b1
	#define B_EXRST			R_MISC.b2
	#define B_RC_RST		R_MISC.b3
	#define B_DAC_MUTEB		R_MISC.b4
	#define B_PWM_MUTE		R_MISC.b5
	#define B_DAC_EN		R_MISC.b6
	#define B_TCS			R_MISC.b7
	#define B_MODX			R_MISC.b8
	#define B_PWM_EN		R_MISC.b9
	#define B_HHWK_EN		R_MISC.b10
	#define B_IR_EN			R_MISC.b11
	#define B_RTC_WAKE		R_MISC.b12
	#define B_HHWK_WAKE		R_MISC.b13
	#define B_STMG_WAKE		R_MISC.b14
	#define B_CLR_REALT		R_MISC.b15

	#define D_WDT			BIT(0)
	#define D_LVR			BIT(1)
	#define D_EXRST			BIT(2)
	#define D_RC_RST		BIT(3)
	#define D_DAC_MUTEB		BIT(4)
	#define D_PWM_MUTE		BIT(5)
	#define D_DAC_EN		BIT(6)
	#define D_TCS			BIT(7)
	#define D_MODX			BIT(8)
	#define D_PWM_EN		BIT(9)
	#define D_HHWK_EN		BIT(10)
	#define D_IR_EN			BIT(11)
	#define D_RTC_WAKE		BIT(12)
	#define D_HHWK_WAKE		BIT(13)
	#define D_STMG_WAKE		BIT(14)
	#define D_CLR_REALT		BIT(15)


sfr R_CLRWDT		_AT(ClrWDT);

sfr R_REAL_T		_AT(Real_T);

sfr R_IOP_IX		_AT(IOP_IX);

sfr R_IOP_DAT		_AT(IOP_DAT);

sfr	R_MACOP			_AT(0x2A);

sfr R_SATV			_AT(0x33);

sfr R_FLTI			_AT(0x36);

sfr R_MR0			_AT(0x38);

sfr R_MR1			_AT(0x39);

sfr R_MR2			_AT(0x3A);

sfr R_CBL			_AT(0x3B);

sfr R_FLTG			_AT(0x3C);

sfr R_FLTO			_AT(0x3C);

sfr R_FLTA			_AT(0x3D);

sfr R_FLTP			_AT(0x3E);

sfr R_ENC_DAT		_AT(ENC_DAT);

sfr R_SPI_CTL		_AT(SPI_CTL);

	#define B_SPI_BYTEB0	R_SPI_CTL.b0
	#define B_SPI_BYTEB1	R_SPI_CTL.b1
	#define B_SPI_SEND		R_SPI_CTL.b4
	#define B_SPI_RCV		R_SPI_CTL.b5
	#define B_SPI_DATAOK	R_SPI_CTL.b7
	#define B_SPI_INTSELB0	R_SPI_CTL.b8
	#define B_SPI_INTSELB1	R_SPI_CTL.b9
	#define B_SPI_ICS		R_SPI_CTL.b11
	#define B_SPI_CKSELB0	R_SPI_CTL.b12
	#define B_SPI_CKSELB1	R_SPI_CTL.b13
	#define B_SPI_CPHA		R_SPI_CTL.b14
	#define B_SPI_CPOL		R_SPI_CTL.b15
	
	#define D_SPI_BYTEB0	BIT(0)
	#define D_SPI_BYTEB1	BIT(1)
	#define D_SPI_SEND		BIT(4)
	#define D_SPI_RCV		BIT(5)
	#define D_SPI_INTSELB0	BIT(8)
	#define D_SPI_INTSELB1	BIT(9)
	#define D_SPI_ICS		BIT(11)
	#define D_SPI_CKSELB0	BIT(12)
	#define D_SPI_CKSELB1	BIT(13)
	#define D_SPI_CPHA		BIT(14)
	#define D_SPI_CPOL		BIT(15)

sfr R_SPI_DAT		_AT(SPI_DAT);

sfr R_EP			_AT(EP);

sfr R_SSC			_AT(SSC);

sfr R_SPEED			_AT(SPEED);



// -=-= interrupt =-=- //

#define dsi()				{ asml("dsi");	\
							  asml("nop"); }

#define eni()				asml("eni")

#define EnableInt0()		asml("set io[INTENA].b0")
#define EnableInt1()		asml("set io[INTENA].b1")
#define EnableInt2()		asml("set io[INTENA].b2")
#define EnableInt3()		asml("set io[INTENA].b3")
#define EnableInt4()		asml("set io[INTENA].b4")
#define EnableInt5()		asml("set io[INTENA].b5")

#define DisableInt0()		asml("clr io[INTENA].b0")
#define DisableInt1()		asml("clr io[INTENA].b1")
#define DisableInt2()		asml("clr io[INTENA].b2")
#define DisableInt3()		asml("clr io[INTENA].b3")
#define DisableInt4()		asml("clr io[INTENA].b4")
#define DisableInt5()		asml("clr io[INTENA].b5")

#define ClrIntFlag0()		asml("clr io[INTREQ].b0")
#define ClrIntFlag1()		asml("clr io[INTREQ].b1")
#define ClrIntFlag2()		asml("clr io[INTREQ].b2")
#define ClrIntFlag3()		asml("clr io[INTREQ].b3")
#define ClrIntFlag4()		asml("clr io[INTREQ].b4")
#define ClrIntFlag5()		asml("clr io[INTREQ].b5")


#define EnableVectorReg()	asml("set io[STATUS].b13")
#define DisableVectorReg()	asml("clr io[STATUS].b13")

// -=-= Special purpose =-=- //


#define LoadAR(value)		{ value; asml("AR = AX"); }

#define PUSH_AR()			asml("push AR")
#define PUSH_AX()			asml("push AX")
#define PUSH_BX()			asml("push BX")
#define PUSH_CX()			asml("push CX")
#define PUSH_DX()			asml("push DX")
#define PUSH_I0()			asml("push I0")
#define PUSH_I1()			asml("push I1")
#define PUSH_P0()			asml("push P0")
#define PUSH_P1()			asml("push P1")
#define PUSH_R0()			asml("push R0")
#define PUSH_R1()			asml("push R1")
#define PUSH_R2()			asml("push R2")
#define PUSH_R3()			asml("push R3")
#define PUSH_MR0()			asml("push MR0")
#define PUSH_MR1()			asml("push MR1")
#define PUSH_MR2()			asml("push MR2")
#define PUSH_CBL()			asml("push CBL")

#ifdef _MSPEECHDSP_
	#define PUSH_MACOP()		asml(";")
#else
	#define PUSH_MACOP()		asml("push MACOP")
#endif

#define POP_AR()			asml("pop AR")
#define POP_AX()			asml("pop AX")
#define POP_BX()			asml("pop BX")
#define POP_CX()			asml("pop CX")
#define POP_DX()			asml("pop DX")
#define POP_I0()			asml("pop I0")
#define POP_I1()			asml("pop I1")
#define POP_P0()			asml("pop P0")
#define POP_P1()			asml("pop P1")
#define POP_R0()			asml("pop R0")
#define POP_R1()			asml("pop R1")
#define POP_R2()			asml("pop R2")
#define POP_R3()			asml("pop R3")
#define POP_MR0()			asml("pop MR0")
#define POP_MR1()			asml("pop MR1")
#define POP_MR2()			asml("pop MR2")
#define POP_CBL()			asml("pop CBL")

#define PUSH_P0HH()			asml("AR = P0.hh"); asml("push AR")
#define POP_P0HH()			asml("pop AR"); asml("P0.hh = AR")

#define PUSH_P1HH()			asml("AR = P1.hh"); asml("push AR")
#define POP_P1HH()			asml("pop AR"); asml("P1.hh = AR")


#ifdef _MSPEECHDSP_
	#define POP_MACOP()		asml(";")
#else
	#define POP_MACOP()		asml("pop MACOP")
#endif


#define set_PCB(x)			{ LoadAR(x); asml("PCB = AR"); }
#define set_DACL(x)			{ LoadAR(x); asml("io[DACL] = AR"); }


#define Reset_REAL_T()		{ asml("set io[MISC].b7"); \
							  asml("io[Real_T] = AR"); }

// -=-= 0 =-=- //

// Watch Dog

#define ClrWatchDog()		asml("io[ClrWDT] = AR")


// -=-= slow I/O control function =-=- //
// -=-=    (Range: 0x00 ~ 0x1F)   =-=- //

import int inp(unsigned int port);
import int outp(unsigned int port, int value);


// -=-= use SFR instead =-=-

// MAC

// SATV
import int get_SATV(long value);


// PASR

#define ResetPASR()		asml("AR = PASR,0")
#define set_PASR(v)		{ LoadAR(v); asml("PASR = AR"); }

// MR


// CBL

#define set_CBL(v)		{ LoadAR(v); asml("CBL = AR"); }
import int get_CBL(void);

// FLTG

#define set_FLTG(v)		{ LoadAR(v); asml("FLTG = AR"); }

// FLTO
import int get_FLTO(void);

// FLTA

#define set_FLTA(v)		{ LoadAR(v); asml("FLTA = AR"); }
import int get_FLTA(void);

// FLTP

#define set_FLTP(v)		{ LoadAR(v); asml("FLTP = AR"); }
import int get_FLTP(void);

// FLTI

#define set_FLTI(x)		{ LoadAR(x); asml("FLTI = AR"); }
import int get_FLTI(void);


// ~~~ I0

// specified RAM index pointer 0 with circular buffer apply (CBL - low 4-bit)

// *((int *)I0) = v

#define store_I0(v)		{ v; asml("rm[I0] = AX"); }

// *((int *)I0++) = v

#define store_I0P(v)	{ v; asml("rm[I0++] = AX"); }

// *((int *)I0) = v
// I0 += 2

#define store_I0P2(v)	{ v; asml("rm[I0++2] = AX"); }

// *((int *)I0--) = v

#define store_I0M(v)	{ v; asml("rm[I0--] = AX"); }

// return rm[I0]
import int read_I0(void);

// return rm[I0++]
import int read_I0P(void);

// return rm[I0++2]
import int read_I0P2(void);

// return rm[I0--]
import int read_I0M(void);

// ~~

// I0 = v

#define set_I0(v)		{ LoadAR(v); asml("I0 = AR"); }

// return I0;
import int get_I0(void);



// ~~~ P0

// specified ROM index pointer 0 with circular buffer apply (CBL - high 4-bit)

// *((code int *)P0) = v

#define store_P0(v)		{ v; asml("pm[P0] = AX"); }

// *((code int *)P0++) = v

#define store_P0P(v)	{ v; asml("pm[P0++] = AX"); }


// *((code int *)P0--) = v

#define store_P0M(v)	{ v; asml("pm[P0--] = AX"); }

// return pm[P0]
import int read_P0(void);

// return pm[P0++]
import int read_P0P(void);

// return pm[P0--]
import int read_P0M(void);


// ~~

// P0 = v

#define set_P0(v)		{ LoadAR(v); asml("P0 = AR"); }
#define set_P0L(v)		{ v; asml("AR = AX"); asml("P0 = AR"); asml("AR = DX"); asml("P0.hh = AR"); }

// return I0;
import int get_P0(void);

import int get_P0L(void);


// I/O

import void set_IntVWR(void);
import void clr_IntVWR(void);

import void set_IntPrWR(void);
import void clr_IntPrWR(void);

import void set_INTENA(int value);
import int	get_INTENA(void);

import void set_INTREQ(int value);
import int	get_INTREQ(void);

import void set_IntVect(int value);
import int	get_IntVect(void);

// import void set_IOC_PA(int value);

#define set_IOC_PA(v)		{ LoadAR(v); asml("io[IOC_PA] = AR"); }
import int	get_IOC_PA(void);

// import void set_IOC_PB(int value);

#define set_IOC_PB(v)		{ LoadAR(v); asml("io[IOC_PB] = AR"); }
import int	get_IOC_PB(void);

// import void set_IOC_PC(int value);

#define set_IOC_PC(v)		{ LoadAR(v); asml("io[IOC_PC] = AR"); }
import int	get_IOC_PC(void);

// import void set_PortA(int value);

#define set_PortA(v)		{ LoadAR(v); asml("io[PortA] = AR"); }
import int	get_PortA(void);

// import void set_PortB(int value);

#define set_PortB(v)		{ LoadAR(v); asml("io[PortB] = AR"); }
import int	get_PortB(void);

// import void set_PortC(int value);

#define set_PortC(v)		{ LoadAR(v); asml("io[PortC] = AR"); }
import int	get_PortC(void);


#define set_PortCI			set_PortC
#define get_PortCI			get_PortC


import void set_MISC(int value);
import int	get_MISC(void);

// import void set_IOP_IX(int value);
// import void set_IOP_DAT(int value);

#define set_IOP_IX(v)		{ LoadAR(v); asml("io[IOP_IX] = AR"); }
#define set_IOP_DAT(v)		{ LoadAR(v); asml("io[IOP_DAT] = AR"); }

// MAC

#define set_MACOP(v)		{ LoadAR(v); asml("MACOP = AR"); }
import int	get_MACOP(void);

import int vXCHG(int V)	rpdax;

import void cpuHalt(void);

import int FA(void);



// tick

extern void ClearTickCount(void);
extern unsigned long GetTickCount(void);
extern void delay(unsigned short ms);


#define W_VIOREG(index, value)	( R_IOP_IX = index, R_IOP_DAT = value )
#define R_VIOREG(index)			( R_IOP_IX = index, R_IOP_DAT )




