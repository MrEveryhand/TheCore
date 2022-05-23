if(!!instance_exists(collide_object))
	instance_create_layer(
		collide_object.x,
		collide_object.y,
		"Explosions",
		oEnerExplosion
		);