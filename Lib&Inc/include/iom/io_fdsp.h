#define STATUS			0x00			// R/W, BIT0: Zero.
										// R/W, BIT1: Carry.
										// R/W, BIT2: Overflow.
										// R/W, BIT3: Negative.
										// R/W, BIT7: Global Interrupt Enable.
										// R/W, BIT[12:8]: SD_EN, TRA_EN, ADH_EN, SPIS_EN, SPIM_EN.
										// R/W, BIT13: Interrupt Vector Table Access Enable.
										// R/W, BIT14: Filter Buffer Available.
										// R/W, BIT15: Parser Buffer Available.

#define INTENA			0x01			// R/W, Int Enable.
#define INTREQ			0x02			// R/W, Int Rest.
#define IntVect			0x03			// R/W, Interrupt Table
#define IOC_PA			0x04			// R/W, PortA IO control. ('0' = input,'1' = output)
#define IOC_PB			0x05			// R/W, PortB IO control. ('0' = input,'1' = output)
#define IOC_PCI			0x06			// R/W, PortCI IO control. ('0' = input,'1' = output)
#define IOC_PC			0x06			// R/W, PortCI IO control. ('0' = input,'1' = output)
#define PortA			0x07			// R/W, General input/output port.
#define PortB			0x08			// R/W, General input/output port.
#define PortCI			0x09			// R/W, General input/output port.
#define PortC			0x09			// R/W, General input/output port.
#define INTMASK			0x0A			// R/W, Int Mask.
#define SPIS_CTL		0x0B			// R/W, SPI slaver control register.
#define SPIS_DAT		0x0C			// R/W, SPI slaver data	   register.
#define SPI_CTL			0x0D			// R/W, SPI master control register.
#define SPI_DAT			0x0E			// R/W, SPI master data	   register.


#define UART_CTL		0x12
#define UART_DAT		0x13
#define DPPWM			0x14
//------------------------------------
#define PUPD_PA			0x15			// R/W, PortA  Pull-Up(b15~b8)/Pull-Down(b7~b0)
#define DACL			0x16
#define DACR			0x17

#define PUPD_PB			0x1A			// R/W, PortB  Pull-Up(b15~b8)/Pull-Down(b7~b0)
#define PUPD_PC			0x1B			// R/W, PortC  Pull-Up(b15~b8)/Pull-Down(b7~b0)
#define MISC			0x1C
#define ClrWDT			0x1D			// W, Clear Watch-dog reset.
#define Real_T			0x1D			// R, System Real-Time Counter, base on 31.25us
#define IOP_IX			0x1E			// W, Programming IO Port index .
#define IOP_DAT			0x1F			// W, Programming IO Port Data .


//------------------------------------
// Virtual		   Program IO Port

#define IOP_Timer1		0x00
#define IOP_Timer2		0x01
#define IOP_RTC32K		0x02
#define IOP_PreScale	0x03
#define IOP_FGREEN32K	0x04
#define IOP_ODEN_PA		0x05
#define IOP_ODEN_PB		0x06
#define IOP_ODEN_PC		0x07

#define IOP_TOUCH_CFG	0x08
#define IOP_TOUCH_DAT	0x09

#define IOP_CLK_CFG		0x0A
#define IOP_CLK_DAT1	0x0B
#define IOP_CLK_DAT2	0x0C
#define IOP_CUR_PA		0x0D
#define IOP_CUR_PB		0x0E
#define IOP_CUR_PC		0x0F
#define IOP_WAKEN_PA	0x10
#define IOP_WAKEN_PB	0x11
#define IOP_WAKEN_PC	0x12
#define IOP_WAKELV_PA	0x13
#define IOP_WAKELV_PB	0x14
#define IOP_WAKELV_PC	0x15

//------------------------------------
// IO[0x40-0x7F]

#define ADH_CFG0		0x40
#define ADH_CFG1		0x41
#define ADH_CFG2		0x42
#define ADH_CFG3		0x43
#define ADH_DO			0x44

#define ADL_CFG			0x45

#define TRA_CFG			0x46
#define TRA_DAT			0x47

#define I2C_CTL			0x48
#define I2C_DAT			0x49
#define I2C_CMD			0x4A
#define I2C_SR			0x4A			  //same as I2C_CMD

#define I80_CTL			0x4B
#define I80_INX			0x4C
#define I80_DAT			0x4D
#define I80_RADR		0x4E
#define I80_DMANUM		0x4F

#define SD_DMA_CTL		0x50
#define SD_DMA_RADR		0x51
#define SD_DMA_DMANUM	0x52

#define SPI_DMA_CTL		0x53
#define SPI_DMA_RADR	0x54
#define SPI_DMA_DMANUM	0x55


#define SSC				0x63
#define MIC				0x64
#define GREEN			0x65
#define SLEEP			0x66
#define SPEED			0x67
#define PR				0x68

//------------------------------------




// ------------------------------------------------
// System File Register define

sfr R_STATUS		_AT(STATUS);

	#define B_AC			R_STATUS.b1
	#define B_AV			R_STATUS.b2
	#define B_AN			R_STATUS.b3
	#define B_AQ			R_STATUS.b4
	#define B_UARTEN		R_STATUS.b5
	#define B_INTEN			R_STATUS.b7
	#define B_SPIM_EN		R_STATUS.b8
	#define B_SPIS_EN		R_STATUS.b9
	#define B_INTPRWR		R_STATUS.b11
	#define B_INTVWR		R_STATUS.b13
	#define B_FA			R_STATUS.b14
	#define B_PA			R_STATUS.b15

	#define D_AC			BIT(1)
	#define D_AV			BIT(2)
	#define D_AN			BIT(3)
	#define D_AQ			BIT(4)
	#define D_UARTEN		BIT(5)
	#define D_INTEN			BIT(7)
	#define D_SPIM_EN		BIT(8)
	#define D_SPIS_EN		BIT(9)
	#define D_INTPRWR		BIT(11)
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
	#define B_INTENA6		R_INTENA.b6
	#define B_INTENA7		R_INTENA.b7
	#define B_INTENA8		R_INTENA.b8
	#define B_INTENA9		R_INTENA.b9
	#define B_INTENA10		R_INTENA.b10
	#define B_INTENA11		R_INTENA.b11
	#define B_INTENA12		R_INTENA.b12
	#define B_INTENA13		R_INTENA.b13
	#define B_INTENA14		R_INTENA.b14
	#define B_INTENA15		R_INTENA.b15

	#define D_INTENA0		BIT(0)
	#define D_INTENA1		BIT(1)
	#define D_INTENA2		BIT(2)
	#define D_INTENA3		BIT(3)
	#define D_INTENA4		BIT(4)
	#define D_INTENA5		BIT(5)
	#define D_INTENA6		BIT(6)
	#define D_INTENA7		BIT(7)
	#define D_INTENA8		BIT(8)
	#define D_INTENA9		BIT(9)
	#define D_INTENA10		BIT(10)
	#define D_INTENA11		BIT(11)
	#define D_INTENA12		BIT(12)
	#define D_INTENA13		BIT(13)
	#define D_INTENA14		BIT(14)
	#define D_INTENA15		BIT(15)


