var sprw = sprite_get_width(Bosshealthfiller);
var sprh = sprite_get_height(Bosshealthfiller);

draw_sprite_ext(Bosshealthborder,0,384/2,216,1.5,1.5,0,-1,1);
draw_sprite_part_ext(Bosshealthfiller,0,0,0,(sprw - 13) * hppercent,sprh,107,177.5,1.5,1.5,-1,1);

if (sprite_index = boss_death and image_index = 9){
	depth = -1;
	image_speed = 0;
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(384/2,200/2,string("YOU WON"),2,2,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(384/2,270/2,string("Thank you for playing our game"),1,1,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(384/2,200,string("Created by Marcus Wranghult and Felix Almqvist"),0.5,0.5,0,c_red,c_red,c_red,c_black,1);
}