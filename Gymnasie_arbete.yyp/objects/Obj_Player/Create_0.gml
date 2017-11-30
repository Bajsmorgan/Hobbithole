// Initialize

xAxis = 0; //left / right movement
yAxis = 0; //up / down movement
Speed = 2.5; //How fast you move
///
State = StateIDLE;
///
face = 0;
_direction = 0;
_length = 0;
//
CanAttack = true;
xOffset = 0;
yOffset = 0;
//
ObjectType = CollisionType.Friendly;
//
Direction = DOWN;
Action = IDLE;
//
View[RIGHT, IDLE] = spr_idle_right;
View[RIGHT, MOVE] = spr_run_right;
View[RIGHT, RANGEDATTACK] = spr_attack_right_1;
View[RIGHT, MELEEATTACK] = spr_attack_right_1;
//
View[UP, IDLE] = spr_idle_right;
View[UP, MOVE] = spr_run_up;
View[UP, RANGEDATTACK] = spr_attack_right_2;
View[UP, MELEEATTACK] = spr_attack_right_2;
//
View[LEFT, IDLE] = spr_idle_left;
View[LEFT, MOVE] = spr_run_left;
View[LEFT, RANGEDATTACK] = spr_attack_left_1;
View[LEFT, MELEEATTACK] = spr_attack_left_1;
//
View[DOWN, IDLE] = spr_idle_left;
View[DOWN, MOVE] = spr_run_down;
View[DOWN, RANGEDATTACK] = spr_attack_left_1;
View[DOWN, MELEEATTACK] = spr_attack_left_1;
//