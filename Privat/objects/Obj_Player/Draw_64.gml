var sprw = sprite_get_width(Healthfiller);
var sprh = sprite_get_height(Healthfiller);

draw_sprite_ext(Healthborder,0,0,0,9,9,0,-1,1);
draw_sprite_part_ext(Healthfiller,0,0,0,sprw,sprh,0,0,9,9,-1,1);