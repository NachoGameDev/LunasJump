if(room == Shop){
	if(image_index < 2){
		global.selectedItem++;
		if(global.selectedItem > 6){
			global.selectedItem = 0;
		}
	}
	else{
		global.selectedItem--;
		if(global.selectedItem < 0){
			global.selectedItem = 6;
		}
	}
}
if(room == Tutorial){
	if(image_index < 2){
		with(objTutorial){
			scene++;
		}
	}
	else{
		with(objTutorial){
			scene--;
		}
	}
	instance_destroy(objPlayer);
	instance_destroy(objJumpCollision);
	instance_destroy(objPlatform);
	instance_destroy(objBepis);
	instance_destroy(objBoba);
	instance_destroy(objBrocoli);
	instance_destroy(objBuebo);
	instance_destroy(objPlatano);
	instance_destroy(dummyEnemigo);
}
