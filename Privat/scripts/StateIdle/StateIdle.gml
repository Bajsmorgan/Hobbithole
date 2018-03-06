x_speed_ += xAxismove * acceleration_;
y_speed_ += yAxismove * acceleration_;
var _speed = point_distance(0, 0, x_speed_, y_speed_);
var _direction = point_direction(0, 0, x_speed_, y_speed_);
if (_speed > max_speed_) {
	x_speed_ = lengthdir_x(max_speed_, _direction);
	y_speed_ = lengthdir_y(max_speed_, _direction);
}

if (xAxismove == 0) {
	x_speed_ = lerp(x_speed_, 0, .3);
}
if (yAxismove == 0) {
	y_speed_ = lerp(y_speed_, 0, .3);
}

if (xAxismove == 0 && yAxismove == 0) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = .8;	
}

if (x_speed_ > 0) {
	image_xscale = 1;	
} else if (x_speed_ < 0) {
	image_xscale = -1;	
}

MovementCollide(xAxismove, yAxismove, Obj_Wall);