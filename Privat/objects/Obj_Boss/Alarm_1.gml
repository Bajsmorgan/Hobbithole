/// @description Spawn crystals
var randomx = random_range(274,333);
var randomy = random_range(319,386);

instance_create_depth(randomx,randomy,depth,Obj_Crystal)
alarm[1] = 6 * room_speed;