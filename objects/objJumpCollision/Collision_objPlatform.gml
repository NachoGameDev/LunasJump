if(objPlayer.vspeed > 0 && other.visible){
	if(room != Shop){
		audio_play_sound(sfxJump,20,false);
	}
	objPlayer.sprite_index = sprPlayerFloor;
	if(other.image_index == 1){
		objPlayer.direction = 90;
		objPlayer.speed = 10;
	}
	else{
		objPlayer.direction = 90;
		objPlayer.speed = 7;
	}
	if(other.image_index == 2){
		other.visible = false;
	}
}
alarm[0] = 5;