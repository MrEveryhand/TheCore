mass = 3;
_explosion = oRocketExplosion;
image_angle = irandom_range(0, 359);
sparks_sequence = new Sequence([
	new Event(function()
		{
			var spark_coordinates = Rotate(
				x, 
				y, 
				-sprite_height / 2, 
				direction + irandom_range(-10, 10), 
				irandom_range(-1, 1), 
				irandom_range(-5, 0), 
				direction + 90,
				direction + 180
			)
			
			with(instance_create_layer(
				spark_coordinates[0],
				spark_coordinates[1],
				"Particles",
				oSpark
			))
			{
				image_index = other.image_index < 5 ? other.image_index : 5;
				image_speed = irandom_range(3, 4) * 0.15;
				speed = 1;
				direction = other.direction + 180;
			}
		}, 3, 0),
], true);