sfr R_INTREQ		_AT(INTREQ);

	#define B_INTREQ0		R_INTREQ.b0
	#define B_INTREQ1		R_INTREQ.b1
	#define B_INTREQ2		R_INTREQ.b2
	#define B_INTREQ3		R_INTREQ.b3
	#define B_INTREQ4		R_INTREQ.b4
	#define B_INTREQ5		R_INTREQ.b5
	#define B_INTREQ6		R_INTREQ.b6
	#define B_INTREQ7		R_INTREQ.b7
	#define B_INTREQ8		R_INTREQ.b8
	#define B_INTREQ9		R_INTREQ.b9
	#define B_INTREQ10		R_INTREQ.b10
	#define B_INTREQ11		R_INTREQ.b11
	#define B_INTREQ12		R_INTREQ.b12
	#define B_INTREQ13		R_INTREQ.b13
	#define B_INTREQ14		R_INTREQ.b14
	#define B_INTREQ15		R_INTREQ.b15

	#define D_INTREQ0		BIT(0)
	#define D_INTREQ1		BIT(1)
	#define D_INTREQ2		BIT(2)
	#define D_INTREQ3		BIT(3)
	#define D_INTREQ4		BIT(4)
	#define D_INTREQ5		BIT(5)
	#define D_INTREQ6		BIT(6)
	#define D_INTREQ7		BIT(7)
	#define D_INTREQ8		BIT(8)
	#define D_INTREQ9		BIT(9)
	#define D_INTREQ10		BIT(10)
	#define D_INTREQ11		BIT(11)
	#define D_INTREQ12		BIT(12)
	#define D_INTREQ13		BIT(13)
	#define D_INTREQ14		BIT(14)
	#define D_INTREQ15		BIT(15)

sfr R_INTVECT		_AT(IntVect);


sfr R_IOC_PA		_AT(IOC_PA);

	#define B_IOC_PA0		R_IOC_PA.b0
	#define B_IOC_PA1		R_IOC_PA.b1
	#define B_IOC_PA2		R_IOC_PA.b2
	#define B_IOC_PA3		R_IOC_PA.b3
	#define B_IOC_PA4		R_IOC_PA.b4
	#define B_IOC_PA5		R_IOC_PA.b5

	#define D_IOC_PA0		BIT(0)
	#define D_IOC_PA1		BIT(1)
	#define D_IOC_PA2		BIT(2)
	#define D_IOC_PA3		BIT(3)
	#define D_IOC_PA4		BIT(4)
	#define D_IOC_PA5		BIT(5)


sfr R_IOC_PB		_AT(IOC_PB);

	#define B_IOC_PB0		R_IOC_PB.b0
	#define B_IOC_PB1		R_IOC_PB.b1
	#define B_IOC_PB2		R_IOC_PB.b2
	#define B_IOC_PB3		R_IOC_PB.b3
	#define B_IOC_PB4		R_IOC_PB.b4

	#define D_IOC_PB0		BIT(0)
	#define D_IOC_PB1		BIT(1)
	#define D_IOC_PB2		BIT(2)
	#define D_IOC_PB3		BIT(3)
	#define D_IOC_PB4		BIT(4)


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
	#define D_IOC_PI0		BIT(14)
	#define D_IOC_PI1		BIT(15)


sfr R_PORTA			_AT(PortA);

	#define B_PORTA0		R_PORTA.b0
	#define B_PORTA1		R_PORTA.b1
	#define B_PORTA2		R_PORTA.b2
	#define B_PORTA3		R_PORTA.b3
	#define B_PORTA4		R_PORTA.b4
	#define B_PORTA5		R_PORTA.b5

	#define D_PORTA0		BIT(0)
	#define D_PORTA1		BIT(1)
	#define D_PORTA2		BIT(2)
	#define D_PORTA3		BIT(3)
	#define D_PORTA4		BIT(4)
	#define D_PORTA5		BIT(5)


sfr R_PORTB			_AT(PortB);

	#define B_PORTB0		R_PORTB.b0
	#define B_PORTB1		R_PORTB.b1
	#define B_PORTB2		R_PORTB.b2
	#define B_PORTB3		R_PORTB.b3
	#define B_PORTB4		R_PORTB.b4

	#define D_PORTB0		BIT(0)
	#define D_PORTB1		BIT(1)
	#define D_PORTB2		BIT(2)
	#define D_PORTB3		BIT(3)
	#define D_PORTB4		BIT(4)


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
	#define D_PORTI0		BIT(14)
	#define D_PORTI1		BIT(15)


sfr R_INTMASK		_AT(INTMASK);

	#define B_INTMASK0		R_INTMASK.b0
	#define B_INTMASK1		R_INTMASK.b1
	#define B_INTMASK2		R_INTMASK.b2
	#define B_INTMASK3		R_INTMASK.b3
	#define B_INTMASK4		R_INTMASK.b4
	#define B_INTMASK5		R_INTMASK.b5
	#define B_INTMASK6		R_INTMASK.b6
	#define B_INTMASK7		R_INTMASK.b7
	#define B_INTMASK8		R_INTMASK.b8
	#define B_INTMASK9		R_INTMASK.b9
	#define B_INTMASK10		R_INTMASK.b10
	#define B_INTMASK11		R_INTMASK.b11
	#define B_INTMASK12		R_INTMASK.b12
	#define B_INTMASK13		R_INTMASK.b13
	#define B_INTMASK14		R_INTMASK.b14

	#define D_INTMASK0		BIT(0)
	#define D_INTMASK1		BIT(1)
	#define D_INTMASK2		BIT(2)
	#define D_INTMASK3		BIT(3)
	#define D_INTMASK4		BIT(4)
	#define D_INTMASK5		BIT(5)
	#define D_INTMASK6		BIT(6)
	#define D_INTMASK7		BIT(7)
	#define D_INTMASK8		BIT(8)
	#define D_INTMASK9		BIT(9)
	#define D_INTMASK10		BIT(10)
	#define D_INTMASK11		BIT(11)
	#define D_INTMASK12		BIT(12)
	#define D_INTMASK13		BIT(13)
	#define D_INTMASK14		BIT(14)


sfr	R_SPIS_CTL		_AT(SPIS_CTL);

	#define B_SPIS_MODEB0	R_SPIS_CTL.b0
	#define B_SPIS_MODEB1	R_SPIS_CTL.b1
	#define B_SPIS_ORERR_EN	R_SPIS_CTL.b2
	#define B_SPIS_ORERR	R_SPIS_CTL.b3
	#define B_SPIS_CS		R_SPIS_CTL.b4

	#define D_SPIS_MODEB0	BIT(0)
	#define D_SPIS_MODEB1	BIT(1)
	#define D_SPIS_ORERR_EN	BIT(2)
	#define D_SPIS_ORERR	BIT(3)
	#define D_SPIS_CS		BIT(4)


sfr R_SPIS_DAT		_AT(SPIS_DAT);

sfr R_SPI_CTL		_AT(SPI_CTL);

	#define B_SPI_BYTEB0	R_SPI_CTL.b0
	#define B_SPI_BYTEB1	R_SPI_CTL.b1
	#define B_SPI_BYTEB2	R_SPI_CTL.b2
	#define B_SPI_BYTEB3	R_SPI_CTL.b3
	#define B_SPI_SEND		R_SPI_CTL.b4
	#define B_SPI_RCV		R_SPI_CTL.b5
	#define B_SPI_CLR		R_SPI_CTL.b6
	#define B_SPI_DATAOK	R_SPI_CTL.b7
	#define B_SPI_DQSELB0	R_SPI_CTL.b8
	#define B_SPI_DQSELB1	R_SPI_CTL.b9
	#define B_SPI_ICS		R_SPI_CTL.b11
	#define B_SPI_CKSELB0	R_SPI_CTL.b12
	#define B_SPI_CKSELB1	R_SPI_CTL.b13
	#define B_SPI_CKSELB2	R_SPI_CTL.b14
	#define B_SPI_MODE		R_SPI_CTL.b15
	
	#define D_SPI_BYTEB0	BIT(0)
	#define D_SPI_BYTEB1	BIT(1)
	#define D_SPI_BYTEB2	BIT(2)
	#define D_SPI_BYTEB3	BIT(3)
	#define D_SPI_SEND		BIT(4)
	#define D_SPI_RCV		BIT(5)
	#define D_SPI_CLR		BIT(6)
	#define D_SPI_DATAOK	BIT(7)
	#define D_SPI_DQSELB0	BIT(8)
	#define D_SPI_DQSELB1	BIT(9)
	#define D_SPI_ICS		BIT(11)
	#define D_SPI_CKSELB0	BIT(12)
	#define D_SPI_CKSELB1	BIT(13)
	#define D_SPI_CKSELB2	BIT(14)
	#define D_SPI_MODE		BIT(15)


