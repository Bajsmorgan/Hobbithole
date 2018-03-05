GetInput();

global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = Dash;
global.key_enter = Melee;
global.key_left = xAxis;
global.key_right = xAxis;
global.key_up =	yAxis;
global.key_down = yAxis;

display_set_gui_size(global.view_width,global.view_height);

enum menu_page {
	main,
	settings,
	audio,
	graphics,
	controls,
}

enum menu_element_type {
	script_runner,
	page_transfer,
	sliders,
	shift,
	toggle,
	input,
}

//Create menu pages
ds_menu_main = create_menu_page(
	["RESUME",		menu_element_type.script_runner,	resume_game],
	["SETTINGS",	menu_element_type.page_transfer,	menu_page.settings],
	["EXIT",		menu_element_type.script_runner,	exit_game]
);

ds_menu_settings = create_menu_page(
	["AUDIO",		menu_element_type.page_transfer,	menu_page.audio],
	["GRAPHICS",	menu_element_type.page_transfer,	menu_page.graphics],
	["CONTROLS",	menu_element_type.page_transfer,	menu_page.controls],
	["BACK",		menu_element_type.page_transfer,	menu_page.main],
);

ds_menu_audio = create_menu_page(
	["MASTER",		menu_element_type.sliders,	change_volume,	1,	[0,1]],
	["SFX",			menu_element_type.sliders,	change_volume,	1,	[0,1]],
	["MUSIC",		menu_element_type.sliders,	change_volume,	1,	[0,1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],
);


ds_menu_graphics = create_menu_page(
	["RESOLUTION",	menu_element_type.shift,	change_resolution,	0,	["384 x 216","640 x 360","1024 x 576","1280 x 720","1664 x 936","1920 x 1080"]],
	["WINDOW MODE",	menu_element_type.toggle,	change_window_mode,	1,	["FULLSCREEN","WINDOWED"]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],
);

ds_menu_controls = create_menu_page(
	["UP",			menu_element_type.input,	"key_up",		vk_up],
	["LEFT",		menu_element_type.input,	"key_left",		vk_left],
	["RIGHT",		menu_element_type.input,	"key_right",	vk_right],
	["DOWN",		menu_element_type.input,	"key_down",		vk_down],
	["MELEE",		menu_element_type.input,	"key_melee",	ord("X")],
	["RANGED",		menu_element_type.input,	"key_ranged",	vk_space],	
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],
);

page = 0;
menu_pages = [ds_menu_main,ds_menu_settings,ds_menu_audio,ds_menu_graphics,ds_menu_controls];
var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_options[i] = 0;
	i++;
}