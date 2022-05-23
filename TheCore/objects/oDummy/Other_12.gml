if(hp <= 0)
{
	if(!!instance_exists(oPlayerBox))
		oPlayerBox.player_state.money += 100;
		
	instance_create_layer(x, y, "Explosions", oExplosion);
	var debris_count = irandom_range(10, 15);
	var size = 0;
	repeat(debris_count)
	{
		size = irandom_range(0, 9);
		if(size > 6) size = 1;
		else size = 0;
		with(instance_create_layer(x, y, "Particles", oDebris))
		{
			sprite_index = asset_get_index("sDebris_" + string(size));
			image_angle = irandom_range(0, 359);
			direction = image_angle;
			speed = irandom_range(1, 2) * 0.5;
			image_speed = speed;
			timer = irandom_range(30, 60);
			z_vector = 1 - irandom_range(0, 2);
		}
	}
	instance_destroy(self);
}