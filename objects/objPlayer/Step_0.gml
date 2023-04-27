move_wrap(true,false,32);
if(room != Shop && room != Tutorial){
	if(y < room_height/2 && vspeed < 0){
		downspeed = -vspeed;
		with(objMoveParent){
			y += other.downspeed;
		}
		y = room_height / 2;
	
		background = layer_get_y("Background");
		layer_y("Background",background + downspeed / 6);
	}
}

if (y > 640 + 40){
	if(global.altura > global.best){
		if(file_exists(fname)){
			ini_open(fname);
			ini_write_real("Variables","best",global.altura); 
			ini_close();
		}
	}
	if(!audio_is_playing(sfxDeath)){
		audio_play_sound(sfxDeath,20,false);
	}
	if(global.altura < 150){
		audio_group_stop_all(agVoices);
		audio_play_sound(choose(vcAuch,vcOhShit,vcDebesAfrontarElBadEnding),11,false);
	}
	if(global.altura >= 150){
		room_goto(SecretEnding);
	}
	else{
		room_goto(GameOver);
	}
}

if(room != Shop && room != Tutorial){
	if(mouse_check_button(mb_any) && !global.pause){
		if(mouse_x < 180){
			x-=5;
			image_xscale = 1;
		}
		else if(mouse_x >= 180){
			x+=5;
			image_xscale = -1;
		}
	}
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
		if(room != Shop && !global.pause){
			x -= 5;
			image_xscale = 1;
		}
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
		if(room != Shop && !global.pause){
			x += 5;
			image_xscale = -1;
		}
	}
}
