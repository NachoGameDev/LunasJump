switch(room){	
	case Shop:
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		draw_text(30,30,"Plátanos: " + string(global.platanos));
		draw_set_halign(fa_center);
		draw_text(180,65,"Selecciona tu variante del Lunaverso");
		switch(global.selectedItem){
			case 0:
				draw_text(180,300,"Rurine Luna");
				break;
			case 1:
				draw_text(180,300,"Wolf Master");
				break;
			case 2:
				draw_text(180,300,"Luna Chef");
				break;
			case 3:
				draw_text(180,300,"Luna Mondongo");
				break;
			case 4:
				draw_text(180,300,"DD Slayer");
				break;
			case 5:
				draw_text(180,300,"Tía Pelusa");
				break;
			case 6:
				draw_text(180,300,"RuriNewMoon");
				break;
		}
		break;
	case Level1:
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text(30,8,"Plátanos: " + string(global.platanos));
		
		draw_set_halign(fa_center);
		draw_text(180,8,"Récord: " + string(global.best));
		
		draw_set_halign(fa_right);
		draw_text(330,8,"Puntaje: " + string(global.altura));
		break;
	case GameOver:
		c = c_yellow;
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text_transformed_color(185,128,"Fin del juego",2,2,0,c,c,c,c,1);
		c = c_white;
		if(global.altura > global.best){
			record = true;
		}
		if(record){
			global.best = global.altura;
			draw_text_transformed_color(185,200,"Nuevo récord:\n" + string(global.best),2,2,0,c,c,c,c,1);
		}
		else{
			draw_text_transformed_color(185,200,"Puntos: " + string(global.altura),2,2,0,c,c,c,c,1);
		}
		break;
	case SecretEnding:
		draw_set_halign(fa_center);
		draw_set_color(c_yellow);
		draw_text(180,30, "Fin del juego");
		draw_set_color(c_white);
		if(global.altura > global.best){
			record = true;
		}
		if(record){
			global.best = global.altura;
			draw_text(180,60, "Nuevo récord:\n" + string(global.best));
		}
		else{
			draw_text(180,60, "Puntos:\n" + string(global.altura));
		}
		break;
	case Config:
		c = c_white;
		draw_set_halign(fa_center);
		draw_text_transformed_color(180,35,"BGM",2,2,0,c,c,c,c,1);
		draw_text_transformed_color(180,175,"SFX",2,2,0,c,c,c,c,1);
		draw_text_transformed_color(180,325,"Voces",2,2,0,c,c,c,c,1);
		break;
}