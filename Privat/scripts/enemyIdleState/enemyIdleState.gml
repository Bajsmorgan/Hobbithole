///checkForPlayer();
Speed = .5;
var cx = (Obj_Player.x / 16) * 16;
var cy = (Obj_Player.y / 22) *22;

if(distance_to_object(Obj_Player) < 50 && mp_grid_path(global.grid, path, x, y, cx, cy, 1)){
	path_start(path, Speed, path_action_stop, false);
}