/// @description Approach(a, b, amount)
/// @param a
/// @param b
/// @param amount

// Moves "a" towards "b" by amount and returns the result
// Won't overshoot, works in both directions
// ex:
//		speed = Approach(speed, max_speed, acceleration);
//		hp = Approach(hp, 0, damage_amount);

if (argument0 < argument1)
{
	argument0 += argument2;
	if (argument0 > argument1)
		return argument1;
}
else
{
	argument0 -= argument2;
	if (argument0 < argument1)
		return argument1;
}
return argument0;