//Big boi Movement

var xDirection, yDirection;
xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += xDirection * walkingSpeed;
y += yDirection * walkingSpeed;