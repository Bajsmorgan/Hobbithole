var initialX = x;
var inityalY = y;
image_index = 0;
var knockback = point_direction(initialX, inityalY, Obj_Player.x, Obj_Player.y);
motion_set(knockback, -Speed);
if place_meeting(x, y, Obj_yikes){
	Speed = 0;
	}