if(global.pause && !snaped){
	tempSpeed = speed;
	speed = 0;
	gravity = 0;
	snaped = true;
	resumed = false;
}
else if(!global.pause && !resumed){
	speed = tempSpeed;
	tempSpeed = 0;
	gravity = 0.2;
	resumed = true;
	snaped = false;
}
