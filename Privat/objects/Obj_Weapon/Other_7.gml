switch(sprite_index){
	case Bow:
	image_index = 0;
	break;
	case Swing_1 or Swing_2:
	if (switchswing = 0) sprite_index = Swing_1;
	else if (switchswing = 1) sprite_index = Swing_2;
	break;
}

playanimation = 0;