function scrFade(_room, _duration, _color){
	var instance = instance_create_depth(0,0,0,objTransition);
	
	with(instance){
		targetRoom = _room;
		duration = _duration;
		color = _color;
	}
}