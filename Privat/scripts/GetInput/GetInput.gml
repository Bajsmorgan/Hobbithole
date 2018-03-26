//Get Inputs

//Keybinds
switch_key = ord("Q");
attack_key = vk_space;
left_key = ord("A");
right_key = ord("D");
up_key = ord("W");
down_key = ord("S");

//Keyboard
xAxismove = keyboard_check(right_key) - keyboard_check(left_key);
yAxismove = keyboard_check(down_key) - keyboard_check(up_key);

xAxisaim = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxisaim = keyboard_check(vk_down) - keyboard_check(vk_up);

Switchweapon = keyboard_check_pressed(switch_key);
Attack = keyboard_check_pressed(attack_key);

//Controller
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.4);
	
	//Keybinds
	switch_key = gp_shoulderr or gp_shoulderl;
	attack_key = gp_shoulderrb or gp_shoulderlb;

	xAxismove = gamepad_axis_value(0, gp_axislh);
	yAxismove = gamepad_axis_value(0, gp_axislv);
	
	xAxisaim = gamepad_axis_value(0, gp_axisrh);
	yAxisaim = gamepad_axis_value(0, gp_axisrv);

	Switchweapon = gamepad_button_check_pressed(0,switch_key);
	Attack = gamepad_button_check_pressed(0,attack_key);
}