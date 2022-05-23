function Player_movement_and_physics(_player, object)
{
	var Engine = _player.ship.Engine;
	object.horizontal_force_direction = object.right - object.left;
	object.vertical_force_direction = object.down - object.up;
	
	var h_direction = object.horizontal_force_direction;
	var v_direction = object.vertical_force_direction;
	var _top_speed = Engine.top_speed + _player.buffs.top_speed -_player.debuffs.top_speed;
	
	var mass = Player_ship_mass_calculation(_player);
	
	//var horizontal_acceleration = (h_direction / mass) * 
	//	(Engine.acceleration + _player.buffs.acceleration - _player.debuffs.acceleration);
	//var vertical_acceleration = (v_direction / mass) * 
	//	(Engine.acceleration + _player.buffs.acceleration - _player.debuffs.acceleration);
	
	object.horizontal_acceleration = h_direction * 
		((Engine.acceleration + _player.buffs.acceleration - 
			_player.debuffs.acceleration + _player.ship.Hull.airodynamics) /
		mass);
	object.vertical_acceleration = v_direction * 
		((Engine.acceleration + _player.buffs.acceleration - 
			_player.debuffs.acceleration + _player.ship.Hull.airodynamics) /
		mass);

	object.current_horizontal_speed += horizontal_acceleration;
	object.current_vertical_speed += vertical_acceleration;
	
	if(abs(object.current_horizontal_speed) >= _top_speed) 
		object.current_horizontal_speed = 
		Engine.top_speed * sign(object.current_horizontal_speed);
	if(abs(object.current_vertical_speed) >= _top_speed) 
		object.current_vertical_speed = 
		Engine.top_speed * sign(object.current_vertical_speed);
	
	if(h_direction == 0 && abs(object.current_horizontal_speed) > 0) 
		object.current_horizontal_speed += 
		(0 - object.current_horizontal_speed) * (0.04 / mass);
	if(v_direction == 0 && abs(object.current_vertical_speed) > 0) 
		object.current_vertical_speed += 
		(0 - object.current_vertical_speed) * (0.04 / mass);
		
	object.x += object.current_horizontal_speed;
	
	if(!!instance_exists(oCamera))
	{
		var camera = GetCamera(oCamera);
		object.y += object.current_vertical_speed - camera._speed;
		var horizontal_left_offset = camera.left_border + (object.sprite_width / 2);
		var horizontal_right_offset = camera.right_border - (object.sprite_width / 2);
		var vertical_top_offset = camera.top_border + (object.sprite_height / 2);
		var vertical_down_offset = camera.bottom_border - (object.sprite_height / 2);
	}
	else
	{
		object.y += object.current_vertical_speed;
		var horizontal_left_offset = 37 + (object.sprite_width / 2);
		var horizontal_right_offset = 320 - (object.sprite_width / 2);
		var vertical_top_offset = (object.sprite_height / 2);
		var vertical_down_offset = 200 - (object.sprite_height / 2);
	}
	
	object.x = object.x >= horizontal_right_offset ? horizontal_right_offset : 
		(object.x <= horizontal_left_offset ? horizontal_left_offset : object.x);
	object.y = object.y >= vertical_down_offset ? vertical_down_offset : 
		(object.y <= vertical_top_offset ? vertical_top_offset : object.y);
		
	if(object.x >= horizontal_right_offset || object.x <= horizontal_left_offset)
		object.current_horizontal_speed = 0;
	if(object.y >= vertical_down_offset || object.y <= vertical_top_offset)
		object.current_vertical_speed = 0;
	
	var _x_vector = object.x + object.current_horizontal_speed;
	var _y_vector = object.y + object.current_vertical_speed;
	
	object._direction = point_direction(object.x, object.y, _x_vector, _y_vector);
	object.pif = power((power(object.current_horizontal_speed, 2) + 
		power(object.current_vertical_speed, 2)), 1/2)
	
	//if(object.x >= horizontal_right_offset || object.x <= horizontal_left_offset)
	//	object.current_horizontal_speed = -object.current_horizontal_speed / mass;
	//if(object.y >= vertical_down_offset || object.y <= vertical_top_offset)
	//	object.current_vertical_speed = -object.current_vertical_speed / mass;
}

