TargetX = Obj_Player.x - x;
TargetY = Obj_Player.y - y;

var _targetX = sign(TargetX) *Speed;
var _targetY = sign(TargetY) *Speed;

MovementCollide(_targetX, _targetY, Obj_Collision);