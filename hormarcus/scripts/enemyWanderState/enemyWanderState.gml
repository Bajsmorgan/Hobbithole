checkForPlayer();
var _targetX = sign(TargetX) *Speed;
var _targetY = sign(TargetY) *Speed;

MovementCollide(_targetX, _targetY, Obj_Collision);
chooseNextState();