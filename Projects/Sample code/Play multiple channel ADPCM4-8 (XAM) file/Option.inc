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
#define       _OPT_TIMER2ExtTrigger_        0         //TIMER2 Ext-Trigger,0:PC7,1:PC4
#define       _OPT_ExternalINT1_            0         //External INT1,0:PC3,1:PB1
#define       _OPT_ExternalINT0_            1         //External INT0,0:PB3,1:PC6
#define       _OPT_FIRQPin_                 0         //FIRQ PIN Select,0:PC2,1:PB0
#define       _OPT_TIMER1ExtTrigger_        0         //TIMER1 Ext-Trigger,0:PB2,1:PC5
#define       _OPT_ExternalINT1Inverse_     0         //External INT1 Inverse,0:Non-Inverse,1:Inverse
#define       _OPT_ExternalINT0Inverse_     0         //External INT0 Inverse,0:Non-Inverse,1:Inverse
#define       _OPT_FIRQPINInverse_          0         //FIRQ PIN Inverse,0:Non-Inverse,1:Inverse
#define       _OPT_ADCVrefInputEnable_      0         //ADC Vref input Enable,0:Enable,1:Disable
// Memory Configuration-----------------------------------------------------------------------------
#define       _OPT_PRAMBank_                15        //PRAM Bank
#define       _OPT_PRAMSize_                2048      //PRAM Size(Words)
#define       _OPT_WriteSegmentProtection_  0x007FF   //Write Segment Protection(0000H~ )
// System Control Setup-----------------------------------------------------------------------------
#define       _OPT_Bank0Speed_              1         //Bank0 Speed(MHz)
#define       _OPT_SpreadSpectrum_          0         //Spread Spectrum,0:Disable,1:Enable
#define       _OPT_RTCinHalt_               1         //RTC LP32K in Halt Mode,0:Disable,1:Enable
#define       _OPT_LVR_                     1600      //LVR(mv)
#define       _OPT_WatchDog_                256       //Watch dog(ms)
#define       _OPT_ICEEnable_               1         //ICE Disable/Enable,0:Disable,1:Enable
#define       _OPT_LDOOutput_               0         //LDO Output Select,0:3.3V,1:1.8V
#define       _OPT_LowPower32K_             0         //Low Power 32K Output ,0:Disable,1:Enable
// I/O Comparator------------------------------------------------------------------------------
#define       _OPT_Comparator1_             0         //Comparator 1,PB1 PB0,0:Disable,1:Enable
#define       _OPT_Comparator2_             1         //Comparator 1,PC7 PC6,0:Disable,1:Enable
// Audio Configuration------------------------------------------------------------------------------
#define       _OPT_AudioSamplingRate_       32        //Audio Sampling Rate(KHz)
#define       _OPT_PWMBit_                  16        //PWM Bit
#define       _OPT_DACFIFO_                 1         //DAC FIFO,0:Disable,1:Enable
#define       _OPT_PWMType_                 3         //PWM Type
//--------------------------------------------------------------------------------------------------
