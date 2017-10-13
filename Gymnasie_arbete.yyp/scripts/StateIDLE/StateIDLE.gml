GetInput();

if (xAxis != 0 || yAxis != 0)
	Action = MOVE;
else
	Action = IDLE;
	

if (yAxis != 0)
{
	if (yAxis > 0)
		Direction = DOWN;
	else if (yAxis < 0)
		Direction = UP;
}

if (xAxis != 0)
{
	if (xAxis > 0)
		Direction = RIGHT;
	else if (xAxis < 0)
		Direction = LEFT;
}
var _direction = point_direction(0, 0, xAxis, yAxis);
var _length = Speed * (xAxis != 0 || yAxis != 0);

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);