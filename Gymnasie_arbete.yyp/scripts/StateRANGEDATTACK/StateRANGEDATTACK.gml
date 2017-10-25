Action = RANGEDATTACK;

var _x = xOffset;
var _y = yOffset;
var _creator = ObjectType;

if (floor(image_index)>=2)
{
	if (!instance_exists(Obj_parProjectile)&&CanAttack)
	{
		CanAttack = false;
		with (instance_create_depth(x+_x,y+_y,0,Obj_parProjectile))
		{
			xDirection = _x;
			yDirection = _y;
			Creator = _creator;
		}
	}
}