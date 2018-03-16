/// @description Spawn meteor
var randomx = random_range(224,383);
var randomy = random_range(289,416);

instance_create_depth(randomx,randomy,depth,Obj_Meteor)
alarm[1] = 6 * room_speed;