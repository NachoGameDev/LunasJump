if((room == Menu) && keyboard_check_pressed(vk_space)){
	fadeToRoom(Shop, 30, c_black);
}

if((room == GameOver || room == SecretEnding) && keyboard_check_pressed(vk_space)){
	global.altura = 0;
	room_goto(Level1);
}

if(room == Shop){
	scrShop();
}

global.actualDelta = delta_time / 1000000;
global.delta = global.actualDelta / targetDelta;