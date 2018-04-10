if (image_index = 2){
	
	with(other){
		if (invincibility == false){
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
