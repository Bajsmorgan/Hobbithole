knockback = point_direction(x, y+11, Obj_Player.x, Obj_Player.y+11);			state = enemyKnockState;
alarm[0] = 1*room_speed;
with(other){
	if (invincibility == false){
		hp--;
		flash = 3;
		invincibility = true;
		alarm[0] = room_speed;
	}
}
