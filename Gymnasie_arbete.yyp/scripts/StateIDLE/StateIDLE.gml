GetInput();
<<<<<<< HEAD
//
if(Attack)
{
	image_index = 0; //reset animation
	State = StateRANGEDATTACK;
}
//
if (xAxis != 0 || yAxis != 0){
=======

if (xAxis != 0 || yAxis != 0)
>>>>>>> 40ad68f3ffdb590c1eb747cc8f7fcc72d3d30730
	Action = MOVE;
else
	Action = IDLE;
	
//get direction and length
<<<<<<< HEAD
_direction = point_direction(0, 0, xAxis, yAxis);
_length = Speed * (xAxis != 0 || yAxis != 0);

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

//SWITCH Face
=======
var _direction = point_direction(0, 0, xAxis, yAxis);
var _length = Speed * (xAxis != 0 || yAxis != 0);
//get the macro
var face = round(_direction / 90);
if(face == 4)
	face = 0;
//SWITCH
>>>>>>> 40ad68f3ffdb590c1eb747cc8f7fcc72d3d30730
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

<<<<<<< HEAD
MovementCollide(xAxis, yAxis, Obj_Collision, false);
=======

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

MovementCollide(xAxis, yAxis, Obj_Collision);
>>>>>>> 40ad68f3ffdb590c1eb747cc8f7fcc72d3d30730
