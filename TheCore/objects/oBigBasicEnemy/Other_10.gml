hp = 39;
max_hp = hp;
_type = "flesh";
_alignment = "enemy";
_incorporeal = false;
_land = false;
_pattern_counter = 0;
_current_pattern = [];
_ease_in = 0;
image_speed = 0.75;

shoot_sequence = new Sequence([
	new Timer(irandom_range(100, 140)),
	new Event(function()
	{
		if(!!instance_exists(oPlayerBox))
		{
			var counter = 6;
			repeat(6)
			{
				
				with(instance_create_layer(
					x,
					y,
					"Projectiles",
					oBioShot
				))
				{
					source = "Enemy";
					direction = 60 * counter;
					speed = 2;
				}
				counter--;
			}
		}
	}, 1, 0),
], true);