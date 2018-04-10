if (instance_exists(Obj_Chaser)){
x = Obj_Chaser.x;
y = Obj_Chaser.y - 8;
}

image_angle = point_direction(x,y,Obj_Player.x,Obj_Player.y);

if (distance_to_object(Obj_Player) < 20){
	image_speed = 1;
} else if (distance_to_object(Obj_Player) < 150and distance_to_object(Obj_Player) > 20){ 
	image_speed = 0;
	image_index = 0;
	if (!instance_exists(Obj_Bolt)) instance_create_depth(x,y,depth,Obj_Bolt);
}

if (image_angle > 90) and (image_angle < 270)image_yscale = -1;
else image_yscale = 1;

