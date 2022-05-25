function LevelBuilder(_spawner)
{	
	if(array_length(_spawner.spawn_sequence._s) == 0)
	{
		var cluster = _spawner.current_pool[_spawner.difficulty];
		var index = irandom(array_length(cluster) - 1);
		var wave_info = cluster[index];
		var wave_obj = new Event(
			wave_info.Unpack, 1, 0);
		array_push(_spawner.spawn_sequence._s, wave_obj);
		if(wave_info._delete_chance > 0)
			array_delete(_spawner.current_pool[_spawner.difficulty], index, 1);
		
		_spawner.current_wave_time = wave_info.wave_length;
		_spawner.time -= wave_info.wave_length;
		_spawner.wave_is_on = wave_info.wave_count;
		_spawner.enemies_created += wave_info.wave_count;
		_spawner.previuos_wave = wave_info.wave_count;
		show_debug_message("SPAWNING: " + string(wave_info._message));
		return _spawner.spawn_sequence
	}
	show_debug_message("WAVE COUNT: " + string(_spawner.wave_is_on));
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
			if(_spawner.difficulty > 0) _spawner.difficulty = 0;
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
			wave_info.Unpack, 1, 0);
		array_push(_spawner.spawn_sequence._s, wave_obj);
		if(wave_info._delete_chance > 0)
			array_delete(_spawner.current_pool[_spawner.difficulty], index, 1);
		
		_spawner.current_wave_time = wave_info.wave_length;
		_spawner.time -= wave_info.wave_length + interval;
		_spawner.wave_is_on = wave_info.wave_count;
		_spawner.enemies_created += wave_info.wave_count;
		_spawner.previuos_wave = wave_info.wave_count;
		_spawner.timer = 0;
		show_debug_message("SPAWNING: " + string(wave_info._message));
	}
	
	if(_spawner.time <= 0 && 
		_spawner.wave_is_on <= 0)
	{
		array_push(_spawner.spawn_sequence._s, new If(function()
		{
			return !instance_exists(oShip)
		}),
		new Timer(180),
		new Event(function()
		{
			scrSlideTransition(TRANS_MODE.GOTO, Shop);
		},1,0));
		_spawner.wave_is_on = 1;
	}
	
	return _spawner.spawn_sequence
}

function Spawner(wave){
	if(!is_array(wave.wave))
	{
		wave.wave.Generate(wave.wave);
	}
	else
	{
		for(var i = 0; i < array_length(wave.wave); i++)
		{
			wave.wave[i].Generate(wave.wave[i]);
		}
	}
}

function SpawnerInit(wave, _camera)
{
	var camera = GetCamera(_camera);
	var spawner = instance_create_layer(0, 0, "Tech", oSimpleSpawner);
	with(spawner)
	{
		_xx = camera._xx;
		_yy = camera._yy;
	
		counter = wave.amount;
		spawn_object = wave.enemies;
		spawn_sequence = new Sequence([], wave.cyclic);
	}
	return spawner
}

function EnemyInit(enemy, _path)
{
	if(!is_array(_path))
	{
		var px = path_get_point_x(_path, 0);
		var py = path_get_point_y(_path, 0);
	}
	else
	{
		var px = _path[0];
		var py = _path[1];	
	}
	var camera = GetCamera(oCamera);
	var _enemy = instance_create_layer(
		camera._xx + px,
		camera._yy + py,
		"Instances",
		enemy.title);
	
	with(_enemy)
	{
		mass = enemy.mass;
		top_speed = enemy.top_speed;
		_acceleration = enemy.acceleration;
		_speed = enemy._speed;
		_ease_in = enemy.ease_in;
		oob_direction = enemy.oob;
		if(!!is_array(_path))
		{
			_destination = [camera._xx + px, camera._yy + py];
			_state = "stand";
		}
		if(!!enemy.ancor)
		{
			ancor = instance_create_layer(
				0 + px,
				0 + py,
				"Tech",
				oAncor
			);
				
			with(ancor)
			{
				follower = other;	
				absolute = enemy.absolute;
				path = _path;
				path_start(path, other.top_speed, enemy.end_action, false);
			}
		}
	}
}