switch (sprite_index){
	case summoncirlestart:
	image_index = 0;
	sprite_index = summoncirleloop;
	break;
	case summoncirleloop:
	image_index = 0;
	sprite_index = summoncirleend;
	break;
	case summoncirleend:
	instance_destroy();
	break;
}