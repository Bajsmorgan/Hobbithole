if(ds_exists(ds_depthgrid, ds_type_grid)){

	var depthgrid = ds_depthgrid;
	var instnumb = instance_number(Obj_Parent_Depth);
	ds_grid_resize(depthgrid, 2, instnumb +1);
		
	var yy = 0;	
		
	with(Obj_Parent_Depth){	
		
		//add ourselves to grid
		depthgrid[# 0,yy] = id;
		
		//add our Y value
		depthgrid[# 1,yy] = y;
		yy +=  1;
	}

	//sort the grid by Y value (lowest Y values first)
	ds_grid_sort(ds_depthgrid, 1, true);

	yy = 0;	
	repeat (instnumb) {
		//draw the instance
		var instanceID = ds_depthgrid[# 0, yy];
		
		with(instanceID){
			draw_self();
		}
		yy +=  1;
	}
	ds_grid_clear(ds_depthgrid,0);
}