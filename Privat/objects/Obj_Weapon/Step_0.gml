GetInput();
if (Switchweapon) weaponswitch ^= 1;

switch(weaponswitch){
	case 0:
	if (switchswing = 0) sprite_index = Swing_1;
	else if (switchswing = 1) sprite_index = Swing_2;
	depth = Obj_Player.depth + 1;
	break;
	case 1:
	sprite_index = Bow;
	depth = Obj_Player.depth - 1;
	image_xscale = 3/4;
	image_yscale = 3/4;
	break;
}

if (playanimation = 0) {
	image_index = 0;
	image_speed = 0; 
} else image_speed = 1;
