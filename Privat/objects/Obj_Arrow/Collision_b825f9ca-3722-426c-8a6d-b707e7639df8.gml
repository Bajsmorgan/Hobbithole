if (sprite_index = Arrow){
with(other){
	if (invincibility == false){
		hp--;
		flash = 3;
		invincibility = true;
		alarm[7] = 1/2 * room_speed;
	}
}
}
speed = 0;
sprite_index = Arrowhit;