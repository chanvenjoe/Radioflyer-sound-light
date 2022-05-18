

#ifdef _PWM_64K_

	#ifdef SOFTADPDEC
		LinkFile(melody, "midi\\DTS6531_v4_64K_10CH.md2");
	#endif


#else

	#ifdef SOFTADPDEC
		LinkFile(melody, "midi\\Demo_New4_32K_12CH.md2");
	#endif


	#ifdef MIDIPCMDEC

		#ifdef PRAM_BANK
			LinkFile(melody, "midi\\37key_MIDI_32K_12CH.md2");
		#else
			LinkFile(melody, "midi\\piano_32K_6CH.md2");
		#endif

	#endif

#endif


