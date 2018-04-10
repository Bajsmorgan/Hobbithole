Speed = 1;
//ObjectType = CollisionType.Enemy;
/// Jeff king
path = path_add();
state = enemyIdleState;

//Health
hp = 9;
flash = 0;
invincibility = false;
knockback = point_direction(x, y+11, Obj_Player.x, Obj_Player.y+11);