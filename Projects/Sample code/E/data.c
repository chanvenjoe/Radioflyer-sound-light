
#include "option.inc"


#ifdef SOFTADPDEC
	LinkFile(melody, "dtx\\gamedtx_32K_4CH.dtx");
#endif


#ifdef MIDIPCMDEC
	LinkFile(melody, "dtx\\gamedtx_32K_4CH_mp.dtx");
#endif



LinkFile(subdat0, "subband3\\Airport_16K@39K5bps.t3z");

#if _OPT_PROMSize_ >= 0x00020000

LinkFile(subdat1, "subband3\\06_Story_12K1@27K8bps.t3z");

#endif

