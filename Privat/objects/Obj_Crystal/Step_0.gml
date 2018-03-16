if (image_index = 11) image_index = 6;
if (image_index >= 6 and image_index <= 11){
	if (!instance_exists(Obj_Crossshot1))
	instance_create_depth(x,y-14,depth,Obj_Crossshot1);
	if (!instance_exists(Obj_Crossshot2))
	instance_create_depth(x,y-14,depth,Obj_Crossshot2);
	if (!instance_exists(Obj_Crossshot3))
	instance_create_depth(x,y-14,depth,Obj_Crossshot3);
	if (!instance_exists(Obj_Crossshot4))
	instance_create_depth(x,y-14,depth,Obj_Crossshot4);
}
