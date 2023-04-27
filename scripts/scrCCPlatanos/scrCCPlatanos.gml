function scrCCPlatanos(){
	audio_play_sound(sfxGetPlatano,20,false);
	global.platanos = 500;

	if(file_exists(fname)){
		ini_open(fname);
		ini_write_real("Variables","platanos",500); 
		ini_close();
	}
}