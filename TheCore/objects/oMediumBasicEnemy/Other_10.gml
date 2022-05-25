hp = 32;
max_hp = hp;
_type = "flesh";
_alignment = "enemy";
_incorporeal = false;
_land = false;
_pattern_counter = -1;
_ease_in = 0;
image_speed = 0;

shoot_sequence = new Sequence([
	new If(function(){
		var _yy = 0;
		if(!!instance_exists(oCamera))
		{
			var camera = GetCamera(oCamera);
			_yy = camera._yy;
		}

		if(_direction < 120 && _direction > 60 && y < 40 + _yy && oob_direction == "top")
		{
			_fire = 0;
			return true
		}
			
		if(_direction > 210 && _direction < 330 && y > 110 + _yy && oob_direction == "bottom")
		{
			_fire = 1;
			return true
		}

		return false
	}),
	new Event(function()
	{
		if(!!instance_exists(oPlayerBox))
		{
			switch(_fire)
			{
				case 0:
				with(instance_create_layer(
					x,
					y,
					"Projectiles",
					oBioShot
				))
				{
					source = "Enemy";
					direction = 265 + (15 * other._pattern_counter);
					speed = 3;
				}
				break;
			
				case 1:
				with(instance_create_layer(
					x,
					y,
					"Projectiles",
					oBioShot
				))
				{
					source = "Enemy";
					direction = point_direction(x, y, oPlayerBox.x, oPlayerBox.y) 
					+ (-30 * other._pattern_counter);
					speed = 4;
				}
				break;
			}
		}
		_pattern_counter++;
		if(_pattern_counter >= 2) 
		{top_speed *= 3; ancor.path_speed *= 3;}
	}, 3, 5),
], false);