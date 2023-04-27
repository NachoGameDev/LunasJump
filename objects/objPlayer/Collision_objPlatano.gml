audio_play_sound(sfxGetPlatano,20,false);
global.platanos++;

if(file_exists(fname)){
	ini_open(fname);
	ini_write_real("Variables","platanos",global.platanos); 
	ini_close();
}

instance_destroy(other);