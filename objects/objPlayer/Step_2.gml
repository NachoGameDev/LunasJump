if(counter > 0 && !global.pause){
	counter--;
}

if(counter > 0 && counter % 10 == 0 && !global.pause){
	instance_create_layer(x,y-32,"Player",objEgg);
	instance_create_layer(x-15,y-32,"Player",objEgg);
	instance_create_layer(x+15,y-32,"Player",objEgg);
	audio_play_sound(sfxFire,11,false);
}

if(counter == 0){
	image_index = global.selectedSprite;
}