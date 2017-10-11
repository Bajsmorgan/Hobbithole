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

if (place_meeting(x+xAxis, y, Obj_Collision))
{
	while(!place_meeting(x+sign(xAxis), y, Obj_Collision))
	{
		x += sign(xAxis);
	}
	xAxis = 0;
}
x += xAxis;
if (place_meeting(x, y+yAxis, Obj_Collision))
{
	while(!place_meeting(x, y+sign(yAxis), Obj_Collision))
	{
		y += sign(yAxis);
	}
	yAxis = 0;
}
y += yAxis;