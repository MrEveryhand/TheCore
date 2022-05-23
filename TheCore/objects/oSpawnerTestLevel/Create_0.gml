function Wave_spawner(_x, _y, _pattern, rate)
{
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	
	with(instance_create_layer(
		_xx + _x,
		_yy + _y,
		"Instances",
		oDummy))
	{
		mass = 2;
		_current_pattern = _pattern;
		top_speed = 1.5;
		_acceleration = 0.3;
		_speed = 1;
		_ease_in = 0.05;
		_prescision = 5;
		_path = new Sequence([
			new Event(function()
			{
				other._destination = [];
				array_copy(
					other._destination,
					0,
					other._current_pattern[other._pattern_counter],
					0,
					array_length(other._current_pattern[other._pattern_counter])); 
				other.__destination = [];
				array_copy(
					other.__destination,
					0,
					other._destination,
					0,
					array_length(other._destination)) 
			}, 1),
			new Timer(rate),
			new Event(function()
			{
				other._pattern_counter++;
				if(other._pattern_counter >= array_length(_current_pattern))
					other._pattern_counter = 0;
			}, 1),
		], true);
	}
}

function Curve_spawner(_x, _y, _pattern)
{
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	
	with(instance_create_layer(
		_xx + _x,
		_yy + _y,
		"Instances",
		oDummy))
	{
		mass = 2;
		_current_pattern = _pattern;
		top_speed = 1;
		_acceleration = 0.1;
		_speed = 1;
		_ease_in = 0.05;
		//_prescision = 0.5 / (acceleration / mass);
		_prescision = 5;
		_path = new Sequence([
			new Event(function()
			{
				other._destination = [];
				array_copy(
					other._destination,
					0,
					other._current_pattern[other._pattern_counter],
					0,
					array_length(other._current_pattern[other._pattern_counter])); 
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
}

function Curve_basic_spawner(_x, _y, _pattern)
{
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	
	with(instance_create_layer(
		_xx + _x,
		_yy + _y,
		"Instances",
		oBasicEnemy))
	{
		_direction = 0;
		mass = 12;
		_current_pattern = _pattern;
		top_speed = 0.5;
		_acceleration = 0.1;
		_speed = 1;
		_ease_in = 0.05;
		//_prescision = 0.5 / (acceleration / mass);
		_prescision = 5;
		_path = new Sequence([
			new Event(function()
			{
				other._destination = [];
				array_copy(
					other._destination,
					0,
					other._current_pattern[other._pattern_counter],
					0,
					array_length(other._current_pattern[other._pattern_counter])); 
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
}

function Curve_basic2_spawner(_x, _y, _pattern)
{
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	
	with(instance_create_layer(
		_xx + _x,
		_yy + _y,
		"Instances",
		oBasicEnemy2))
	{
		_direction = 0;
		mass = 6;
		_current_pattern = _pattern;
		top_speed = 1;
		_acceleration = 0.2;
		_speed = 1;
		_ease_in = 0.05;
		//_prescision = 0.5 / (acceleration / mass);
		_prescision = 5;
		_path = new Sequence([
			new Event(function()
			{
				other._destination = [];
				array_copy(
					other._destination,
					0,
					other._current_pattern[other._pattern_counter],
					0,
					array_length(other._current_pattern[other._pattern_counter])); 
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
}

function Curve_basic3_spawner(_x, _y, _pattern)
{
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	
	with(instance_create_layer(
		_xx + _x,
		_yy + _y,
		"Instances",
		oBasicEnemy3))
	{
		_direction = 0;
		mass = 3;
		_current_pattern = _pattern;
		top_speed = 2;
		_acceleration = 0.5;
		_speed = 1;
		_ease_in = 0.05;
		//_prescision = 0.5 / (acceleration / mass);
		_prescision = 5;
		_path = new Sequence([
			new Event(function()
			{
				other._destination = [];
				array_copy(
					other._destination,
					0,
					other._current_pattern[other._pattern_counter],
					0,
					array_length(other._current_pattern[other._pattern_counter])); 
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
}

spawn_sequence = new Sequence([
	new If(function(){
		return instance_number(oDummy) <= 0
	}),
	//new Timer(180),
	//new Event(function()
	//{		
	//	Wave_spawner(70, -20, [[40, 300], [100, 300]], 60);
	//}, 1),
	//new Event(function()
	//{		
	//	Wave_spawner(140, -20, [[110, 300], [170, 300]], 60);
	//}, 1),
	//new Event(function()
	//{		
	//	Wave_spawner(210, -20, [[180, 300], [240, 300]], 60);
	//}, 1),
	//new Timer(30),
	//new Event(function()
	//{		
	//	Wave_spawner(105, -20, [[75, 300], [135, 300]], 60);
	//}, 1),
	//new Event(function()
	//{		
	//	Wave_spawner(175, -20, [[145, 300], [205, 300]], 60);
	//}, 1),
	//new Timer(300),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(10, -20, [[190, 300], [10, 300]], 120);
	//}, 1),
	//new Timer(300),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Wave_spawner(190, -20, [[10, 300], [190, 300]], 120);
	//}, 1),
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_spawner(10, -20, [[30, 190], [190, -300]]);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Curve_spawner(10, -20, [[30, 190], [190, -300]]);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Curve_spawner(10, -20, [[30, 190], [190, -300]]);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Curve_spawner(10, -20, [[30, 190], [190, -300]]);
	//}, 1),
	//new Timer(20),
	//new Event(function()
	//{		
	//	Curve_spawner(10, -20, [[30, 190], [190, -300]]);
	//}, 1),
	//new Timer(20),
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(360),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(200),
	//new Event(function()
	//{		
	//	Curve_basic2_spawner(190, -20, [[190, 145], [30, -300]]);
	//}, 1),	
	//new Timer(360),
	new Event(function()
	{	
		var _x = irandom_range(10, 30);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(60),
	new Event(function()
	{		
		var _x = irandom_range(40, 60);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(60),
	new Event(function()
	{		
		var _x = irandom_range(70, 100);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(60),
	new Event(function()
	{		
		var _x = irandom_range(110, 140);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(60),
	new Event(function()
	{		
		var _x = irandom_range(150, 180);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(60),
	new Event(function()
	{		
		var _x = irandom_range(190, 220);
		var _y = irandom_range(50, 60);
		Curve_basic3_spawner(_x, -20, [
			[_x, _y], 
			[_x, _y - 20], 
			[_x, _y + 50], 
			[_x, _y + 30], 
			[_x, _y + 100], 
			[_x, _y + 80], 
			[_x, _y + 150],
			[_x, _y + 130],
			[_x, _y + 200],]);
	}, 1),	
	new Timer(360),
], true);

diamond_spawn_sequence = new Sequence([
	new Timer(irandom_range(120, 320)),
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
			_xx + irandom_range(40, 190),
			_yy + 10,
			"Projectiles",
			oDiamond
		))
		{
			direction = 270;
			speed = 0.75;
			image_speed = 0.25;
		}
	}, 1),
], true);