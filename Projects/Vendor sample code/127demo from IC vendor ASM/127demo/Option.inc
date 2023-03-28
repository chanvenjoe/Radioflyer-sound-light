//--------------------------------------------------------------------------------------------------
// TRITAN FDSP-IDE Option define file.
// WARNING! All changes made in this file will be lost when recompiling.
//--------------------------------------------------------------------------------------------------
// Part number    : TRSF16127A
// Option version : 2.3
// Base Information--------------------------------------------------------------------------------
#define       _OPT_TRSF16127A_                
#define       _OPT_PROMSize_                0x20000   //PROM Size
#define       _OPT_SRAMSize_                3072      //SRAM Size
// I/O Configuration--------------------------------------------------------------------------------
#define       _OPT_EXTReset_EN_             0         //EXT Reset Enable,0:Disable,1:Enable
#define       _OPT_EXTINT1_EN_              0         //EXTINT1_EN,0:Disable,1:Enable
#define       _OPT_EXTINT0_EN_              0         //EXTINT0_EN,0:Disable,1:Enable
#define       _OPT_SpreadSpectrum_          0         //Spread Spectrum Enable,0:Disable,1:Enable
#define       _OPT_EXTResetPin_             0         //EXT Reset Pin Select,0:PB3,1:PC3
#define       _OPT_EXTINT1_INV_             0         //EXTINT1_INV,0:Disable,1:Enable
#define       _OPT_EXTINT0_INV_             0         //EXTINT0_INV,0:Disable,1:Enable
// Memory Configuration-----------------------------------------------------------------------------
#define       _OPT_PRAMBank_                0         //PRAM Bank
#define       _OPT_PRAMSize_                0         //PRAM Size(Words)
#define       _OPT_WriteSegmentProtection_  0x0FFFF   //Write Segment Protection(0000H~ )
// System Control Setup-----------------------------------------------------------------------------
#define       _OPT_Bank0Speed_              11        //Bank0 Speed(MHz)
#define       _OPT_RTCINT_                  1         //RTC interrupt,0:Disable,1:Enable
#define       _OPT_RTCinHalt_               0         //RTC LP32K in Halt Mode,0:Disable,1:Enable
#define       _OPT_LVR_                     1800      //LVR(mv)
#define       _OPT_WatchDog_                256       //Watch dog(ms)
#define       _OPT_ICEEnable_               1         //ICE Disable/Enable,0:Disable,1:Enable
// Audio Configuration------------------------------------------------------------------------------
#define       _OPT_AudioSamplingRate_       64        //Audio Sampling Rate(KHz)
#define       _OPT_PWMBit_                  16        //PWM Bit
#define       _OPT_DACFIFO_                 1         //DAC FIFO,0:Disable,1:Enable
//--------------------------------------------------------------------------------------------------
