

#ifndef _PWM_MACRO_
#define _PWM_MACRO_


// --- PWM

#define EnableAudioPWM()			asml("set io[MISC].b9")
#define DisableAudioPWM()			asml("clr io[MISC].b9")

// 0 = PWM ouput, 1 = PWM Mute

#define PWMMuteOn()					asml("set io[MISC].b5")
#define PWMMuteOff()				asml("clr io[MISC].b5")


// --- DAC

#define EnableAudioDAC()			asml("set io[MISC].b6")
#define DisableAudioDAC()			asml("clr io[MISC].b6")


// 0 = DAC Mute, 1 = DAC output

#define DACMuteOn()					asml("clr io[MISC].b4")
#define DACMuteOff()				asml("set io[MISC].b4")

// for old demo code compatible only

#define EnableDAC					DACMuteOff

// filter select

#define EnableWideBandFilter()		asml("set io[MISC].b8")
#define DisableWideBandFilter()		asml("clr io[MISC].b8")


#endif