sfr R_SPI_DAT		_AT(SPI_DAT);

// --

sfr R_UART_CTL		_AT(UART_CTL);

	#define B_UART_TXIRQEN		R_UART_CTL.b0
	#define B_UART_RXIRQEN		R_UART_CTL.b1
	#define B_UART_PARITYEN		R_UART_CTL.b2
	#define B_USERBIT			R_UART_CTL.b3
	#define B_SET_BAUDRATE		R_UART_CTL.b4
	#define B_SET_IR_EN			R_UART_CTL.b5
	#define B_SET_UART_EN		R_UART_CTL.b6
	#define B_SET_PULSE_WIDTH	R_UART_CTL.b7
	#define B_SET_CARRIER_FREQ	R_UART_CTL.b8
	#define B_UART_PIN_TYPE		R_UART_CTL.b9
	#define B_UART_RXINT		R_UART_CTL.b10
	#define B_UART_OVRERR		R_UART_CTL.b11
	#define B_UART_PARITYERR	R_UART_CTL.b12
	#define B_UART_RXRDY		R_UART_CTL.b13
	#define B_UART_TXBUSY		R_UART_CTL.b14
	#define B_UART_RXERR		R_UART_CTL.b15

	#define D_UART_TXIRQEN		BIT(0)
	#define D_UART_RXIRQEN		BIT(1)
	#define D_UART_PARITYEN		BIT(2)
	#define D_USERBIT			BIT(3)
	#define D_SET_BAUDRATE		BIT(4)
	#define D_SET_IR_EN			BIT(5)
	#define D_SET_UART_EN		BIT(6)
	#define D_SET_PULSE_WIDTH	BIT(7)
	#define D_SET_CARRIER_FREQ	BIT(8)
	#define D_UART_PIN_TYPE		BIT(9)
	#define D_UART_RXINT		BIT(10)
	#define D_UART_OVRERR		BIT(11)
	#define D_UART_PARITYERR	BIT(12)
	#define D_UART_RXRDY		BIT(13)
	#define D_UART_TXBUSY		BIT(14)
	#define D_UART_RXERR		BIT(15)

sfr R_UART_DAT		_AT(UART_DAT);

sfr R_DPPWM			_AT(DPPWM);

	#define B_IOPAD_PWMN			R_DPPWM.b0
	#define B_IOPAD_PWMP			R_DPPWM.b1
	#define B_PWM2_USERBIT			R_DPPWM.b2
	#define B_PWM2_SET_PULSE_WIDTH	R_DPPWM.b3
	#define B_PWM2_SET_CARRIER_FREQ	R_DPPWM.b4
	#define B_SET_PWM_PIN_CONFIG	R_DPPWM.b5
	#define B_SET_OVERRIDE_SYNC		R_DPPWM.b6
	#define B_SET_OVERRIDE_CONFIG	R_DPPWM.b7
	#define B_PWM1P_OV_DATA			R_DPPWM.b8
	#define B_PWM1N_OV_DATA			R_DPPWM.b9
	#define B_PWM2P_OV_DATA			R_DPPWM.b10
	#define B_PWM2N_OV_DATA			R_DPPWM.b11
	#define B_PWM1_BRAKE_EN			R_DPPWM.b12
	#define B_PWM2_BRAKE_EN			R_DPPWM.b13
	#define B_SET_BRAKE_IN_TYPE		R_DPPWM.b14
	#define B_CLR_BRAKE_DO			R_DPPWM.b15
	
	#define D_IOPAD_PWMN			BIT(0)
	#define D_IOPAD_PWMP			BIT(1)
	#define D_PWM2_USERBIT			BIT(2)
	#define D_PWM2_SET_PULSE_WIDTH	BIT(3)
	#define D_PWM2_SET_CARRIER_FREQ	BIT(4)
	#define D_SET_PWM_PIN_CONFIG	BIT(5)
	#define D_SET_OVERRIDE_SYNC		BIT(6)
	#define D_SET_OVERRIDE_CONFIG	BIT(7)
	#define D_PWM1P_OV_DATA			BIT(8)
	#define D_PWM1N_OV_DATA			BIT(9)
	#define D_PWM2P_OV_DATA			BIT(10)
	#define D_PWM2N_OV_DATA			BIT(11)
	#define D_PWM1_BRAKE_EN			BIT(12)
	#define D_PWM2_BRAKE_EN			BIT(13)
	#define D_SET_BRAKE_IN_TYPE		BIT(14)
	#define D_CLR_BRAKE_DO			BIT(15)


sfr R_PUPD_PA		_AT(PUPD_PA);

	#define B_PULLDN_PA0	R_PUPD_PA.b0
	#define B_PULLDN_PA1	R_PUPD_PA.b1
	#define B_PULLDN_PA2	R_PUPD_PA.b2
	#define B_PULLDN_PA3	R_PUPD_PA.b3
	#define B_PULLDN_PA4	R_PUPD_PA.b4
	#define B_PULLDN_PA5	R_PUPD_PA.b5
	#define B_PULLUP_PA0	R_PUPD_PA.b8
	#define B_PULLUP_PA1	R_PUPD_PA.b9
	#define B_PULLUP_PA2	R_PUPD_PA.b10
	#define B_PULLUP_PA3	R_PUPD_PA.b11
	#define B_PULLUP_PA4	R_PUPD_PA.b12
	#define B_PULLUP_PA5	R_PUPD_PA.b13

	#define D_PULLDN_PA0	BIT(0)
	#define D_PULLDN_PA1	BIT(1)
	#define D_PULLDN_PA2	BIT(2)
	#define D_PULLDN_PA3	BIT(3)
	#define D_PULLDN_PA4	BIT(4)
	#define D_PULLDN_PA5	BIT(5)
	#define D_PULLUP_PA0	BIT(8)
	#define D_PULLUP_PA1	BIT(9)
	#define D_PULLUP_PA2	BIT(10)
	#define D_PULLUP_PA3	BIT(11)
	#define D_PULLUP_PA4	BIT(12)
	#define D_PULLUP_PA5	BIT(13)



sfr R_DACL			_AT(DACL);

sfr R_DACR			_AT(DACR);

sfr R_PUPD_PB		_AT(PUPD_PB);

	#define B_PULLDN_PB0	R_PUPD_PB.b0
	#define B_PULLDN_PB1	R_PUPD_PB.b1
	#define B_PULLDN_PB2	R_PUPD_PB.b2
	#define B_PULLDN_PB3	R_PUPD_PB.b3
	#define B_PULLDN_PB4	R_PUPD_PB.b4
	#define B_PULLDN_PB5	R_PUPD_PB.b5
	#define B_PULLUP_PB0	R_PUPD_PB.b8
	#define B_PULLUP_PB1	R_PUPD_PB.b9
	#define B_PULLUP_PB2	R_PUPD_PB.b10
	#define B_PULLUP_PB3	R_PUPD_PB.b11
	#define B_PULLUP_PB4	R_PUPD_PB.b12
	#define B_PULLUP_PB5	R_PUPD_PB.b13

	#define D_PULLDN_PB0	BIT(0)
	#define D_PULLDN_PB1	BIT(1)
	#define D_PULLDN_PB2	BIT(2)
	#define D_PULLDN_PB3	BIT(3)
	#define D_PULLDN_PB4	BIT(4)
	#define D_PULLDN_PB5	BIT(5)
	#define D_PULLUP_PB0	BIT(8)
	#define D_PULLUP_PB1	BIT(9)
	#define D_PULLUP_PB2	BIT(10)
	#define D_PULLUP_PB3	BIT(11)
	#define D_PULLUP_PB4	BIT(12)
	#define D_PULLUP_PB5	BIT(13)


