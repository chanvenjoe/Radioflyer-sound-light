

#ifdef _PWM_64K_

		LinkFile(melody, "midi\\DTS6531_v4_64K_10CH.md2");


#else

	#ifdef _MFDSP2_
		LinkFile(melody, "midi\\FDSP2_32K_15CH.md2");
	#else
		LinkFile(melody, "midi\\Demo_New4_32K_12CH.md2");
		// LinkFile(melody, "midi\\piano_32K_6CH.md2");
	#endif

#endif


