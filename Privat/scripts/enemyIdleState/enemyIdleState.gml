var cx = Obj_Player.x;
var cy = Obj_Player.y;

if(distance_to_object(Obj_Player) < 50 && mp_grid_path(global.grid, path, x, y, cx, cy, 1)){
	path_start(path, Speed, path_action_stop, false);
}