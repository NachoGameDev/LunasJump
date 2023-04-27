switch(scene){
	case 0:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"1/10");
		draw_text(180,175,"Luna quiere saltar de la Luna a la Tierra\npara conocer a los lomitos.");
		break;
	case 1:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"2/10");
		draw_text(180,125,"Ayúdala saltando las plataformas con las flechas\nde dirección, con las teclas A y D,"+
		"\no tocando a la derecha e izquierda en\ntu pantalla."+
		"\nSi sales por un lado de la pantalla,"+
		"\naparecerás por el otro.");
		break;
	case 2:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"3/10");
		draw_text(180,175,"Hay tres tipos de plataformas,\n"+
		"cada una con un efecto diferente:\n"+
		"En las blancas saltas,\n"+
		"en las celestes saltas más\n"+
		"y en las rojas solo saltas una vez.");
		break;
	case 3:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"4/10");
		draw_text(180,175,"Hay muchos power ups que te ayudarán.");
		break;
	case 4:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"5/10");
		draw_text(180,175,"La Bepis te dará un impulso extra.");
		break;
	case 5:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"6/10");
		draw_text(180,175,"El bubble tea te dará un escudo.");
		break;
	case 6:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"7/10");
		draw_text(180,175,"El brócoli volvera celestes todas\nlas plataformas.");
		break;
	case 7:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"8/10");
		draw_text(180,175,"El buebo te dara poderes especiales.");
		break;
	case 8:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"9/10");
		draw_text(180,175,"Compra skins con los plátanos.");
		break;
	case 9:
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(180,30,"10/10");
		draw_text(180,175,"Si tocas a la piña o el queso\no si caes, pierdes.");
		break;
}
