/// @description Initialize alarms
if (sprite_index = boss_attackloop){
	if (alarm[1] < 0 ) {
	 alarm[1] = 1 * room_speed;
	}
	if (alarm[2] < 0 ) {
	 alarm[2] = 3 * room_speed;
	}
	if (alarm[5] < 0 ) {
	 alarm[5] = 18 * room_speed;
	}
}

if (sprite_index = boss_summon){
	if (alarm[2] < 0 ) {
	 alarm[2] = 1 * room_speed;
	}
	if (alarm[3] < 0 ) {
	 alarm[3] = 1 * room_speed;
	}
	if (alarm[4] < 0 ) {
	 alarm[4] = 1 * room_speed;
	}
	if (alarm[5] < 0 ) {
	 alarm[5] = 18 * room_speed;
	}
}

// SWITCH SOM INTE FUNGERAR
/* 
if (sprite_index = boss_attackloop){
switch (alarm < 0){
	case 1:
		 alarm[1] = 1 * room_speed;
	break;
	case 2:
		 alarm[2] = 3 * room_speed;
	break;
	}
}

if (sprite_index = boss_summon){
switch (alarm< 0){
	case 2:
		alarm[2] = 1 * room_speed;
	break;
	case 3:
		alarm[3] = 1 * room_speed;
	break;
	case 4:
		alarm[4] = 1 * room_speed;
	break;
	}
}

if (alarm[5] < 0 ) {
	alarm[5] = 18 * room_speed;
}