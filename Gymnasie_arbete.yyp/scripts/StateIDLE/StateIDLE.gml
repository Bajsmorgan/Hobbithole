GetInput();

if (xAxis != 0 || yAxis != 0)
	Action = MOVE;
else
	Action = IDLE;
	
//get direction and length
var _direction = point_direction(0, 0, xAxis, yAxis);
var _length = Speed * (xAxis != 0 || yAxis != 0);
//get the macro
var face = round(_direction / 90);
if(face == 4)
	face = 0;
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


xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);