function Fire_check (object, Hull, weapon, nest)
{
	if(array_length(weapon) > 0)
	{
		for(var i = 0; i < array_length(weapon); i++)
		{
			if(array_length(weapon[i].levels) > 0)
			{
				var shots = weapon[i].levels[weapon[i].current_level - 1];
				var _nest = nest[i];
				var cost = shots.cost;
				var dispersion = weapon[i].init_dispersion;
				var muzzle_flash = 	!!weapon[i].muzzle_flash ? 
					weapon[i].muzzle_flash : false;
				if(weapon[i].cooldown == 0 && !!GeneratorCapacityCheck(Hull, cost))
				{
					for(var j = 0; j < array_length(shots.projectiles); j++)
					{ 
						///WEAPON VARIABLE UNIFICATION. NOT LIKE THIS!!!
						 Fire(
						 shots, 
						 j, 
						 _nest, 
						 dispersion, 
						 muzzle_flash, 
						 object, Hull, 
						 weapon[i]);
						///======================================
					}
					Hull.Generator.capacity -= cost;
					weapon[i].cooldown = shots.fire_rate;
				}
			}
		}
	}
}

function Fire(weapon, n, nest, dispersion, muzzle_flash, object, Hull, _weapon)
{
	var shot = weapon.projectiles[n];
	if(!!variable_struct_exists(_weapon.effects, "onFire"))
		OnFire(object, _weapon.effects.onFire, nest);
	_weapon.fired = true;
	if(!!muzzle_flash)
	{
			with(instance_create_layer(
			shot.origin_x(object.x + nest._x),
			shot.origin_y(object.y + nest._y),
			"Particles",
			muzzle_flash))
		{
			owner = object;
			_nest = nest;
		}
	}

	with(instance_create_layer(
		shot.origin_x(object.x + nest._x),
		shot.origin_y(object.y + nest._y),
		"Projectiles",
		shot.projectile))
	{
			if(!!instance_exists(oCamera))
			{
				var camera = GetCamera(oCamera);
				speed = shot._speed + camera._speed;
			}
			speed = shot._speed;
			direction = !!dispersion ? shot.angle(dispersion) + 90 : 
				shot.angle(dispersion) + 90;
			image_angle = direction - 90;
			source = "Player";
			damage =+ shot.damage;
			_incorporeal = shot.incorporeal;
			if(!!variable_struct_exists(_weapon.effects, "onHit"))
				onHit = _weapon.effects.onHit;
	}

///Recoil feature. Think about it.-------------------
	//var mass = Player_ship_mass_calculation(Hull);
	//var _x_force = lengthdir_x(weapon.mass, (weapon.angle() + 270));
	//var _y_force = lengthdir_y(weapon.mass, (weapon.angle() + 270));
	
	//object.current_horizontal_speed += _x_force / (mass + 0.4);
	//object.current_vertical_speed += _y_force / (mass + 0.4);
	//show_debug_message(string(_x_force) + " / " + string(_y_force));
	//show_debug_message(mass);
//---------------------------------------------------
}

function Player_ship_mass_calculation(_player)
{
	var ship = _player.ship;
	var ship_mass = ship.mass;
	var Engine_mass = ship.Engine.mass;
	var Hull_mass = ship.Hull.mass;
	var Generator_mass = 
		variable_struct_names_count(ship.Generator) > 0 ? ship.Generator.mass : 0;
	var Shield_mass = 
		variable_struct_names_count(ship.Shield) > 0 ? ship.Shield.mass : 0;
	var Weapons_mass = 0
	
	if(array_length(ship.Weapons) > 0)
	{
		for(var i = 0; i < array_length(ship.Weapons); i++)
		{
			if(ship.Weapons[i].title != "None")
				Weapons_mass += ship.Weapons[i].total_mass(ship.Weapons[i]);	
		}
	}
	
	var Subweapons_mass = 0
	
	if(array_length(ship.Subweapons) > 0)
	{
		for(var i = 0; i < array_length(ship.Subweapons); i++)
		{
			if(ship.Subweapons[i].title != "None")
				Subweapons_mass += ship.Subweapons[i].total_mass(ship.Subweapons[i]);
		}
	}
	//show_debug_message(
	//">>>>>>>>>>>>>>" + string(ship_mass) +
	//" / " + string(Engine_mass) +
	//" / " + string(Hull_mass) +
	//" / " + string(Generator_mass) +
	//" / " + string(Shield_mass) +
	//" / " + string(Weapons_mass) +
	//" / " + string(Subweapons_mass)
	//)
	
	var _mass =
		ship_mass +
		Engine_mass +
		Hull_mass +
		Generator_mass +
		Shield_mass +
		Weapons_mass +
		Subweapons_mass

	return _mass
}

function TotalCost(_object)
{  
	if(array_length(_object.levels) > 0) 
		return _object.levels[_object.current_level - 1].cost
	else
		return 0
}
function TotalFireRate(_object) 
{ 
	if(array_length(_object.levels) > 0) 
		return _object.levels[_object.current_level - 1].fire_rate
	else
		return 0
}
function TotalMass(_object)
{ 
	if(array_length(_object.levels) > 0) 
		return _object.levels[_object.current_level - 1].mass
	else
		return 0
}
		
