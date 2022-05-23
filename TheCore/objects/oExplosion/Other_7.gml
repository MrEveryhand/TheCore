if(irandom_range(0,4) > 1) 
	with(instance_create_layer(
		x + irandom_range(-5,5),
		y + irandom_range(-5,5),
		"Particles",
		oExplosion
		))
		{
			image_speed = irandom_range(1,2);
			image_angle = irandom_range(0,360);
		}
instance_destroy(self);