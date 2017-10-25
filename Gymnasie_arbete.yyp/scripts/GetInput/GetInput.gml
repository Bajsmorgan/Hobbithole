//Get Inputs

xAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxis = keyboard_check(vk_down) - keyboard_check(vk_up);

Attack = keyboard_check_pressed(vk_space);
Dash = keyboard_check_pressed(ord("C"));

if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, .4);
	xAxis = gamepad_axis_value(0, gp_axislh);
	yAxis = gamepad_axis_value(0, gp_axislv);
	//
	Attack = gamepad_button_check_pressed(0, gp_face2);
	Dash = gamepad_button_check_pressed(0, gp_face1);
}