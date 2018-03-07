//Get Inputs

//Set keys
right_key = ord("D");
left_key = ord("A");
down_key = ord("S");
up_key = ord("W");
switch_key = ord("X");
attack_key = vk_space;

//Keyboard
xAxismove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yAxismove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

xAxisaim = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxisaim = keyboard_check(vk_down) - keyboard_check(vk_up);

Switchweapon = keyboard_check(ord("X"));
Attack = keyboard_check(vk_space);

//Controller
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.4);
	right_key = gp_padr;
	left_key = gp_padl;
	down_key = gp_padd;
	up_key = gp_padu;
	switch_key = gp_shoulderlb;
	attack_key = gp_shoulderrb;
	
	xAxismove = gamepad_axis_value(0, gp_axislh);
	yAxismove = gamepad_axis_value(0, gp_axislv);
	
	xAxisaim = gamepad_axis_value(0, gp_axisrh);
	yAxisaim = gamepad_axis_value(0, gp_axisrv);

	Switchweapon = gamepad_button_check_pressed(0, switch_key);
	Attack = gamepad_button_check_pressed(0, attack_key);
}