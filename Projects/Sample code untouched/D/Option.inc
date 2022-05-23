//--------------------------------------------------------------------------------------------------
// TRITAN FDSP-IDE Option define file.
// WARNING! All changes made in this file will be lost when recompiling.
//--------------------------------------------------------------------------------------------------
// Part number    : TR16F096A
// Option version : 2.8
// Base Information--------------------------------------------------------------------------------
#define       _OPT_TR16F096A_                
#define       _OPT_PROMSize_                0x18000   //PROM Size
#define       _OPT_SRAMSize_                6144      //SRAM Size
// I/O Configuration--------------------------------------------------------------------------------
#define       _OPT_EXTReset_EN_             0         //EXT Reset Enable,0:Disable,1:Enable
#define       _OPT_EXTINT1_EN_              0         //EXTINT1_EN,0:Disable,1:Enable
#define       _OPT_EXTINT0_EN_              0         //EXTINT0_EN,0:Disable,1:Enable
#define       _OPT_SpreadSpectrum_          0         //Spread Spectrum Enable,0:Disable,1:Enable
#define       _OPT_EXTResetPin_             0         //EXT Reset Pin Select,0:PB3,1:PC3
#define       _OPT_EXTINT1_INV_             0         //EXTINT1_INV,0:Disable,1:Enable
#define       _OPT_EXTINT0_INV_             0         //EXTINT0_INV,0:Disable,1:Enable
#define       _OPT_EXTINT1_PIN_SEL_         0         //EXTINT1 Pin Select,0:PC3,1:PB1
#define       _OPT_EXTINT0_PIN_SEL_         0         //EXTINT0 Pin Select,0:PB3,1:PC0
#define       _OPT_VREFI_EN_                1         //VREFI_EN,0:PC6 is ADC Vref input Pad,1:PC6 is I/O Pad
#define       _OPT_Buzzer_Pin_Select_       0         //Buzzer Pin Select,0:PB0,1:PC1
#define       _OPT_UART_PIN_Select_         0         //UART_PIN_Select,0:TX(PA5) RX(PA4),1:TX(PB5) RX(PB4)
#define       _OPT_I2C_PIN_Select_          0         //I2C PIN Select,0:TX(PB3) RX(PB2),1:TX(PA5) RX(PA4)
// Memory Configuration-----------------------------------------------------------------------------
#define       _OPT_PRAMBank_                15        //PRAM Bank
#define       _OPT_PRAMSize_                2048      //PRAM Size(Words)
#define       _OPT_WriteSegmentProtection_  0x007FF   //Write Segment Protection(0000H~ )
// System Control Setup-----------------------------------------------------------------------------
#define       _OPT_Bank0Speed_              16        //Bank0 Speed(MHz)
#define       _OPT_RTCINT_                  1         //RTC interrupt,0:Disable,1:Enable
#define       _OPT_RTCinHalt_               1         //RTC LP32K in Halt Mode,0:Disable,1:Enable
#define       _OPT_LVR_                     1800      //LVR(mv)
#define       _OPT_WatchDog_                256       //Watch dog(ms)
#define       _OPT_ICEEnable_               1         //ICE Disable/Enable,0:Disable,1:Enable
#define       _OPT_TurboSpeed_              1         //Turbo Speed,0:Off,1:On
// Audio Configuration------------------------------------------------------------------------------
#define       _OPT_AudioSamplingRate_       32        //Audio Sampling Rate(KHz)
#define       _OPT_PWMBit_                  16        //PWM Bit
#define       _OPT_DACFIFO_                 1         //DAC FIFO,0:Disable,1:Enable
//--------------------------------------------------------------------------------------------------
