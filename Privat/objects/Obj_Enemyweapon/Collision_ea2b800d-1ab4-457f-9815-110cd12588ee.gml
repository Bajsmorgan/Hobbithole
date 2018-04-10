if (image_index = 2){
	with(other){
		if (invincibility == false){
			hp --;
			flash = 3;
			invincibility = true;
			alarm[0] = 1/2 * room_speed;
		}
	}
}