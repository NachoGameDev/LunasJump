if(touched){
	if(timer > 0){
		timer -= global.actualDelta;
	}
	else{
	objPlayer.sprite_index = sprPlayerJump;
	timer = 0.083;
	touched = false;
	}
}