sfr R_PUPD_PC		_AT(PUPD_PC);

	#define B_PULLDN_PC0	R_PUPD_PC.b0
	#define B_PULLDN_PC1	R_PUPD_PC.b1
	#define B_PULLDN_PC2	R_PUPD_PC.b2
	#define B_PULLDN_PC3	R_PUPD_PC.b3
	#define B_PULLDN_PC4	R_PUPD_PC.b4
	#define B_PULLDN_PC5	R_PUPD_PC.b5
	#define B_PULLDN_PC6	R_PUPD_PC.b6
	#define B_PULLDN_PC7	R_PUPD_PC.b7
	#define B_PULLUP_PC0	R_PUPD_PC.b8
	#define B_PULLUP_PC1	R_PUPD_PC.b9
	#define B_PULLUP_PC2	R_PUPD_PC.b10
	#define B_PULLUP_PC3	R_PUPD_PC.b11
	#define B_PULLUP_PC4	R_PUPD_PC.b12
	#define B_PULLUP_PC5	R_PUPD_PC.b13
	#define B_PULLUP_PC6	R_PUPD_PC.b14
	#define B_PULLUP_PC7	R_PUPD_PC.b15

	#define D_PULLDN_PC0	BIT(0)
	#define D_PULLDN_PC1	BIT(1)
	#define D_PULLDN_PC2	BIT(2)
	#define D_PULLDN_PC3	BIT(3)
	#define D_PULLDN_PC4	BIT(4)
	#define D_PULLDN_PC5	BIT(5)
	#define D_PULLDN_PC6	BIT(6)
	#define D_PULLDN_PC7	BIT(7)
	#define D_PULLUP_PC0	BIT(8)
	#define D_PULLUP_PC1	BIT(9)
	#define D_PULLUP_PC2	BIT(10)
	#define D_PULLUP_PC3	BIT(11)
	#define D_PULLUP_PC4	BIT(12)
	#define D_PULLUP_PC5	BIT(13)
	#define D_PULLUP_PC6	BIT(14)
	#define D_PULLUP_PC7	BIT(15)


sfr R_MISC			_AT(MISC);

	#define B_WDTRST		R_MISC.b0
	#define B_LVRRST		R_MISC.b1
	#define B_EXRST			R_MISC.b2
	#define B_PWM_MUTE		R_MISC.b5
	#define B_PWMPIO_EN		R_MISC.b6
	#define B_PWMNIO_EN		R_MISC.b7
	#define B_LDO33EN		R_MISC.b9
	#define B_MODX			R_MISC.b10

	#define D_WDTRST		BIT(0)
	#define D_LVRRST		BIT(1)
	#define D_EXRST			BIT(2)
	#define D_PWM_MUTE		BIT(5)
	#define D_PWMPIO_EN		BIT(6)
	#define D_PWMNIO_EN		BIT(7)
	#define D_LDO33EN		BIT(9)
	#define D_MODX			BIT(10)



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



// ============

sfr R_ADH_CFG0		_AT(ADH_CFG0);

	#define B_ADH_ADCS_B0	R_ADH_CFG0.b0
	#define B_ADH_ADCS_B1	R_ADH_CFG0.b1
	#define B_ADH_ADCS_B2	R_ADH_CFG0.b2
	#define B_ADH_ACQT_B0	R_ADH_CFG0.b4
	#define B_ADH_ACQT_B1	R_ADH_CFG0.b5
	#define B_ADH_TRGSRC_B0	R_ADH_CFG0.b8
	#define B_ADH_TRGSRC_B1	R_ADH_CFG0.b9
	#define B_ADH_TRGSRC_B2	R_ADH_CFG0.b10
	#define B_ADH_EN		R_ADH_CFG0.b15

	#define D_ADH_ADCS_B0	BIT(0)
	#define D_ADH_ADCS_B1	BIT(1)
	#define D_ADH_ADCS_B2	BIT(2)
	#define D_ADH_ACQT_B0	BIT(4)
	#define D_ADH_ACQT_B1	BIT(5)
	#define D_ADH_TRGSRC_B0	BIT(8)
	#define D_ADH_TRGSRC_B1	BIT(9)
	#define D_ADH_TRGSRC_B2	BIT(10)
	#define D_ADH_EN		BIT(15)


sfr R_ADH_CFG1		_AT(ADH_CFG1);

	#define B_ADH_SW_PC6	R_ADH_CFG1.b0
	#define B_ADH_SW_PC7	R_ADH_CFG1.b1
	#define B_ADH_SW_PB0	R_ADH_CFG1.b2
	#define B_ADH_SW_PB1	R_ADH_CFG1.b3
	#define B_ADH_SW_PB2	R_ADH_CFG1.b4
	#define B_ADH_SW_PB3	R_ADH_CFG1.b5
	#define B_ADH_SW_PB4	R_ADH_CFG1.b6
	#define B_ADH_SW_PB5	R_ADH_CFG1.b7
	#define B_ADH_SW_MIC	R_ADH_CFG1.b8
	#define B_ADH_SW_BGO	R_ADH_CFG1.b9
	#define B_ADH_SW_TEMP	R_ADH_CFG1.b11
	#define B_ADH_SWTRG		R_ADH_CFG1.b15

	#define D_ADH_SW_PC6	BIT(0)
	#define D_ADH_SW_PC7	BIT(1)
	#define D_ADH_SW_PB0	BIT(2)
	#define D_ADH_SW_PB1	BIT(3)
	#define D_ADH_SW_PB2	BIT(4)
	#define D_ADH_SW_PB3	BIT(5)
	#define D_ADH_SW_PB4	BIT(6)
	#define D_ADH_SW_PB5	BIT(7)
	#define D_ADH_SW_MIC	BIT(8)
	#define D_ADH_SW_BGO	BIT(9)
	#define D_ADH_SW_TEMP	BIT(11)
	#define D_ADH_SWTRG		BIT(15)

sfr R_ADH_CFG2		_AT(ADH_CFG2);

sfr R_ADH_CFG3		_AT(ADH_CFG3);

sfr R_ADH_DO		_AT(ADH_DO);

	#define B_ADH_DO_B0		R_ADH_DO.b6
	#define B_ADH_DO_B1		R_ADH_DO.b7
	#define B_ADH_DO_B2		R_ADH_DO.b8
	#define B_ADH_DO_B3		R_ADH_DO.b9
	#define B_ADH_DO_B4		R_ADH_DO.b10
	#define B_ADH_DO_B5		R_ADH_DO.b11
	#define B_ADH_DO_B6		R_ADH_DO.b12
	#define B_ADH_DO_B7		R_ADH_DO.b13
	#define B_ADH_DO_B8		R_ADH_DO.b14
	#define B_ADH_DO_B9		R_ADH_DO.b15

	#define D_ADH_DO_B0		BIT(6)
	#define D_ADH_DO_B1		BIT(7)
	#define D_ADH_DO_B2		BIT(8)
	#define D_ADH_DO_B3		BIT(9)
	#define D_ADH_DO_B4		BIT(10)
	#define D_ADH_DO_B5		BIT(11)
	#define D_ADH_DO_B6		BIT(12)
	#define D_ADH_DO_B7		BIT(13)
	#define D_ADH_DO_B8		BIT(14)
	#define D_ADH_DO_B9		BIT(15)

