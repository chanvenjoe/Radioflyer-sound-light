
#include "option.inc"

LinkFile(ADPCM_CH0_Data, "adpcm\\bird_8000_4-12.XAM");
LinkFile(ADPCM_CH1_Data, "adpcm\\horse_16000_4-12.xam");

#if _OPT_PROMSize_ >= 0x00020000

LinkFile(ADPCM_CH2_Data, "adpcm\\2cat_16000_4-12.XAM");
LinkFile(ADPCM_CH3_Data, "adpcm\\cat_16000_4-12.XAM");
LinkFile(ADPCM_CH4_Data, "adpcm\\Dog_Barking_002_16000_4-12.XAM");
LinkFile(ADPCM_CH5_Data, "adpcm\\duck_A1S_16000_4-12.XAM");
LinkFile(ADPCM_CH6_Data, "adpcm\\frog_5th_8000_4-12.XAM");
LinkFile(ADPCM_CH7_Data, "adpcm\\Insect_chirping_16000_4-12.XAM");
LinkFile(ADPCM_CH8_Data, "adpcm\\sheep_16000_4-12.XAM");

#endif

#ifdef _MSPEECHDSP_
	LinkFile(MidiData, "midi\\piano_32K_8CH.md2");
#else
	LinkFile(MidiData, "midi\\piano_32K_6CH.md2");
#endif



