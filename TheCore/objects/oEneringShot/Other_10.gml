mass = 0.5;
image_xscale = 1
image_yscale = image_xscale;
image_angle = direction;
_explosion = noone;

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
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				image_angle = other.image_angle;
			}
		}
	, 1)
], true);