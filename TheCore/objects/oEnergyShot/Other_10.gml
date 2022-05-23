mass = 0;
image_angle = direction;
_explosion = noone;
travel = 0;

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
				image_angle = other.image_angle;
			}
		}
	, 1, 0)
], true);