script_execute(State);
//change the sprite
sprite_index = View[Direction, Action];
//
switch(Direction)
{
	case RIGHT:
		xOffset = CELL;
		yOffset = 0;
	break;
	case LEFT:
		xOffset = -CELL;
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