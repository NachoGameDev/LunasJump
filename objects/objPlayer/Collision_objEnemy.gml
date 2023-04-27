if(global.invencible == false){
	if(global.altura > global.best){
		if(file_exists(fname)){
			ini_open(fname);
			ini_write_real("Variables","best",global.altura); 
			ini_close();
		}
	}
	if(global.altura >= 150){
		room_goto(SecretEnding);
	}
	else{
		room_goto(GameOver);
	}
	if(!audio_is_playing(sfxDeath)){
		audio_play_sound(sfxDeath,20,false);
	}
	
	audio_group_stop_all(agVoices);
	if(global.altura < 150){
		if(other.sprite == 0){
			audio_play_sound(vcOdioElQueso,11,false);
		}
		else if(other.sprite == 1){
			audio_play_sound(choose(vcDebesAfrontarElBadEnding,vcPorQue,vcTuElegisteElCaminoDelMal),11,false);
		}
	}
}
else{
	instance_destroy(other);
}