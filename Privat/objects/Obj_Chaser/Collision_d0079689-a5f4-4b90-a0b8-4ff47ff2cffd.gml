with(other){
	if (invincibility == false){
		hp--;
		flash = 3;
		invincibility = true;
		alarm[0] = room_speed;
	}
}
state = enemyKnockState;
alarm[0] = 1*room_speed;