function scrShop(){
	objSelectSkin.image_index = global.selectedItem;
	
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		global.selectedItem--;
		if(global.selectedItem < 0){
			global.selectedItem = 6;
		}
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		global.selectedItem++;
		if(global.selectedItem > 6){
			global.selectedItem = 0;
		}
	}
	
	objPlayer.image_index = global.selectedItem;
	global.selectedSprite = global.selectedItem;
}