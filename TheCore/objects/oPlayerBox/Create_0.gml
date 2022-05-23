player_input = global.player_control;
player_state = global.player_state;
sprite_index = player_state.ship.Hull.sprite;
image_xscale *= 0.78;
image_yscale *= 0.76;

right = 0;
left = 0;
up = 0;
down = 0;
horizontal_force_direction = right - left;
vertical_force_direction = down - up;
pif = 0;
_direction = 0;
current_horizontal_speed = 0;
current_vertical_speed = 0;
shoot_lock = false;
inv_frames = 0;

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
			}
		}
	, 1, 0)
], true);

gloss_sequence = new Sequence([
	new Timer(10),
	new Event(function()
		{
			with(instance_create_layer(
				other.x + (irandom_range(-12, 12)),
				other.y + (irandom_range(-12, 12)),
				"OverParticles",
				oGloss
			))
			{
				image_speed = irandom_range(2,4) * 0.20;
			}
		}
	, 2, 0)
], true);