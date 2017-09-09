/// @param from
/// @param to
/// @param duration
/// @param offset
/// @description Wave(from, to, duration, offset)

// Returns a value that will wave back and forth between [from-to] over [duration] seconds
// ex:
//		image_angle = Wave(-45,45,1,0)	-> rock back and forth 90 degrees
//		x = Wave(-10,10,0.25,0)			-> move left and right

var a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;