
var cx = (Obj_Player.x / 32) * 32 + 16;
var cy = (Obj_Player.y / 32) *32 + 16;

if(distance_to_object(Obj_Player) < 75 && mp_grid_path(global.grid, path, x, y, cx, cy, 1)){
path_start(path, Speed, path_action_stop, false);
}
