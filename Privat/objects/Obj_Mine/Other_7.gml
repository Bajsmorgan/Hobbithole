switch(sprite_index){
	case(preexplosion):
	sprite_index = explosion;
	image_index = 0;
	break;
	case(explosion):
	instance_destroy();
	break;
}