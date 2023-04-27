function scrCCPunk(){
	if(room == Level1 || room == GameOver){
		global.selectedSprite = 8;
		audio_group_stop_all(agVoices);
		audio_play_sound(vcAquiNoCabeTuTrasero,11,false);
	}
}