/// @description Spawn spray bolts
if (instance_exists(Obj_Circular)) instance_create_depth(x,y,depth,Obj_Spray1);
if (instance_exists(Obj_Circular)) instance_create_depth(x,y,depth,Obj_Spray2);
alarm[3] = 1/8 * room_speed;