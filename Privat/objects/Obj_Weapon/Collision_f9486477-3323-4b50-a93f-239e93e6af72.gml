if (image_index = 2){
	
	with(other){
		if (invincibility == false){
			knockback = point_direction(x, y+11, Obj_Player.x, Obj_Player.y+11);
			state = enemyKnockState;
			alarm[0] = 1*room_speed;
			hp -= 1.5;
			flash = 3;
			invincibility = true;
			alarm[1] = 1/2 * room_speed;
			path_delete(path);
			}
	}
}
