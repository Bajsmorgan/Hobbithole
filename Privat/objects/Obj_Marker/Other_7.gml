switch (Obj_Boss.sprite_index){
	case boss_attackloop:
	instance_destroy();
	instance_create_depth(x,y,depth,Obj_Explosion);
	break;
	case boss_summon:
	instance_destroy();
	instance_create_depth(x,y,depth,Obj_Explosion);
	break;
}