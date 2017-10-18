var _x = argument[0];
var _y = argument[1];
var _obj = argument[2];
var _destroy = argument[3];


if (place_meeting(x+_x, y, _obj))
{
	while(!place_meeting(x+sign(_x), y, _obj))
	{
		x += sign(_x);
	}
	_x = 0;
	if (_destroy)
		instance_destroy();
}
x += _x;
if (place_meeting(x, y+_y, _obj))
{
	while(!place_meeting(x, y+sign(_y), _obj))
	{
		y += sign(_y);
	}
	_y = 0;
	if (_destroy)
		instance_destroy();
}
y += _y;