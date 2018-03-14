direction = image_angle;
image_angle += 1;

for(var i = 0; i < 9999; i++){

    var lx = x + lengthdir_x(i, direction + 180), var ly = y + lengthdir_y(i, direction + 180);

    if(collision_point(lx, ly, Obj_Wall, false, true)){
        break;
    }

}
draw_line_color(x,y,lx,ly,c_red,c_red);
