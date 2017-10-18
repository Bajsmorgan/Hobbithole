//Get Inputs

xAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxis = keyboard_check(vk_down) - keyboard_check(vk_up);

Attack = keyboard_check_pressed(vk_space);

if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, .4);
	xAxis = gamepad_axis_value(0, gp_axislh);
	yAxis = gamepad_axis_value(0, gp_axislv);
	//1=A 2=B 3=X 4=Y 
	Attack = gamepad_button_check_pressed(0, gp_face2);
}