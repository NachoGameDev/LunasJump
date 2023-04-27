//Sonido
audio_group_load(agBGM);
audio_group_load(agSFX);
audio_group_load(agVoices);
audio_group_set_gain(agSFX,0.5,0);
audio_group_set_gain(agBGM,0.5,0);
audio_group_set_gain(agVoices,0.5,0);
introsongplayed = false;
loopsongplayed = false;