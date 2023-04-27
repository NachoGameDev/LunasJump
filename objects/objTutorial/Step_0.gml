if(scene < 0){
	scene = 9;
}
if(scene > 9){
	scene = 0;
}

if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
	scene--;
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
if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
	scene++;
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

if(scene < 0){
	scene = 9;
}
if(scene > 9){
	scene = 0;
}

switch(scene){
	case 0:
		uno = false; dos = false; tres = false; cuatro = false; cinco = false;
		seis = false; siete = false; ocho = false; nueve = false;
		if(!zero){
			instance_create_layer(180,415,"Player",objPlayer);
			instance_create_layer(180,480,"Player",objPlatform);
			zero = true;
		}
		objTeacher.y = 224;
		break;
	case 1:
		zero = false; dos = false; tres = false; cuatro = false; cinco = false;
		seis = false; siete = false; ocho = false; nueve = false
		if(!uno){
			instance_create_layer(180,415,"Player",objPlayer);
			instance_create_layer(180,480,"Player",objPlatform);
			uno = true;
		}
		objTeacher.y = 256;
		break;
	case 2:
		zero = false; uno = false; tres = false; cuatro = false; cinco = false;
		seis = false; siete = false; ocho = false; nueve = false
		if(!dos){
			instance_create_layer(80,480,"Player",objPlatform);
			p2 = instance_create_layer(180,480,"Player",objPlatform);
			p3 = instance_create_layer(280,480,"Player",objPlatform);
			p2.image_index = 1;
			p3.image_index = 2;
			dos = true;
		}
		objTeacher.y = 288;
		break;
	case 3:
		zero = false; uno = false; dos = false; cuatro = false; cinco = false;
		seis = false; siete = false; ocho = false; nueve = false
		if(!tres){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			instance_create_layer(180,480,"Player",objBoba);
			instance_create_layer(280,480,"Player",objBrocoli);
			instance_create_layer(180,400,"Player",objBuebo);
			instance_create_layer(280,400,"Player",objPlatano);
			tres = true;
		}
		objTeacher.y = 224;
		break;
	case 4:
	zero = false; uno = false; dos = false; tres = false; cinco = false;
		seis = false; siete = false; ocho = false; nueve = false
		if(!cuatro){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			cuatro = true;
		}
		objTeacher.y = 224;
		break;
	case 5:
	zero = false; uno = false; dos = false; tres = false; cuatro = false;
		seis = false; siete = false; ocho = false; nueve = false
		if(!cinco){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			instance_create_layer(180,480,"Player",objBoba);
			cinco = true;
		}
		objTeacher.y = 224;
		break;
	case 6:
	zero = false; uno = false; dos = false; tres = false; cuatro = false;
		cinco = false; siete = false; ocho = false; nueve = false
		if(!seis){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			instance_create_layer(180,480,"Player",objBoba);
			instance_create_layer(280,480,"Player",objBrocoli);
			seis = true;
		}
		objTeacher.y = 224;
		break;
	case 7:
	zero = false; uno = false; dos = false; tres = false; cuatro = false;
		cinco = false; seis = false; ocho = false; nueve = false
		if(!siete){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			instance_create_layer(180,480,"Player",objBoba);
			instance_create_layer(280,480,"Player",objBrocoli);
			instance_create_layer(180,400,"Player",objBuebo);
			siete = true;
		}
		objTeacher.y = 224;
		break;
	case 8:
	zero = false; uno = false; dos = false; tres = false; cuatro = false;
		cinco = false; seis = false; siete = false; nueve = false
		if(!ocho){
			instance_create_layer(80,480,"Player",objPlatform);
			instance_create_layer(180,480,"Player",objPlatform);
			instance_create_layer(280,480,"Player",objPlatform);
			instance_create_layer(180,400,"Player",objPlatform);
			instance_create_layer(280,400,"Player",objPlatform);
			instance_create_layer(80,480,"Player",objBepis);
			instance_create_layer(180,480,"Player",objBoba);
			instance_create_layer(280,480,"Player",objBrocoli);
			instance_create_layer(180,400,"Player",objBuebo);
			instance_create_layer(280,400,"Player",objPlatano);
			ocho = true;
		}
		objTeacher.y = 224;
		break;
	case 9:
	zero = false; uno = false; dos = false; tres = false; cuatro = false;
		cinco = false; seis = false; siete = false; ocho = false
		if(!nueve){
			instance_create_layer(120,480,"Player",objPlatform);
			instance_create_layer(240,480,"Player",objPlatform);
			e1 = instance_create_layer(120,460,"Player",dummyEnemigo);
			e2 = instance_create_layer(240,460,"Player",dummyEnemigo);
			e1.image_index = 0;
			e2.image_index = 1;
			nueve = true;
		}
		objTeacher.y = 224;
		break;
}