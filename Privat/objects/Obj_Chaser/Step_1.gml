if (hp <= 0){
	image_index = 0;
	image_xscale = 0.5;
	image_yscale = 0.5;
	instance_change(Obj_Explosion,true);
	if (instance_exists(Obj_Bolt)){
		instance_destroy(Obj_Bolt);
	}
	instance_destroy(Obj_Enemyweapon);
}