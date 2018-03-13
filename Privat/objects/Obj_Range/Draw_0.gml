var max_length = 600;

for(var i = 0; i < max_length; i++){

    var lx = x + lengthdir_x(i, direction);
    var ly = y + lengthdir_y(i, direction);

    if(collision_point(lx, ly, Obj_Wall, false, true)){
        break;
    }
	
}

draw_sprite_ext(Arrowhit,-1,lx,ly,0.5,0.5,direction + 90,c_white,1);
