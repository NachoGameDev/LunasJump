function fadeToRoom(_room, _dur, _color) {

	// Set properties
	with (instance_create_depth(0, 0, 0, oFade)) {
		targetRoom = _room;
		duration = _dur;
		color = _color;
	}
}