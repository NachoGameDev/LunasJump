var xx = irandom_range(0,room_width);
var yy = -32;
var oEnemy = irandom_range(0,100);

if(room == Level1 && oEnemy < 40 && !global.pause){
	instance_create_layer(xx,yy,"Shield",objEnemy);
}

alarm[0] = 30;