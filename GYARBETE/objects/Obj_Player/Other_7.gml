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
		sequenceCount += 1;
			if (sequenceCount>=2)
			{
				sequenceCount = 0;
			}
		instance_destroy(Obj_parProjectile);
		State = StateIDLE;
		CanAttack = true;
	break;
}
