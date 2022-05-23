trace_sequence = new Sequence([
	new Timer(5),
	new Event(function()
		{
			with(instance_create_layer(
				other.x,
				other.y,
				"Particles",
				oTrace
			))
			{
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				image_speed = 0;
			}
		}
	, 1, 0)
], true);
hp = 0;
flash = 0;
mass = 2;
current_horizontal_speed = 0;
current_vertical_speed = 0;