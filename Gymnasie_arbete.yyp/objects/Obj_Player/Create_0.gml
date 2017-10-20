// Initialize

xAxis = 0; //left / right movement
yAxis = 0; //up / down movement
Speed = 4; //How fast you move
//
CanAttack = true;
xOffset = 0;
yOffset = 0;
ObjectType = CollisionType.Friendly;
face = 0;
_direction = 0;
//
State = StateIDLE;

Direction = DOWN;
Action = IDLE;

View[RIGHT, IDLE] = oldspr_idle_right;
View[RIGHT, MOVE] = oldspr_run_right;
View[RIGHT, RANGEDATTACK] = oldspr_run_right;

View[UP, IDLE] = oldspr_idle_up;
View[UP, MOVE] = oldspr_run_up;
View[UP, RANGEDATTACK] = oldspr_run_up;

View[LEFT, IDLE] = oldspr_idle_left;
View[LEFT, MOVE] = oldspr_run_left;
View[LEFT, RANGEDATTACK] = oldspr_run_left;

View[DOWN, IDLE] = oldspr_idle_down;
View[DOWN, MOVE] = oldspr_run_down;
View[DOWN, RANGEDATTACK] = oldspr_run_down;