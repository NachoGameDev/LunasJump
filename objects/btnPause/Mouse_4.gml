audio_play_sound(sfxClick,10,false);
global.pause = !global.pause;

if(global.pause){
	image_index = 1;
}
else{
	image_index = 0;
}
