if(BGM){
	if(global.BGM > 0){
		global.BGM -= 0.25;
		audio_group_set_gain(agBGM, global.BGM, 0);
	}
}
if(SFX){
	if(global.SFX > 0){
		global.SFX -= 0.25;
		audio_group_set_gain(agSFX, global.SFX, 0);
	}
	audio_play_sound(sfxJump, 10, false);
}

if(Voices){
	if(global.Voices > 0){
		global.Voices -= 0.25;
		audio_group_set_gain(agVoices, global.Voices, 0);
	}
	if(!audio_is_playing(vcOhayoPincheOniichan)){
		audio_play_sound(vcOhayoPincheOniichan, 10, false);
	}
}

image_index = 1;
alarm[0] = 10;