_length = Speed*2.5;

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);

var dash = instance_create_depth(x,y,1700,Obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;