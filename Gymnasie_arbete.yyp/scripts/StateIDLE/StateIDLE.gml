GetInput();
//
if (Attack)
{
	image_index = 0;
	State = StateRANGEDATTACK;
}
if (Melee)
{
	image_index = 0;
	State = StateMELEEATTACK;
}
//
if (xAxis != 0 || yAxis != 0){
	Action = MOVE;
	getFace();
	if (Dash)
	{
		State = StateDash;
		alarm[0] = room_speed/4;
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
///
xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);