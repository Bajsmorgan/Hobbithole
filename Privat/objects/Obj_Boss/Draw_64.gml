var sprw = sprite_get_width(Bosshealthfiller);
var sprh = sprite_get_height(Bosshealthfiller);

draw_sprite_ext(Bosshealthborder,0,view_wport[0]/2,view_hport[0],4,4,0,-1,1);
draw_sprite_part_ext(Bosshealthfiller,0,0,0,sprw,sprh,view_wport[0]-868,view_hport[0]-104,4,4,-1,1);