if(!!instance_exists(oCamera))
{
	var camera = GetCamera(oCamera);
	if(!OOB(
		camera.left_border - 40, 
		camera.right_border + 30, 
		camera.top_border - 30, 
		camera.bottom_border + 30, self)) {shoot_sequence.Evaluate();}
}
else
{
	if(!OOB(-40, 380, -30, 240, self)) {shoot_sequence.Evaluate();}
}

image_angle = _direction - 90;

//direction += Ease_in(direction, _direction, _ease_in);

if(hp <= 0)
{
	if(!!instance_exists(oPlayerBox))
		oPlayerBox.player_state.money += 50;
		
	instance_create_layer(x, y, "Explosions", oGreenExplosion);
	var debris_count = irandom_range(10, 15);
	var size = 0;
	repeat(debris_count)
	{
		size = Chances([[2, 6],[1, 3],[0, 1]]);
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