

#ifdef MD2_INS_XDPCM5

LinkFile(melody, "midi\\Sample_32K_11CH_midipcm5b.md2");

#else

LinkFile(melody, "midi\\Sample_32K_8CH_midipcm.md2");
//LinkFile(melody, "midi\\Sample_32K_8CH_softadp.md2");

#endif


LinkFile(Subband2, "subband3\\baby_Silen@16K6bps.TZB");
