surface_set_target(surf);

draw_clear(c_black);

with (Obj_Lightplayer)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(Light,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_black,1);
	gpu_set_blendmode(bm_normal);
}

with (Obj_Lightstatic)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(Light,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_black,1);
	gpu_set_blendmode(bm_zero);
draw_sprite_ext(Light,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_orange,0.6);
	gpu_set_blendmode(bm_normal);
}

with (Obj_Lightspell)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(Light,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_black,1);
	gpu_set_blendmode(bm_zero);
draw_sprite_ext(Light,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_purple,0.6);
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();
draw_surface_ext(surf,0,0,1/surfscale,1/surfscale,0,c_white,0.5);