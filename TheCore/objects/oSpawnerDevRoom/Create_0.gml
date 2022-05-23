spawn_sequence = new Sequence([
	new If(function(){
		return instance_number(oDummy) <= 0
	}),
	new Timer(180),
	new Event(function()
	{
		var _xx = 0;
		var _yy = 0;
		if(!!instance_exists(oCamera))
		{
			var camera = GetCamera(oCamera);
			_xx = camera._xx;
			_yy = camera._yy;
		}
		
		with(instance_create_layer(
			_xx + 160,
			_yy - 0,
			"Projectiles",
			oBurstParticle
		))
		{
			_type = "electric";
			_explosion = oBurstElectricExplosion;
			_incorporeal = true;
			_harm = false;
			damage = 0;
			direction = irandom(359);
			speed = irandom_range(1, 2);
			image_index = irandom_range(0,1);
			image_speed = speed * 0.25;
		}
	}, 10),
	new Event(function()
	{
		var _xx = 0;
		var _yy = 0;
		if(!!instance_exists(oCamera))
		{
			var camera = GetCamera(oCamera);
			_xx = camera._xx;
			_yy = camera._yy;
		}
		
		with(instance_create_layer(
			_xx + 160,
			_yy - 20,
			"Instances",
			oDummy))
			{
				_pattern_index = irandom(array_length(_patterns) - 1);
				//_pattern_index = 2;
				mass = 2;
				top_speed = 1;
				acceleration = mass * 0.05;
				_acceleration = acceleration;
				_current_pattern = _patterns[_pattern_index];
				_speed = _pattern_index == 2 ? 0 : 1;
				_ease_in = _pattern_index == 0 ? 0.05 : 0.025;
				_prescision = 0.5 / (acceleration / mass);
				_path = new Sequence([
					new Event(function()
					{
						other._destination = [];
						array_copy(
							other._destination,
							0,
							other._current_pattern[other._pattern_counter],
							0,
							array_length(other._current_pattern[other._pattern_counter])) 
						other.__destination = [];
						array_copy(
							other.__destination,
							0,
							other._destination,
							0,
							array_length(other._destination)) 
					}, 1),
					new If(function(){
						return scrInArea(other, other._destination, _prescision)
					}),
					new Event(function()
					{
						other._pattern_counter++;
						if(other._pattern_counter >= array_length(_current_pattern))
							other._pattern_counter = 0;
					}, 1),
				], true);
			}
	}, 3),
], true);

diamond_spawn_sequence = new Sequence([
	new Timer(irandom_range(120, 320)),
	new Event(function()
	{

	}, 1),
], true);