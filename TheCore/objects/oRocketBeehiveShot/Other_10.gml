mass = 0.25;
_lock_on = false;
_prescision = 1;
_explosion = oVulcanExplosion;
physics = true;
steam_sequence = new Sequence([
	new Event(function()
		{
			var steam_coordinates = Rotate(
				x, 
				y, 
				-sprite_height / 2, 
				_direction, 
				0, 
				irandom_range(-1, 0), 
				_direction + 90,
				_direction + 180
			)
			
			with(instance_create_layer(
				steam_coordinates[0],
				steam_coordinates[1],
				"Particles",
				oSteam
			))
			{
				image_index = irandom_range(2, 3);
				image_speed = irandom_range(3, 4) * 0.15;
			}
		}, 1, 0),
], true);

lock_sequence = new Sequence([
	new Timer(15),
	new Event(function(){
		_lock_on = true;
	}, 1, 0),
], false);