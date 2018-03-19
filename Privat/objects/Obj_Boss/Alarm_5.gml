/// @description End phase
alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
instance_destroy(Obj_Marker);
if (!instance_exists(Obj_Spray1 or Obj_Spray2)) instance_destroy(Obj_Circular);
image_index = 0;

switch (sprite_index){
	case boss_attackloop:
	sprite_index = boss_attackend;
	break;
	case boss_summon:
	sprite_index = boss_disappears;
	break;
}
