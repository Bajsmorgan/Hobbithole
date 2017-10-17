// Initialize

xAxis = 0; //left / right movement
yAxis = 0; //up / down movement
Speed = 4; //How fast you move
_direction = 0;
_length = 0;
face = 0;
State = StateIDLE;

Direction = DOWN;
Action = IDLE;

View[RIGHT, IDLE] = spr_idle_right;
View[RIGHT, MOVE] = spr_run_right;
View[UP, IDLE] = spr_idle_up;
View[UP, MOVE] = spr_run_up;
View[LEFT, IDLE] = spr_idle_left;
View[LEFT, MOVE] = spr_run_left;
View[DOWN, IDLE] = spr_idle_down;
View[DOWN, MOVE] = spr_run_down;