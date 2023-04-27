switch(room){
	case Credits:
	case Tutorial:
	case Menu:
		introsongplayed = false;
		loopsongplayed = false;
		audio_stop_sound(mscMain);
		audio_stop_sound(mscMainWithIntro);
		audio_stop_sound(mscSecret);
		if(audio_group_is_loaded(agBGM) && !audio_is_playing(mscMenu)){
			audio_play_sound(mscMenu,15,true);
		}
		break;
	case SecretEnding:
		introsongplayed = false;
		loopsongplayed = false;
		audio_stop_sound(mscMain);
		audio_stop_sound(mscMainWithIntro);
		audio_stop_sound(mscMenu);
		if(audio_group_is_loaded(agBGM) && !audio_is_playing(mscSecret)){
			audio_play_sound(mscSecret,15,true);
		}
		break;
	default:
		audio_stop_sound(mscMenu);
		audio_stop_sound(mscSecret)
		if(audio_group_is_loaded(agBGM) && !introsongplayed){
			audio_play_sound(mscMainWithIntro, 15, false);
			introsongplayed = true;
		}
		if(audio_group_is_loaded(agBGM) && !audio_is_playing(mscMainWithIntro)){
			if(!loopsongplayed){
				audio_play_sound(mscMain, 15, true);
				loopsongplayed = true;
			}
		}
		break;
}