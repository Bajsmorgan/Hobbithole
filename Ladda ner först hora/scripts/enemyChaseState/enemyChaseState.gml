/*checkForPlayer();
_direction = point_direction(0, 0, TargetX, TargetY);
_length = Speed * (TargetX != 0 || TargetY != 0);
TargetX = lengthdir_x(_length, _direction);
TargetY = lengthdir_y(_length, _direction);*/

var cx = (Obj_Player.x / 16) * 16;
var cy = (Obj_Player.y / 16) * 16;

if(distance_to_object(Obj_Player) < 150 && mp_grid_path(global.grid, path, x, y, cx, cy, 1)){
	path_start(path, Speed, path_action_stop, false);
}