sfr R_ADL_CFG		_AT(ADL_CFG);

sfr R_TRA_CFG		_AT(TRA_CFG);

	#define B_TRA_BNUM_B0	R_TRA_CFG.b0
	#define B_TRA_BNUM_B1	R_TRA_CFG.b1
	#define B_TRA_BNUM_B2	R_TRA_CFG.b2
	#define B_TRA_BNUM_B3	R_TRA_CFG.b3
	#define B_TRA_BNUM_B4	R_TRA_CFG.b4
	#define B_TRA_CKF		R_TRA_CFG.b5
	#define B_TRA_CKSEL		R_TRA_CFG.b6
	#define B_TRA_SYNC_EN	R_TRA_CFG.b7
	#define B_TRA_SEND		R_TRA_CFG.b8
	#define B_TRA_RCV		R_TRA_CFG.b9
	#define B_TRA_AUTOP		R_TRA_CFG.b10
	#define B_TRA_FIFOMODE	R_TRA_CFG.b11
	#define B_TRA_INT_EN	R_TRA_CFG.b12
	#define B_TRA_EN		R_TRA_CFG.b15

	#define D_TRA_BNUM_B0	BIT(0)
	#define D_TRA_BNUM_B1	BIT(1)
	#define D_TRA_BNUM_B2	BIT(2)
	#define D_TRA_BNUM_B3	BIT(3)
	#define D_TRA_BNUM_B4	BIT(4)
	#define D_TRA_CKF		BIT(5)
	#define D_TRA_CKSEL		BIT(6)
	#define D_TRA_SYNC_EN	BIT(7)
	#define D_TRA_SEND		BIT(8)
	#define D_TRA_RCV		BIT(9)
	#define D_TRA_AUTOP		BIT(10)
	#define D_TRA_FIFOMODE	BIT(11)
	#define D_TRA_INT_EN	BIT(12)
	#define D_TRA_EN		BIT(15)

sfr R_TRA_DAT		_AT(TRA_DAT);

sfr R_I2C_CTL		_AT(I2C_CTL);

	#define B_I2C_SADDR_B0	R_I2C_CTL.b0
	#define B_I2C_SADDR_B1	R_I2C_CTL.b1
	#define B_I2C_SADDR_B2	R_I2C_CTL.b2
	#define B_I2C_SADDR_B3	R_I2C_CTL.b3
	#define B_I2C_SADDR_B4	R_I2C_CTL.b4
	#define B_I2C_SADDR_B5	R_I2C_CTL.b5
	#define B_I2C_SADDR_B6	R_I2C_CTL.b6
	#define B_I2C_PSCALE_B0	R_I2C_CTL.b7
	#define B_I2C_PSCALE_B1	R_I2C_CTL.b8
	#define B_I2C_PSCALE_B2	R_I2C_CTL.b9
	#define B_I2C_PSCALE_B3	R_I2C_CTL.b10
	#define B_I2C_PSCALE_B4	R_I2C_CTL.b11
	#define B_I2C_PSCALE_B5	R_I2C_CTL.b12
	#define B_I2C_PSCALE_B6	R_I2C_CTL.b13
	#define B_I2C_MASTER	R_I2C_CTL.b14
	#define B_I2C_ENABLE	R_I2C_CTL.b15

	#define D_I2C_SADDR_B0	BIT(0)
	#define D_I2C_SADDR_B1	BIT(1)
	#define D_I2C_SADDR_B2	BIT(2)
	#define D_I2C_SADDR_B3	BIT(3)
	#define D_I2C_SADDR_B4	BIT(4)
	#define D_I2C_SADDR_B5	BIT(5)
	#define D_I2C_SADDR_B6	BIT(6)
	#define D_I2C_PSCALE_B0	BIT(7)
	#define D_I2C_PSCALE_B1	BIT(8)
	#define D_I2C_PSCALE_B2	BIT(9)
	#define D_I2C_PSCALE_B3	BIT(10)
	#define D_I2C_PSCALE_B4	BIT(11)
	#define D_I2C_PSCALE_B5	BIT(12)
	#define D_I2C_PSCALE_B6	BIT(13)
	#define D_I2C_MASTER	BIT(14)
	#define D_I2C_ENABLE	BIT(15)


sfr R_I2C_DAT		_AT(I2C_DAT);

sfr R_I2C_CMD		_AT(I2C_CMD);

	#define B_I2C_MACK		R_I2C_CMD.b0
	#define B_I2C_WR		R_I2C_CMD.b1
	#define B_I2C_RD		R_I2C_CMD.b2
	#define B_I2C_STO		R_I2C_CMD.b3
	#define B_I2C_STA		R_I2C_CMD.b4

	#define D_I2C_MACK		BIT(0)
	#define D_I2C_WR		BIT(1)
	#define D_I2C_RD		BIT(2)
	#define D_I2C_STO		BIT(3)
	#define D_I2C_STA		BIT(4)


sfr R_I2C_SR		_AT(I2C_SR);

	#define B_I2C_BUSY		R_I2C_SR.b0
	#define B_I2C_SACK		R_I2C_SR.b1
	#define B_I2C_TYPE		R_I2C_SR.b2
	#define B_I2C_MATCH		R_I2C_SR.b3
	#define B_I2C_RW		R_I2C_SR.b4

	#define D_I2C_BUSY		BIT(0)
	#define D_I2C_SACK		BIT(1)
	#define D_I2C_TYPE		BIT(2)
	#define D_I2C_MATCH		BIT(3)
	#define D_I2C_RW		BIT(4)


sfr R_I80_CTL		_AT(I80_CTL);

sfr R_I80_INX		_AT(I80_INX);

sfr R_I80_DAT		_AT(I80_DAT);

sfr R_I80_RADR		_AT(I80_RADR);

sfr R_I80_DMANUM	_AT(I80_DMANUM);

sfr R_SD_DMA_CTL	_AT(SD_DMA_CTL);

sfr R_SD_DMA_RADR	_AT(SD_DMA_RADR);

sfr R_SD_DMA_DMANUM	_AT(SD_DMA_DMANUM);

sfr R_SPI_DMA_CTL	_AT(SPI_DMA_CTL);

	#define B_DMA_BUSY		R_SPI_DMA_CTL.b0
	#define B_DMA_EN		R_SPI_DMA_CTL.b1
	#define B_DMA_DIR		R_SPI_DMA_CTL.b2
	#define B_DMA_AUTO_RSET	R_SPI_DMA_CTL.b3
	#define B_SET_CTRL_MODE	R_SPI_DMA_CTL.b4

	#define D_DMA_BUSY		BIT(0)
	#define D_DMA_EN		BIT(1)
	#define D_DMA_DIR		BIT(2)
	#define D_DMA_AUTO_RSET	BIT(3)
	#define D_SET_CTRL_MODE	BIT(4)


sfr R_SPI_DMA_RADR		_AT(SPI_DMA_RADR);

sfr R_SPI_DMA_DMANUM	_AT(SPI_DMA_DMANUM);



sfr R_SSC			_AT(SSC);

