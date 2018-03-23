GetInput();
x = Obj_Player.x;
y = Obj_Player.y - 8;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

switch(weaponswitch){
	case 0:
	if (Attack and firingdelay < 0){
		switchswing ^= 1;
		playanimation = 1;
		firingdelay = 1/2 * room_speed;
	}
	break;
	
	case 1:
	if (Attack and firingdelay < 0){
		playanimation = 1;
		recoil = 4;
		firingdelay = 3/4 * room_speed;
		with(instance_create_depth(x,y,depth,Obj_Arrow)){
			speed = 25;	
			direction = other.image_angle;
			image_angle = direction;
		}
	}
	break;
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) and (image_angle < 270){
	image_yscale = -1;
} else 	image_yscale = 1;