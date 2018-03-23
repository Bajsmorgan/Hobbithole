if (sprite_index = boss_summon) draw_sprite(summon_effect,-1,x,y);

draw_self();

if (flash > 0){
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}