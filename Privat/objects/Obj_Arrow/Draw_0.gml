if(instance_exists(Obj_Arrow)){
if (sprite_index = Arrowhit) height -= 0.01;

draw_set_color(blue);
draw_line_width(Objpx, Objpy, x, y, (height * 16) + 0.1);
draw_set_color(ltblue);
draw_line_width(Objpx, Objpy, x, y, (height * 8) + 0.1);
draw_set_color(wblue);
draw_line_width(Objpx, Objpy, x, y, (height * 5) + 0.1);
}
draw_self();