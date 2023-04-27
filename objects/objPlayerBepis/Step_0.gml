if(!global.pause){
	if(mouse_check_button(mb_any)){
		if(mouse_x < 180){
			image_xscale = 1;
		}
		else if(mouse_x >= 180){
			image_xscale = -1;
		}
	}

	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		image_xscale = 1;
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		image_xscale = -1;
	}
}
