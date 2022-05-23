function LevelBuilder(_spawner)
{	
	if(array_length(_spawner.spawn_sequence._s) == 0)
	{
		var cluster = _spawner.current_pool[_spawner.difficulty];
		var index = irandom(array_length(cluster) - 1);
		var wave_info = cluster[index];
		var wave_obj = new Event(
			wave_info.wave,
			wave_info.quantity,
			wave_info.interval);
		array_push(_spawner.spawn_sequence._s, wave_obj);
		array_delete(_spawner.current_pool[_spawner.difficulty], index, 1);
		
		_spawner.current_wave_time = wave_info.path_length;
		_spawner.time -= wave_info.path_length;
		_spawner.wave_is_on = wave_info.number_of_enemies;
		_spawner.enemies_created += wave_info.number_of_enemies;
		_spawner.previuos_wave = wave_info.number_of_enemies;
		return _spawner.spawn_sequence
	}
	
	if(_spawner.time > 0 && 
		_spawner.wave_is_on <= 0)
	{
		_spawner.wave_counter++;
		if(_spawner.wave_counter > 5) _spawner.difficulty += 1;
		if(_spawner.previuos_wave > 0)
		{
			if(_spawner.enemies_created == _spawner.enemies_passed && 
				_spawner.enemies_destroyed == 0) _spawner.suspicions += 0.1;
			if(_spawner.enemies_destroyed >= floor(_spawner.enemies_created * 0.9)) 
				_spawner.menace += 0.1;
			
			if(_spawner.suspicions >= 0.3)  {_spawner.intervals -= 0.15; _spawner.suspicions = 0}
			if(_spawner.menace >= 0.3) {_spawner.difficulty += 1; _spawner.menace = 0}
			if(_spawner.difficulty > 1) _spawner.difficulty = 1;
		}
			
		//var interval = irandom_range(1 - difficulty, 3 - difficulty) * _spawner.intervals;
		//array_push(_spawner.spawn_sequence._s, 
		//	new Timer(interval));
		//_spawner.time -= interval;
		var interval = 0;
		var cluster = _spawner.current_pool[_spawner.difficulty];
		var index = irandom(array_length(cluster) - 1);
		var wave_info = cluster[index];
		var wave_obj = new Event(
			wave_info.wave,
			wave_info.quantity,
			wave_info.interval);
		array_push(_spawner.spawn_sequence._s, wave_obj);
		array_delete(_spawner.current_pool[_spawner.difficulty], index, 1);
		
		_spawner.current_wave_time = wave_info.path_length;
		_spawner.time -= wave_info.path_length + interval;
		_spawner.wave_is_on = wave_info.number_of_enemies;
		_spawner.previuos_wave = wave_info.number_of_enemies;
		_spawner.enemies_created += wave_info.number_of_enemies;
		show_debug_message(_spawner.timer);
		_spawner.timer = 0;
	}
	
	if(_spawner.time <= 0 && 
		_spawner.wave_is_on <= 0)
	{
		show_debug_message(_spawner.timer);
		array_push(_spawner.spawn_sequence._s, new If(function()
		{
			show_debug_message(instance_exists(oShip));
			return !instance_exists(oShip)
		}),
		new Timer(60),
		new Event(function()
		{
			scrSlideTransition(TRANS_MODE.GOTO, Shop);
		},1,0));
		_spawner.wave_is_on = 1;
	}
	
	return _spawner.spawn_sequence
}

//function LevelBuilder(_config, _time, _difficulty)
//{
//	var sequence = new Sequence([], false);
//	var time = _time;
//	var config = Config_loader(_config);
//	var difficulty = _difficulty;
//	var interval, index;
//	var current_pool = [];
//	array_copy(
//		current_pool,
//		0,
//		config.difficulty,
//		0,
//		array_length(config.difficulty)
//	)
	
//	switch(difficulty)
//	{
//		case 0:
//		interval = (1 + irandom(2)) * 30;
//		break;
			
//		case 1:
//		interval = (1 + irandom(2)) * 25;
//		break;

//		case 2:
//		interval = (1 + irandom(2)) * 20;
//		break;
			
//		case 3:
//		interval = (1 + irandom(2)) * 15;
//		break;
//	}
	
//	array_push(sequence._s, new Timer(interval));
//	time -= interval;
	
//	while(time > 0)
//	{
//		if(time <= _time * 0.25) difficulty = 1;
//		var cluster = current_pool[difficulty];
//		var index = irandom(array_length(cluster) - 1);
//		var wave_info = cluster[index];
//		var wave_obj = new Event(
//			wave_info.wave,
//			wave_info.quantity,
//			wave_info.interval);
//		array_push(sequence._s, wave_obj);
//		array_delete(current_pool[difficulty], index, 1);
//		time -= wave_info.quantity * wave_info.interval;
		
//		switch(difficulty)
//		{
//			case 0:
//			interval = wave_info.path_length() + (irandom_range(2, 4) * 15);
//			break;
			
//			case 1:
//			interval = wave_info.path_length() + (irandom_range(0, 2) * 15);
//			break;

//			case 2:
//			interval = wave_info.path_length() + (irandom_range(-2, 0) * 15);
//			break;
			
//			case 3:
//			interval = wave_info.path_length() + (irandom_range(-4, -2) * 15);
//			break;
//		}
		
//		array_push(sequence._s, new Timer(interval));
//		time -= interval;
//	}
	
//	array_push(sequence._s, new If(function()
//	{
//		show_debug_message(instance_exists(oShip));
//		return !instance_exists(oShip)
//	}),
//	new Timer(60),
//	new Event(function()
//	{
//		scrSlideTransition(TRANS_MODE.GOTO, Shop);
//	},1,0));
//	return sequence
//}

function Spawner(_object, _pattern, _mass, _top_speed, _acc, _spd, _ei, _absolute, _end_action, oob){
	var camera = GetCamera(oCamera);
	var _xx = camera._xx;
	var _yy = camera._yy;
	var px = path_get_point_x(_pattern, 0);
	var py = path_get_point_y(_pattern, 0);
	with(instance_create_layer(
		_xx + px,
		_yy + py,
		"Instances",
		_object))
	{
		_direction = 0
		mass = _mass;
		top_speed = _top_speed;
		_acceleration = _acc;
		_speed = _spd;
		_ease_in = _ei;
		_path = _pattern;
		oob_direction = is_undefined(oob) ? "bottom" : oob ;
		
		ancor = instance_create_layer(
			0 + px,
			0 + py,
			"Tech",
			oAncor
		);
		
		with(ancor)
		{
			follower = other;
			_path = _pattern;	
			absolute = _absolute;
			path_start(_path, other.top_speed, _end_action, false);
		}
	}
}