
script_execute(State);
//change the sprite
sprite_index = View[Direction, Action];
//
switch(Direction)
{
	case RIGHT:
		xOffset = CELL/2;
		yOffset = 0;
	break;
	case LEFT:
		xOffset = -CELL/2;
		yOffset = 0;
	break;
	case UP:
		xOffset = 0;
		yOffset = -CELL;
	break;
	case DOWN:
		xOffset = 0;
		yOffset = CELL;
	break;
}		
View[@ RIGHT, MELEEATTACK] = RightCombo[sequenceCount];
View[@ UP, MELEEATTACK] = UpCombo[sequenceCount];
View[@ LEFT, MELEEATTACK] = LeftCombo[sequenceCount];
View[@ DOWN, MELEEATTACK] = DownCombo[sequenceCount];