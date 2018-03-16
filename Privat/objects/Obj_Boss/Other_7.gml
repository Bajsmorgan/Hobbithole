if (sprite_index = boss_attackstart) sprite_index = boss_attackloop;

switch(sprite_index){
	case(boss_attackstart):
	sprite_index = boss_attackloop;
	break;
}