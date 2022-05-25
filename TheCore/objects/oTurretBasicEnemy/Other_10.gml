hp = 38;
max_hp = hp;
_type = "flesh";
_alignment = "enemy";
_incorporeal = false;
_land = true;
_destroyed = false;
_pattern_counter = 0;
_current_pattern = [];
_x_direction = 0;
_y_direction = 0;
_ease_in = 0;
image_rot = 90;
image_speed = 0;
image_angle = 0;
depth = 502;

shoot_sequence = new Sequence([
	new Timer(irandom_range(45, 60)),
	new Event(function()
	{
		if(_state != "destroyed")
		{
			image_speed = 0.5;
			if(!!instance_exists(oPlayerBox))
			{
				if(image_index == 7)
				{
				with(instance_create_layer(
					x,
					y + 3,
					"Projectiles",
					oBioShot
				))
					{
						source = "Enemy";
						direction = point_direction(x, y, oPlayerBox.x, oPlayerBox.y);
						speed = 2;
					}
				}
			}
		}
	}, 40, 0),
	new Event(function()
	{
		if(_state != "destroyed")
		{
			image_speed = 0;
			image_index = 0;
		}
	}, 1, 0),
], true);