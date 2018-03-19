direction = image_angle;
image_angle += 0.5;

for(var i = 0; i < 9999; i++){

    var lx = x + lengthdir_x(i, direction + 270), var ly = y + lengthdir_y(i, direction + 270);

    if(collision_point(lx, ly, Obj_Wall, false, true)){
        break;
    }

}
height = sin(random(1));
draw_set_color(purple);
draw_line_width(x, y, lx, ly, (height * 16) + 0.1);
draw_set_color(ltpurple);
draw_line_width(x, y, lx, ly, (height * 8) + 0.1);
draw_set_color(pink);
draw_line_width(x, y, lx, ly, (height * 5) + 0.1);
draw_sprite_ext(Laserhit,1,lx,ly,0.5,0.5,direction,-1,1);