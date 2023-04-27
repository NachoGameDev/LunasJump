randomize();
global.best = 0;
global.pause = false;
global.invencible = false;
global.selectedSprite = 0;
global.altura = 0;
global.selectedItem = 0;
global.BGM = 0.5;
global.SFX = 0.5;
global.Voices = 0.5;
draw_set_font(mainFont);
targetDelta = 1/60;
global.actualDelta = delta_time / 1000000;
global.delta = global.actualDelta / targetDelta;
global.spritesArray = [true, false, false, false, false, false, false];
record = false;
//Sistema de guardado

if(!file_exists(fname)){
	ini_open(fname);
	ini_write_real("Variables","platanos",0); 
	ini_write_real("Variables","best",0); 
	ini_write_string("Skins", "Luna", "true");
	ini_write_string("Skins", "Master", "false");
	ini_write_string("Skins", "Chef", "false");
	ini_write_string("Skins", "Mondongo", "false");
	ini_write_string("Skins", "Slayer", "false");
	ini_write_string("Skins", "Pelusa", "false");
	ini_write_string("Skins", "New", "false");
	ini_close();
}

if(file_exists(fname)){
	ini_open(fname);
	global.platanos = ini_read_real("Variables","platanos",0);
	global.best = ini_read_real("Variables","best",0);
	
	global.spritesArray[1] = ini_read_string("Skins", "Master", "") == "true" ? true : false;
	global.spritesArray[2] = ini_read_string("Skins", "Chef", "") == "true" ? true : false;
	global.spritesArray[3] = ini_read_string("Skins", "Mondongo", "") == "true" ? true : false;
	global.spritesArray[4] = ini_read_string("Skins", "Slayer", "") == "true" ? true : false;
	global.spritesArray[5] = ini_read_string("Skins", "Pelusa", "") == "true" ? true : false;
	global.spritesArray[6] = ini_read_string("Skins", "New", "") == "true" ? true : false;
	
	ini_close();
}
else{
	global.platanos = 0;
}

