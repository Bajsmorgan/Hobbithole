if (instance_exists(Obj_Player)){
	var dis = point_distance(x, y, Obj_Player.x, Obj_Player.y);
	if (dis < Sight)
	{
		TargetX = Obj_Player.x - x;
		TargetY = Obj_Player.y - y;
		state = enemyChaseState;
	}else{
		chooseNextState();
	}
}else{
	chooseNextState();
}