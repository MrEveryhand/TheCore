Tilt(self)
shoot_sequence.Evaluate();

image_angle = _direction + 90;

//direction += Ease_in(direction, _direction, _ease_in);

if(hp <= 0)
{
	if(!!instance_exists(oPlayerBox))
		oPlayerBox.player_state.money += 25;
		
	instance_create_layer(x, y, "Explosions", oGreenExplosion);
	var debris_count = irandom_range(10, 15);
	var size = 0;
	repeat(debris_count)
	{
		size = Chances([[2, 2],[1, 5],[0, 3]]);
		with(instance_create_layer(x, y, "Particles", oDebris))
		{
			sprite_index = asset_get_index("sPieces_" + string(size));
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