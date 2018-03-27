/// @description Spawn mines
if (sprite_index = boss_attackloop) {
	instance_create_depth(Obj_Player.x,Obj_Player.y,depth,Obj_Marker);
	alarm[2] = 0.5 * room_speed;
}

if (sprite_index = boss_channel) {
var randomx = random_range(224,383);
var randomy = random_range(289,416);
instance_create_depth(randomx,randomy,depth,Obj_Marker)
alarm[2] = 1/4 * room_speed;
}