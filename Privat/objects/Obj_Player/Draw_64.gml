var sprw = sprite_get_width(Healthfiller);
var sprh = sprite_get_height(Healthfiller);
var hppercent = hp/maxhp;

draw_sprite_ext(Healthborder,0,0,0,3,3,0,-1,1);
draw_sprite_part_ext(Healthfiller,0,0,0,sprw * hppercent,sprh,0,0,3,3,-1,1);

if (sprite_index = explosion){
	depth = -1000;
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(384/2,216/2,string("YOU DIED"),2,2,0,c_red,c_red,c_red,c_black,1);
	draw_text_transformed_color(384/2,280/2,string("Restart game to try again"),1,1,0,c_red,c_red,c_red,c_black,1);
}