sfr R_MIC			_AT(MIC);

	#define B_MIC_PGA0		R_MIC.b0
	#define B_MIC_PGA1		R_MIC.b1
	#define B_MIC_PGA2		R_MIC.b2
	#define B_MIC_PGA3		R_MIC.b3
	#define B_MIC_PGA4		R_MIC.b4
	#define B_MIC_PGA5		R_MIC.b5
	#define B_MIC_EN		R_MIC.b8
	#define B_TEMP_EN		R_MIC.b12

	#define D_MIC_PGA0		BIT(0)
	#define D_MIC_PGA1		BIT(1)
	#define D_MIC_PGA2		BIT(2)
	#define D_MIC_PGA3		BIT(3)
	#define D_MIC_PGA4		BIT(4)
	#define D_MIC_PGA5		BIT(5)
	#define D_MIC_EN		BIT(8)
	#define D_TEMP_EN		BIT(12)


sfr R_GREEN			_AT(GREEN);

sfr R_SLEEP			_AT(SLEEP);

sfr R_SPEED			_AT(SPEED);

sfr R_PR			_AT(PR);


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
#define EnableInt6()		asml("set io[INTENA].b6")
#define EnableInt7()		asml("set io[INTENA].b7")
#define EnableInt8()		asml("set io[INTENA].b8")
#define EnableInt9()		asml("set io[INTENA].b9")
#define EnableInt10()		asml("set io[INTENA].b10")
#define EnableInt11()		asml("set io[INTENA].b11")
#define EnableInt12()		asml("set io[INTENA].b12")
#define EnableInt13()		asml("set io[INTENA].b13")
#define EnableInt14()		asml("set io[INTENA].b14")
#define EnableInt15()		asml("set io[INTENA].b15")

#define DisableInt0()		asml("clr io[INTENA].b0")
#define DisableInt1()		asml("clr io[INTENA].b1")
#define DisableInt2()		asml("clr io[INTENA].b2")
#define DisableInt3()		asml("clr io[INTENA].b3")
#define DisableInt4()		asml("clr io[INTENA].b4")
#define DisableInt5()		asml("clr io[INTENA].b5")
#define DisableInt6()		asml("clr io[INTENA].b6")
#define DisableInt7()		asml("clr io[INTENA].b7")
#define DisableInt8()		asml("clr io[INTENA].b8")
#define DisableInt9()		asml("clr io[INTENA].b9")
#define DisableInt10()		asml("clr io[INTENA].b10")
#define DisableInt11()		asml("clr io[INTENA].b11")
#define DisableInt12()		asml("clr io[INTENA].b12")
#define DisableInt13()		asml("clr io[INTENA].b13")
#define DisableInt14()		asml("clr io[INTENA].b14")
#define DisableInt15()		asml("clr io[INTENA].b15")

#define ClrIntFlag0()		asml("clr io[INTREQ].b0")
#define ClrIntFlag1()		asml("clr io[INTREQ].b1")
#define ClrIntFlag2()		asml("clr io[INTREQ].b2")
#define ClrIntFlag3()		asml("clr io[INTREQ].b3")
#define ClrIntFlag4()		asml("clr io[INTREQ].b4")
#define ClrIntFlag5()		asml("clr io[INTREQ].b5")
#define ClrIntFlag6()		asml("clr io[INTREQ].b6")
#define ClrIntFlag7()		asml("clr io[INTREQ].b7")
#define ClrIntFlag8()		asml("clr io[INTREQ].b8")
#define ClrIntFlag9()		asml("clr io[INTREQ].b9")
#define ClrIntFlag10()		asml("clr io[INTREQ].b10")
#define ClrIntFlag11()		asml("clr io[INTREQ].b11")
#define ClrIntFlag12()		asml("clr io[INTREQ].b12")
#define ClrIntFlag13()		asml("clr io[INTREQ].b13")
#define ClrIntFlag14()		asml("clr io[INTREQ].b14")
#define ClrIntFlag15()		asml("clr io[INTREQ].b15")

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
#define PUSH_MACOP()		asml("push MACOP")

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
#define POP_MACOP()			asml("pop MACOP")


#define set_PCB(x)			{ LoadAR(x); asml("PCB = AR"); }
#define set_DACL(x)			{ LoadAR(x); asml("io[DACL] = AR"); }
#define set_DACR(x)			{ LoadAR(x); asml("io[DACR] = AR"); }

#define set_SPI_CTL0()		asml("set io[SPI_CTL].b0")
#define set_SPI_CTL1()		asml("set io[SPI_CTL].b1")
#define set_SPI_CTL2()		asml("set io[SPI_CTL].b2")
#define set_SPI_CTL3()		asml("set io[SPI_CTL].b3")
#define set_SPI_CTL4()		asml("set io[SPI_CTL].b4")
#define set_SPI_CTL5()		asml("set io[SPI_CTL].b5")
#define set_SPI_CTL6()		asml("set io[SPI_CTL].b6")
#define set_SPI_CTL7()		asml("set io[SPI_CTL].b7")
#define set_SPI_CTL8()		asml("set io[SPI_CTL].b8")
#define set_SPI_CTL9()		asml("set io[SPI_CTL].b9")
#define set_SPI_CTL10()		asml("set io[SPI_CTL].b10")
#define set_SPI_CTL11()		asml("set io[SPI_CTL].b11")
#define set_SPI_CTL12()		asml("set io[SPI_CTL].b12")
#define set_SPI_CTL13()		asml("set io[SPI_CTL].b13")
#define set_SPI_CTL14()		asml("set io[SPI_CTL].b14")
#define set_SPI_CTL15()		asml("set io[SPI_CTL].b15")

#define clr_SPI_CTL0()		asml("clr io[SPI_CTL].b0")
#define clr_SPI_CTL1()		asml("clr io[SPI_CTL].b1")
#define clr_SPI_CTL2()		asml("clr io[SPI_CTL].b2")
#define clr_SPI_CTL3()		asml("clr io[SPI_CTL].b3")
#define clr_SPI_CTL4()		asml("clr io[SPI_CTL].b4")
#define clr_SPI_CTL5()		asml("clr io[SPI_CTL].b5")
#define clr_SPI_CTL6()		asml("clr io[SPI_CTL].b6")
#define clr_SPI_CTL7()		asml("clr io[SPI_CTL].b7")
#define clr_SPI_CTL8()		asml("clr io[SPI_CTL].b8")
#define clr_SPI_CTL9()		asml("clr io[SPI_CTL].b9")
#define clr_SPI_CTL10()		asml("clr io[SPI_CTL].b10")
#define clr_SPI_CTL11()		asml("clr io[SPI_CTL].b11")
#define clr_SPI_CTL12()		asml("clr io[SPI_CTL].b12")
#define clr_SPI_CTL13()		asml("clr io[SPI_CTL].b13")
#define clr_SPI_CTL14()		asml("clr io[SPI_CTL].b14")
#define clr_SPI_CTL15()		asml("clr io[SPI_CTL].b15")


// ~~

#define set_PUPD_PA(v)		{ LoadAR(v); asml("io[PUPD_PA] = AR"); }

#define set_PUPD_PA0()		asml("set io[PUPD_PA].b0")
#define set_PUPD_PA1()		asml("set io[PUPD_PA].b1")
#define set_PUPD_PA2()		asml("set io[PUPD_PA].b2")
#define set_PUPD_PA3()		asml("set io[PUPD_PA].b3")
#define set_PUPD_PA4()		asml("set io[PUPD_PA].b4")
#define set_PUPD_PA5()		asml("set io[PUPD_PA].b5")
#define set_PUPD_PA6()		asml("set io[PUPD_PA].b6")
#define set_PUPD_PA7()		asml("set io[PUPD_PA].b7")
#define set_PUPD_PA8()		asml("set io[PUPD_PA].b8")
#define set_PUPD_PA9()		asml("set io[PUPD_PA].b9")
#define set_PUPD_PA10()		asml("set io[PUPD_PA].b10")
#define set_PUPD_PA11()		asml("set io[PUPD_PA].b11")
#define set_PUPD_PA12()		asml("set io[PUPD_PA].b12")
#define set_PUPD_PA13()		asml("set io[PUPD_PA].b13")
#define set_PUPD_PA14()		asml("set io[PUPD_PA].b14")
#define set_PUPD_PA15()		asml("set io[PUPD_PA].b15")

