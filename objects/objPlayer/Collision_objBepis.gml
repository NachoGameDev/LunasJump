audio_play_sound(sfxJetpack,20,false);
instance_create_layer(x,y,"Player",objPlayerBepis);
if(image_xscale == -1){
	objPlayerBepis.image_xscale = -1;
}
direction = 90;
speed = 20;
global.invencible = true;
instance_destroy(other);

alarm_set(11,120)