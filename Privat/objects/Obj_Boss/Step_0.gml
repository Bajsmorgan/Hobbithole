/// @description Initialize alarms
hppercent = hp/maxhp;
if (sprite_index = boss_attackloop){
	if (alarm[1] < 0 ) {
	 alarm[1] = 1 * room_speed;
	}
	if (alarm[2] < 0 ) {
	 alarm[2] = 2 * room_speed;
	}
	if (alarm[6] < 0) {
	 alarm[6] = 18 * room_speed;
	}
}

if (sprite_index = boss_channel){
	if (alarm[2] < 0 ) {
	 alarm[2] = 1 * room_speed;
	}
	if (alarm[3] < 0 ) {
	 alarm[3] = 1 * room_speed;
	}
	if (alarm[4] < 0 ) {
	 alarm[4] = 1  * room_speed;
	}
	if (alarm[6] < 0 ) {
	 alarm[6] = 18 * room_speed;
	}
}

if (sprite_index = boss_summon){
	if (alarm[5] < 0 ) {
	 alarm[5] = 1 * room_speed;
	}
	if (alarm[6] < 0 ) {
	 alarm[6] = 18 * room_speed;
	}
}

if (hp <= 0) sprite_index = boss_death;