#define clr_PUPD_PA0()		asml("clr io[PUPD_PA].b0")
#define clr_PUPD_PA1()		asml("clr io[PUPD_PA].b2")
#define clr_PUPD_PA3()		asml("clr io[PUPD_PA].b3")
#define clr_PUPD_PA4()		asml("clr io[PUPD_PA].b4")
#define clr_PUPD_PA5()		asml("clr io[PUPD_PA].b5")
#define clr_PUPD_PA6()		asml("clr io[PUPD_PA].b6")
#define clr_PUPD_PA7()		asml("clr io[PUPD_PA].b7")
#define clr_PUPD_PA8()		asml("clr io[PUPD_PA].b8")
#define clr_PUPD_PA9()		asml("clr io[PUPD_PA].b9")
#define clr_PUPD_PA10()		asml("clr io[PUPD_PA].b10")
#define clr_PUPD_PA11()		asml("clr io[PUPD_PA].b11")
#define clr_PUPD_PA12()		asml("clr io[PUPD_PA].b12")
#define clr_PUPD_PA13()		asml("clr io[PUPD_PA].b13")
#define clr_PUPD_PA14()		asml("clr io[PUPD_PA].b14")
#define clr_PUPD_PA15()		asml("clr io[PUPD_PA].b15")

// ~~

#define set_PUPD_PB(v)		{ LoadAR(v); asml("io[PUPD_PB] = AR"); }

#define set_PUPD_PB0()		asml("set io[PUPD_PB].b0")
#define set_PUPD_PB1()		asml("set io[PUPD_PB].b1")
#define set_PUPD_PB2()		asml("set io[PUPD_PB].b2")
#define set_PUPD_PB3()		asml("set io[PUPD_PB].b3")
#define set_PUPD_PB4()		asml("set io[PUPD_PB].b4")
#define set_PUPD_PB5()		asml("set io[PUPD_PB].b5")
#define set_PUPD_PB6()		asml("set io[PUPD_PB].b6")
#define set_PUPD_PB7()		asml("set io[PUPD_PB].b7")
#define set_PUPD_PB8()		asml("set io[PUPD_PB].b8")
#define set_PUPD_PB9()		asml("set io[PUPD_PB].b9")
#define set_PUPD_PB10()		asml("set io[PUPD_PB].b10")
#define set_PUPD_PB11()		asml("set io[PUPD_PB].b11")
#define set_PUPD_PB12()		asml("set io[PUPD_PB].b12")
#define set_PUPD_PB13()		asml("set io[PUPD_PB].b13")
#define set_PUPD_PB14()		asml("set io[PUPD_PB].b14")
#define set_PUPD_PB15()		asml("set io[PUPD_PB].b15")

#define clr_PUPD_PB0()		asml("clr io[PUPD_PB].b0")
#define clr_PUPD_PB1()		asml("clr io[PUPD_PB].b2")
#define clr_PUPD_PB3()		asml("clr io[PUPD_PB].b3")
#define clr_PUPD_PB4()		asml("clr io[PUPD_PB].b4")
#define clr_PUPD_PB5()		asml("clr io[PUPD_PB].b5")
#define clr_PUPD_PB6()		asml("clr io[PUPD_PB].b6")
#define clr_PUPD_PB7()		asml("clr io[PUPD_PB].b7")
#define clr_PUPD_PB8()		asml("clr io[PUPD_PB].b8")
#define clr_PUPD_PB9()		asml("clr io[PUPD_PB].b9")
#define clr_PUPD_PB10()		asml("clr io[PUPD_PB].b10")
#define clr_PUPD_PB11()		asml("clr io[PUPD_PB].b11")
#define clr_PUPD_PB12()		asml("clr io[PUPD_PB].b12")
#define clr_PUPD_PB13()		asml("clr io[PUPD_PB].b13")
#define clr_PUPD_PB14()		asml("clr io[PUPD_PB].b14")
#define clr_PUPD_PB15()		asml("clr io[PUPD_PB].b15")

// ~!~

#define set_PUPD_PC(v)		{ LoadAR(v); asml("io[PUPD_PC] = AR"); }

#define set_PUPD_PC0()		asml("set io[PUPD_PC].b0")
#define set_PUPD_PC1()		asml("set io[PUPD_PC].b1")
#define set_PUPD_PC2()		asml("set io[PUPD_PC].b2")
#define set_PUPD_PC3()		asml("set io[PUPD_PC].b3")
#define set_PUPD_PC4()		asml("set io[PUPD_PC].b4")
#define set_PUPD_PC5()		asml("set io[PUPD_PC].b5")
#define set_PUPD_PC6()		asml("set io[PUPD_PC].b6")
#define set_PUPD_PC7()		asml("set io[PUPD_PC].b7")
#define set_PUPD_PC8()		asml("set io[PUPD_PC].b8")
#define set_PUPD_PC9()		asml("set io[PUPD_PC].b9")
#define set_PUPD_PC10()		asml("set io[PUPD_PC].b10")
#define set_PUPD_PC11()		asml("set io[PUPD_PC].b11")
#define set_PUPD_PC12()		asml("set io[PUPD_PC].b12")
#define set_PUPD_PC13()		asml("set io[PUPD_PC].b13")
#define set_PUPD_PC14()		asml("set io[PUPD_PC].b14")
#define set_PUPD_PC15()		asml("set io[PUPD_PC].b15")

#define clr_PUPD_PC0()		asml("clr io[PUPD_PC].b0")
#define clr_PUPD_PC1()		asml("clr io[PUPD_PC].b2")
#define clr_PUPD_PC3()		asml("clr io[PUPD_PC].b3")
#define clr_PUPD_PC4()		asml("clr io[PUPD_PC].b4")
#define clr_PUPD_PC5()		asml("clr io[PUPD_PC].b5")
#define clr_PUPD_PC6()		asml("clr io[PUPD_PC].b6")
#define clr_PUPD_PC7()		asml("clr io[PUPD_PC].b7")
#define clr_PUPD_PC8()		asml("clr io[PUPD_PC].b8")
#define clr_PUPD_PC9()		asml("clr io[PUPD_PC].b9")
#define clr_PUPD_PC10()		asml("clr io[PUPD_PC].b10")
#define clr_PUPD_PC11()		asml("clr io[PUPD_PC].b11")
#define clr_PUPD_PC12()		asml("clr io[PUPD_PC].b12")
#define clr_PUPD_PC13()		asml("clr io[PUPD_PC].b13")
#define clr_PUPD_PC14()		asml("clr io[PUPD_PC].b14")
#define clr_PUPD_PC15()		asml("clr io[PUPD_PC].b15")


// ~!~

#define set_UART_CTL0()		asml("set io[UART_CTL].b0")
#define set_UART_CTL1()		asml("set io[UART_CTL].b1")
#define set_UART_CTL2()		asml("set io[UART_CTL].b2")
#define set_UART_CTL3()		asml("set io[UART_CTL].b3")
#define set_UART_CTL4()		asml("set io[UART_CTL].b4")
#define set_UART_CTL5()		asml("set io[UART_CTL].b5")
#define set_UART_CTL6()		asml("set io[UART_CTL].b6")
#define set_UART_CTL7()		asml("set io[UART_CTL].b7")
#define set_UART_CTL8()		asml("set io[UART_CTL].b8")
#define set_UART_CTL9()		asml("set io[UART_CTL].b9")
#define set_UART_CTL10()	asml("set io[UART_CTL].b10")
#define set_UART_CTL11()	asml("set io[UART_CTL].b11")
#define set_UART_CTL12()	asml("set io[UART_CTL].b12")
#define set_UART_CTL13()	asml("set io[UART_CTL].b13")
#define set_UART_CTL14()	asml("set io[UART_CTL].b14")
#define set_UART_CTL15()	asml("set io[UART_CTL].b15")

