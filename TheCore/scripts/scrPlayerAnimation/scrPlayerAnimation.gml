function Ship_tilt(_player, object)
{
	var ship = _player.ship;
	var easy_tilt = ship.Engine.top_speed * 0.25;
	var	deep_tilt = ship.Engine.top_speed * 0.75;
	
	object.image_index = 2

	if(abs(object.current_horizontal_speed) > deep_tilt)
	{
		object.image_index = 2 + (sign(object.current_horizontal_speed) * 2);
	}
	else
	if(abs(object.current_horizontal_speed) > easy_tilt)
	{
		object.image_index = 2 + sign(object.current_horizontal_speed);
	}
}