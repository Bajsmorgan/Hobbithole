image_index = 0;
switch (sprite_index){
	
	case boss_appears:
	if (spritetime = 0) sprite_index = boss_idle;
	if (spritetime = 3){
	spritetime = 4;
	sprite_index = boss_channel;
	}
	if (spritetime = 5){
	spritetime = 6;
	sprite_index = boss_idle;
	}
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
	if (spritetime = 6){
	spritetime = 7;
	sprite_index = boss_summon;
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
	
	case boss_death:
	depth = 0;
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0]/3,string("YOU WON"),9,9,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0]/2,string("Thank you for playing our game"),4,4,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0],string("Created by Marcus Wranghult and Felix Almqvist"),3,3,0,c_red,c_red,c_red,c_black,1);
	break;
}