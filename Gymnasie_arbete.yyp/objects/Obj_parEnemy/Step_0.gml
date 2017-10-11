TargetX = Obj_Player.x - x;
TargetY = Obj_Player.y - y;

var _targetX = sign(TargetX) *Speed;
var _targetY = sign(TargetY) *Speed;

if (place_meeting(x+_targetX, y, Obj_Collision))
{
	while(!place_meeting(x+sign(_targetX), y, Obj_Collision))
	{
		x += sign(_targetX);
	}
	_targetX = 0;
}
x += _targetX;

if (place_meeting(x, y+_targetY, Obj_Collision))
{
	while(!place_meeting(x, y+sign(_targetY), Obj_Collision))
	{
		y += sign(_targetY);
	}
	_targetY = 0;
}
y += _targetY;