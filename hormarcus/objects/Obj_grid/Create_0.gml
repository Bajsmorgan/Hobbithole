var cell_width = 32
var cell_heigth = 32;

var hcells = room_width / cell_width;
var vcells = room_height / cell_heigth;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_heigth);

mp_grid_add_instances(global.grid, Obj_Collision, false);