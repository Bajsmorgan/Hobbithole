/// @description Spawn enemies
var randomx = random_range(224,383);
var randomy = random_range(289,416);

if (!instance_exists(Obj_Chaser)){
instance_create_depth(224,289,depth,Obj_Summon);
instance_create_depth(224,386,depth,Obj_Summon);
instance_create_depth(383,289,depth,Obj_Summon);
instance_create_depth(383,386,depth,Obj_Summon);
}