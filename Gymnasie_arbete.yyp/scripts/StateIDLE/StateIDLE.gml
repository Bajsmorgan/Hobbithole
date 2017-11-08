GetInput();
//
var bbox_side;
if (Attack)
{
	image_index = 0;
	State = StateRANGEDATTACK;
}
//
if (xAxis != 0 || yAxis != 0){
	Action = MOVE;
	getFace();
	if (Dash)
	{
		State = StateDash;
		alarm[0] = room_speed/6;
	}
}else
	Action = IDLE;
	
//get direction and length
_direction = point_direction(0, 0, xAxis, yAxis);
_length = Speed * (xAxis != 0 || yAxis != 0);
//SWITCH
switch(face)
{
	case 0:
		Direction = RIGHT;
	break;
	case 1:
		Direction = UP;
	break;
	case 2:
		Direction = LEFT;
	break;
	case 3:
		Direction = DOWN;
	break;
		
}

if (xAxis > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side + xAxis,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side + xAxis,bbox_bottom) != 0)
{
	if (xAxis > 0) x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x);
	xAxis = 0;
}
xAxis = lengthdir_x(_length, _direction);

if (yAxis > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side + yAxis) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side + yAxis) != 0)
{
	if (yAxis > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	yAxis = 0;
}
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);