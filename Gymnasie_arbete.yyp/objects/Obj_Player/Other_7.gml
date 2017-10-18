switch(Action)
{
	case IDLE:
	case MOVE:
	break;
	case RANGEDATTACK:
	State = StateIDLE;
	CanAttack = true;
	break;
}