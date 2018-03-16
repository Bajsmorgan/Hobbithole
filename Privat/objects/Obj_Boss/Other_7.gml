image_index = 0;
switch (sprite_index){
	
	case boss_appears:
	if (spritetime = 0) sprite_index = boss_idle;
	if (spritetime = 3){
	spritetime = 4;
	sprite_index = boss_summon;
	}
	if (spritetime = 5) sprite_index = boss_idle;
	break;
	
	case boss_idle:
	if (spritetime = 0){
	spritetime = 1;
	sprite_index = boss_attackstart;
	}
	if (spritetime = 2){
	spritetime = 3;
	sprite_index = boss_disappears;
	}
	break;
	
	case boss_attackstart:
	sprite_index = boss_attackloop;
	break;
	
	case boss_attackend:
	if (spritetime = 1){
	spritetime = 2;
	}
	sprite_index = boss_idle;
	break;
	
	case boss_disappears:
	if (spritetime = 3){
	sprite_index = boss_appears;
	x = room_width/2;
	y = room_height/2;
	}
	if (spritetime = 4){
	spritetime = 5;
	sprite_index = boss_appears;
	x = 308;
	y = 279;
	}
	break;
}