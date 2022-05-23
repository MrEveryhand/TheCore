mass = 3;
_explosion = oBigRocketExplosion;
steam_sequence = new Sequence([
	new Event(function()
		{
			var steam_coordinates = Rotate(
				x, 
				y, 
				-sprite_height / 2, 
				direction, 
				irandom_range(-2, 2), 
				irandom_range(-7, 0), 
				direction + 90,
				direction + 180
			)
			
			with(instance_create_layer(
				steam_coordinates[0],
				steam_coordinates[1],
				"Particles",
				oSteam
			))
			{
				image_index = irandom_range(0, 1);
				image_speed = irandom_range(3, 4) * 0.1;
			}
		}, 6, 0),
], true);