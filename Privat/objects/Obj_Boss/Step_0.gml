/// @description Initialize alarms
if (sprite_index = boss_attackloop){
	if (alarm[1] < 0 ) {
	 alarm[1] = 1 * room_speed;
	}
	if (alarm[2] < 0 ) {
	 alarm[2] = 3 * room_speed;
	}
	if (alarm[4] < 0 ) {
	 alarm[4] = 18 * room_speed;
	}
}

if (sprite_index = boss_summon){
	if (alarm[3] < 0 ) {
	 alarm[3] = 1 * room_speed;
	}
	if (alarm[4] < 0 ) {
	 alarm[4] = 18 * room_speed;
	}
}