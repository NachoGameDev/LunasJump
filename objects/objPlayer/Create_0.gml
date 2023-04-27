direction = 90;
speed = 6;
tempSpeed = speed;
gravity = 0.2;
image_speed = 0;
image_index = global.selectedSprite;
instance_create_layer(x,y+22,"Instances",objJumpCollision);
counter = 0;

snaped = false;
resumed = true;
