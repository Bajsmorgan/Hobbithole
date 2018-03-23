direction = image_angle;
image_angle += 0.5;

for(var i = 0; i < 9999; i++){

    var lx = x + lengthdir_x(i, direction + 180), var ly = y + lengthdir_y(i, direction + 180);

    if(collision_point(lx, ly, Obj_Wall, false, true)){
        break;
    }
		if(collision_point(lx, ly, Obj_Player, false, true)){
		with(Obj_Player){
			if (invincibility == false){
				hp--;
				flash = 3;
				invincibility = true;
				alarm[0] = room_speed;
			}
		}
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
draw_sprite_ext(Laserhit,1,lx,ly,0.5,0.5,direction + 180,-1,1);