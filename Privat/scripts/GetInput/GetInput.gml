//Get Inputs

//Keyboard
xAxismove = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
yAxismove = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

xAxisaim = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxisaim = keyboard_check(vk_down) - keyboard_check(vk_up);

Switchweapon = keyboard_check_pressed(ord("X"));
Attack = keyboard_check(vk_space);

//Controller
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.4);
	xAxismove = gamepad_axis_value(0, gp_axislh);
	yAxismove = gamepad_axis_value(0, gp_axislv);
	
	xAxisaim = gamepad_axis_value(0, gp_axisrh);
	yAxisaim = gamepad_axis_value(0, gp_axisrv);

	Switchweapon = gamepad_button_check_pressed(0, gp_shoulderlb);
	Attack = gamepad_button_check_pressed(0, gp_shoulderrb);
}