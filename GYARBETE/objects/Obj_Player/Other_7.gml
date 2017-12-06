switch (Action)
{
	case IDLE:
	case MOVE:
	break;
	case RANGEDATTACK:
		State = StateIDLE;
		CanAttack = true;
	break;
	case MELEEATTACK:
		instance_destroy(Obj_parProjectile);
		State = StateIDLE;
		CanAttack = true;
	break;
}