var sprw = sprite_get_width(Bosshealthfiller);
var sprh = sprite_get_height(Bosshealthfiller);

draw_sprite_ext(Bosshealthborder,0,view_wport[0]/2,view_hport[0],4,4,0,-1,1);
draw_sprite_part_ext(Bosshealthfiller,0,0,0,(sprw - 13) * hppercent,sprh,view_wport[0]-868,view_hport[0]-104,4,4,-1,1);

if (sprite_index = boss_death and image_index = 10){
	depth = 0;
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0]/3,string("YOU WON"),9,9,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0]/2,string("Thank you for playing our game"),4,4,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(view_wport[0]/2,view_hport[0],string("Created by Marcus Wranghult and Felix Almqvist"),3,3,0,c_red,c_red,c_red,c_black,1);
}