function TotalSpeed(_object)
{
	if(array_length(_object.levels) > 0) 
	{
		var top = 0
		for(var i = 0; i < array_length(_object.levels[_object.current_level - 1].projectiles); i++)
		{
			if(top < _object.levels[_object.current_level - 1].projectiles[i]._speed)
				top = _object.levels[_object.current_level - 1].projectiles[i]._speed
		}
		return top
	}
	else
		return 0
};
		
function TotalDamage(_object)
{
	if(array_length(_object.levels) > 0) 
	{
		var total = 0
		for(var i = 0; i < array_length(_object.levels[_object.current_level - 1].projectiles); i++)
		{
			total += _object.levels[_object.current_level - 1].projectiles[i].damage
		}
		return total
	}
	else
		return 0
};

function TotalDPS(damage, fire_rate)
{
	if(fire_rate != 0)
		return damage / (fire_rate / 60)
	else
		return 0
};

function GeneratorCapacityCheck(Hull, cost)
{
	var Generator_capacity = Hull.Generator.capacity;
	if(Generator_capacity >= cost) {return true} return false
}

function ReplacePart(_slot, _part)
{
	var _slot_names = variable_struct_get_names(_slot);
	for(var i = 0; i < array_length(_slot_names); i++)
	{
		variable_struct_set(_slot, _slot_names[i], _part[$ _slot_names[i]])
	}
}

function WeaponEffectParentFinder(_id, _object)
{
	var info = [];
	var ship = _object.player_state.ship;
	var title = "Weapons";
	var effects = [];
	for(var i = 0; i < array_length(ship.Weapons); i++)
	{
		if(variable_struct_names_count(ship.Weapons[i].effects) > 0)
		{
			effects = ship.Weapons[i].effects.onFire;
			for(var j = 0; j < array_length(effects); j++)
			{
				if(effects[j]._id = _id)
				{
					array_push(info, title);
					array_push(info, ship.Weapons[i]);
				}
			}
		}
	}
	
	var title = "Subweapons";
	var effects = [];
	for(var i = 0; i < array_length(ship.Subweapons); i++)
	{
		if(variable_struct_names_count(ship.Subweapons[i].effects) > 0)
		{
			effects = ship.Subweapons[i].effects.onFire;
			for(var j = 0; j < array_length(effects); j++)
			{
				if(effects[j]._id = _id)
				{
					array_push(info, title);
					array_push(info, ship.Subweapons[i]);
				}
			}
		}
	}
	return info
}

function Damage_control(object, _player, damage)
{
	var ship = _player.ship;
	if(object.inv_frames <= 0)
	{
		object.inv_frames = 3;
		if(ship.Shield.capacity > 0)
		{
			ship.Shield.capacity -= damage;
			with(instance_create_layer(
				object.x,
				object.y,
				"OverParticles",
				ship.Shield._object))
			{
				r = ship.Shield.r;	
				g = ship.Shield.g;
				b = ship.Shield.b;
			}
			if(ship.Shield.capacity <= 0)
			{
				var amount = irandom_range(12, 16);
				var counter = amount;
				var angle = 360 / amount;
				repeat(amount)
				{
					var sprite = irandom(10);
					with(instance_create_layer(
						object.x,
						object.y,
						"Particles",
						oShieldDown
					))
					{
						if(sprite > 9) sprite_index = sShieldDownBig;
						if(sprite > 6) sprite_index = sShieldDownSmall;
						else sprite_index = sShieldDown;
						speed = irandom_range(6 - floor(sprite / 2),7 - floor(sprite / 2));
						direction = (angle * counter) + irandom_range(-10, 10);
					}
					counter--;
				}
			}
		} 
		else
		{
			ship.Hull.current_hp -= damage
			if(!!variable_struct_exists(ship.Hull.effects, "onDamage"))
				OnDamage(object, ship.Hull.effects.onDamage);
		}
	
		ship.Shield.capacity = ship.Shield.capacity < 0 ? 0 : ship.Shield.capacity;
		ship.Hull.current_hp = ship.Hull.current_hp < 0 ? 0 : ship.Hull.current_hp;
	
		ship.Shield.recharge_cooldown = ship.Shield.recharge_rate;
		//if(ship.Shield.capacity <= 0) ship.Shield.recharged = false;
		if(ship.Hull.current_hp <= 0)
		{
			Game_over(object);
		}
	}
}

function Game_over(object)
{
	instance_create_layer(object.x, object.y, "Instances", oExplosion);
	instance_destroy(object);	
}