var z = choose(.1,-.1,0);
lightsize += z;

lightsize = clamp(lightsize,1.3,1.6);

if (!instance_exists(Obj_Crystal)) instance_destroy();