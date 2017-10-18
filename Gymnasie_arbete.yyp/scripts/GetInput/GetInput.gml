//Get Inputs

xAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxis = keyboard_check(vk_down) - keyboard_check(vk_up);

if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, .4);
	xAxis = gamepad_axis_value(0, gp_axislh);
	yAxis = gamepad_axis_value(0, gp_axislv);
}