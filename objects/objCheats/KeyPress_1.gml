cheat += keyboard_lastchar;
alarm[0] = time;

for(i = 0; i < array_length(cheats); i++){
	trampa = cheats[i];
	codigo = trampa[0];
	funcion = trampa[1];
	
	if(cheat == codigo){
		funcion();
		cheat = "";
	}
}
