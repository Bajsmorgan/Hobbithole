
if (instance_exists(Obj_Player)){
	var dis = point_direction(x, y, Obj_Player.x, Obj_Player.y);
	if (dis < Sight)
	{
		TargetX = Obj_Player.x;
		TargetY = Obj_Player.y;
		state = enemyChaseState;
	}else{
		chooseNextState();
	}
}else{
	chooseNextState();
}