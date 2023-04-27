if(global.spritesArray[global.selectedItem] == true){
	if(position_meeting(mouse_x, mouse_y, self)){
		image_index = 1;
	}
	else{
		image_index = 0;
	}
}
else{
	if(position_meeting(mouse_x, mouse_y, self)){
		image_index = 3;
	}
	else{
		image_index  = 2;
	}
}

if((image_index == 2 || image_index == 3) && global.platanos < 50){
	image_alpha = 0.5;
}
else{
	image_alpha = 1;
}

if((mouse_check_button_pressed(mb_any) && position_meeting(mouse_x,mouse_y,id)
	|| keyboard_check_pressed(vk_space))
	&& (image_index == 0 || image_index == 1)){
		audio_group_stop_all(agVoices);
		switch(global.selectedSprite){
			case 0:
				audio_play_sound(vcQuienEsEsaHermosa,11,false);
				break;
			case 1:
				audio_play_sound(vcHolaPerro,11,false);
				break;
			case 2:
				audio_play_sound(vcHaNacidoParaMorir,11,false);
				break;
			case 3:
				audio_play_sound(vcEstoyUsandoElCincoPorcientoDeMiPoder,11,false);
				break;
			case 4:
				audio_play_sound(vcPorQueNoMatamosPersonas,11,false);
				break;
			case 5:
				audio_play_sound(vcOniichan,11,false);
				break;
			case 6:
				audio_play_sound(vcEsDemasiadaFachaParaMi,11,false);
				break;
		}
		fadeToRoom(Level1, 30, c_black);
}
else if((mouse_check_button_pressed(mb_any) && position_meeting(mouse_x,mouse_y,id)
	|| keyboard_check_pressed(vk_space))
	&& (image_index == 2 || image_index == 3) 
	&& global.platanos >= 50){
		audio_play_sound(sfxGetPlatano, 10, false);
			global.platanos -= 50;
			global.spritesArray[global.selectedItem] = true;
			
			if(file_exists(fname)){
				ini_open(fname);
				ini_write_real("Variables","platanos",global.platanos); 
				switch(global.selectedItem){
					case 1:
						ini_write_string("Skins", "Master", "true");
						break;
					case 2:
						ini_write_string("Skins", "Chef", "true");
						break;
					case 3:
						ini_write_string("Skins", "Mondongo", "true");
						break;
					case 4:
						ini_write_string("Skins", "Slayer", "true");
						break;
					case 5:
						ini_write_string("Skins", "Pelusa", "true");
						break;
					case 6:
						ini_write_string("Skins", "New", "true");
						break;
				}
				ini_close();
			}
}
else if((mouse_check_button_pressed(mb_any) && position_meeting(mouse_x,mouse_y,id))
	|| keyboard_check_pressed(vk_space)){
	audio_play_sound(sfxNot, 10, false);
}
