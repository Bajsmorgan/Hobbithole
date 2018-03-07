if (speed = 0) image_index = 0;
else image_index += 1;

if (random_x > x) {
	image_xscale = 1;	
} else if (random_x < x) {
	image_xscale = -1;	
}

if(distance_to_object(Obj_Player) < 50) move_towards_point(random_x,0,2.5);