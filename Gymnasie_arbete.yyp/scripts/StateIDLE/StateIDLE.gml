GetInput();
//
if (Attack)
{
	image_index = 0;
	State = StateRANGEDATTACK;
}
//
if (xAxis != 0 || yAxis != 0)
{
	Action = MOVE;
	GetFace();
}else{
	Action = IDLE;
}
//get direction and length
_direction = point_direction(0, 0, xAxis, yAxis);
var _length = Speed * (xAxis != 0 || yAxis != 0);
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


xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);