#define clr_UART_CTL0()		asml("clr io[UART_CTL].b0")
#define clr_UART_CTL1()		asml("clr io[UART_CTL].b1")
#define clr_UART_CTL2()		asml("clr io[UART_CTL].b2")
#define clr_UART_CTL3()		asml("clr io[UART_CTL].b3")
#define clr_UART_CTL4()		asml("clr io[UART_CTL].b4")
#define clr_UART_CTL5()		asml("clr io[UART_CTL].b5")
#define clr_UART_CTL6()		asml("clr io[UART_CTL].b6")
#define clr_UART_CTL7()		asml("clr io[UART_CTL].b7")
#define clr_UART_CTL8()		asml("clr io[UART_CTL].b8")
#define clr_UART_CTL9()		asml("clr io[UART_CTL].b9")
#define clr_UART_CTL10()	asml("clr io[UART_CTL].b10")
#define clr_UART_CTL11()	asml("clr io[UART_CTL].b11")
#define clr_UART_CTL12()	asml("clr io[UART_CTL].b12")
#define clr_UART_CTL13()	asml("clr io[UART_CTL].b13")
#define clr_UART_CTL14()	asml("clr io[UART_CTL].b14")
#define clr_UART_CTL15()	asml("clr io[UART_CTL].b15")

#define set_DPPWM0()		asml("set io[DPPWM].b0")
#define set_DPPWM1()		asml("set io[DPPWM].b1")
#define set_DPPWM2()		asml("set io[DPPWM].b2")
#define set_DPPWM3()		asml("set io[DPPWM].b3")
#define set_DPPWM4()		asml("set io[DPPWM].b4")
#define set_DPPWM5()		asml("set io[DPPWM].b5")
#define set_DPPWM6()		asml("set io[DPPWM].b6")
#define set_DPPWM7()		asml("set io[DPPWM].b7")
#define set_DPPWM8()		asml("set io[DPPWM].b8")
#define set_DPPWM9()		asml("set io[DPPWM].b9")
#define set_DPPWM10()		asml("set io[DPPWM].b10")
#define set_DPPWM11()		asml("set io[DPPWM].b11")
#define set_DPPWM12()		asml("set io[DPPWM].b12")
#define set_DPPWM13()		asml("set io[DPPWM].b13")
#define set_DPPWM14()		asml("set io[DPPWM].b14")
#define set_DPPWM15()		asml("set io[DPPWM].b15")

#define clr_DPPWM0()		asml("clr io[DPPWM].b0")
#define clr_DPPWM1()		asml("clr io[DPPWM].b1")
#define clr_DPPWM2()		asml("clr io[DPPWM].b2")
#define clr_DPPWM3()		asml("clr io[DPPWM].b3")
#define clr_DPPWM4()		asml("clr io[DPPWM].b4")
#define clr_DPPWM5()		asml("clr io[DPPWM].b5")
#define clr_DPPWM6()		asml("clr io[DPPWM].b6")
#define clr_DPPWM7()		asml("clr io[DPPWM].b7")
#define clr_DPPWM8()		asml("clr io[DPPWM].b8")
#define clr_DPPWM9()		asml("clr io[DPPWM].b9")
#define clr_DPPWM10()		asml("clr io[DPPWM].b10")
#define clr_DPPWM11()		asml("clr io[DPPWM].b11")
#define clr_DPPWM12()		asml("clr io[DPPWM].b12")
#define clr_DPPWM13()		asml("clr io[DPPWM].b13")
#define clr_DPPWM14()		asml("clr io[DPPWM].b14")
#define clr_DPPWM15()		asml("clr io[DPPWM].b15")


// -=-=

#define Reset_REAL_T()		{ asml("set io[MISC].b8"); \
							  asml("set io[MISC].b9"); \
							  asml("io[Real_T] = AR"); }

#define OpenLDO33V()		asml("set io[MISC].b9")


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

// ADPHD

#define set_ADPHD(v)	{ LoadAR(v); asml("ADPHD = AR"); }
import int 	get_ADPHD(void);

// ADPDAT

#define set_ADPDAT(v)	{ LoadAR(v); asml("ADPDAT = AR"); }
import int 	get_ADPDAT(void);

// ADPPCM

#define set_ADPPCM(x)	{ LoadAR(x); asml("ADPPCM = AR"); }
import int 	get_ADPPCM(void);

// ADH_CFG0
import void set_ADH_CFG0(int value);
import int 	get_ADH_CFG0(void);

// ADH_CFG1
import void set_ADH_CFG1(int value);
import int 	get_ADH_CFG1(void);

// ADH_DO
import int 	get_ADH_DO(void);

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


// I/O
import void set_UART(void);
import void clr_UART(void);

import void set_SPIM(void);
import void clr_SPIM(void);

import void set_SPIS(void);
import void clr_SPIS(void);

import void set_IntVWR(void);
import void clr_IntVWR(void);

import void set_SD(void);
import void clr_SD(void);

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


// by Tsao
import void set_SPIS_CTL(int value);
import int	get_SPIS_CTL(void);

import void set_SPIS_DAT(int value);
import int	get_SPIS_DAT(void);

import void set_SPI_CTL(int value);
import int	get_SPI_CTL(void);

import void set_SPI_DAT(int value);
import int	get_SPI_DAT(void);

import void set_SD_CTL(int value);
import int	get_SD_CTL(void);

import void set_SD_DAT(int value);
import int	get_SD_DAT(void);

import void set_SD_RSP(int value);
import int	get_SD_RSP(void);

import void set_UART_CTL(int value);
import int	get_UART_CTL(void);

import void set_UART_DAT(int value);
import int	get_UART_DAT(void);

import void set_MISC(int value);
import int	get_MISC(void);

// import void set_IOP_IX(int value);
// import void set_IOP_DAT(int value);

#define set_IOP_IX(v)		{ LoadAR(v); asml("io[IOP_IX] = AR"); }
#define set_IOP_DAT(v)		{ LoadAR(v); asml("io[IOP_DAT] = AR"); }

// MAC

#define set_MACOP(v)		{ LoadAR(v); asml("MACOP = AR"); }
import int	get_MACOP(void);

#define set_MACNT(v)		{ LoadAR(v); asml("MACNT = AR"); }


import int vXCHG(int V)	rpdax;

import void set_GreenMode(int value);
import void cpuHalt(void);
import void cpuStall(int cycle);
import void set_SystemSpeed(int value);

import int FA(void);

// SPI_DMA_CTL

#define set_SPI_DMA_CTL(v)	{ LoadAR(v); asml("io[SPI_DMA_CTL] = AR"); }
import int get_SPI_DMA_CTL(void);

// SPI_DMA_RADR

#define set_SPI_DMA_RADR(v)	{ LoadAR(v); asml("io[SPI_DMA_RADR] = AR"); }
import int get_SPI_DMA_RADR(void);

// SPI_DMA_DMANUM

#define set_SPI_DMA_DMANUM(v)	{ LoadAR(v); asml("io[SPI_DMA_DMANUM] = AR"); }
import int get_SPI_DMA_DMANUM(void);

// MIC

#define set_MIC(x)			{ LoadAR(x); asml("io[MIC] = AR"); }



// tick

extern void ClearTickCount(void);
extern unsigned long GetTickCount(void);
extern void delay(unsigned short ms);




