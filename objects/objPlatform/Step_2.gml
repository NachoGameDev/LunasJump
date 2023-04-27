if(y >= 640){
	with(objPlatform){
		primero = false;
	}
	primero = true;
	var rdm = random_range(32, room_width -32);
	x = rdm;
	y = -64;
	
	var inst = collision_rectangle(x-360,y,x+360,y+63,objPlatform,false,true);
	if(primero && inst != noone){
		while(inst != noone){
			y--;
			inst = collision_rectangle(x-360,y,x+360,y+63,objPlatform,false,true);
		}
	}
	with(inst){
		instance_destroy();
	}
	global.altura++;
	
	if(global.altura > 100 && global.altura < 150){
		image_index = choose(0,2);
	}
	else if(global.altura >= 150){
		image_index = 2;
	}
	else{
		image_index = choose(0,1,2);
	}
	visible = true;
	
	var bepis = irandom_range(0,100);
	if(bepis < 12 && image_index == 0 && global.invencible == false){
		instance_create_layer(x,y,"Instances",objBepis);
	}
	else if(bepis >= 12 && bepis < 25 && image_index == 0 && global.invencible == false && !instance_exists(objShield)){
		instance_create_layer(x,y,"Instances",objBoba);
	}
	else if(bepis >= 25 && bepis < 40){
		instance_create_layer(x,y,"Instances",objPlatano);
	}
	else if(bepis >= 41 && bepis < 45){
		instance_create_layer(x,y,"Instances",objBrocoli);
	}
	else if(bepis == 46){
		instance_create_layer(x,y,"Instances",objBuebo);
	}
}