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

if(hp <= 0 && _state != "destroyed")
{
	if(!!instance_exists(oPlayerBox))
		oPlayerBox.player_state.money += 10;
		
	instance_create_layer(x, y, "Explosions", oGreenExplosion);
	var debris_count = irandom_range(10, 15);
	var size = 0;
	repeat(debris_count)
	{
		size = Chances([[1, 2],[0, 8]]);
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
	_state = "destroyed";
	sprite_index = sTurretEnemyDestroyed;
	image_speed = 0;
	image_index = irandom(2);
	depth = 501
}