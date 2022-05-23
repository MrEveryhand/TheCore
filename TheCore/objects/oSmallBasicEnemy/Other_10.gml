hp = 12;
max_hp = hp;
_type = "flesh";
_alignment = "enemy";
_incorporeal = false;
_pattern_counter = 0;
_current_pattern = [];
_x_direction = 0;
_y_direction = 0;
_ease_in = 0;
image_rot = 0;
shoot_sequence = new Sequence([
	new Timer(irandom_range(120, 180)),
	new Event(function()
	{
		if(!!instance_exists(oPlayerBox))
		{
			with(instance_create_layer(
				x,
				y,
				"Projectiles",
				oBioShot
			))
			{
				source = "Enemy";
				direction = point_direction(x, y, oPlayerBox.x, oPlayerBox.y);
				speed = 2;
			}
		}
	}, 1, 0),
], false);