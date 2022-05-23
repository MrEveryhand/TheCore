function Reload_check(ship)
{
	var primary_weapon = ship.Weapons;
	var secondary_weapon = ship.Subweapons;
	
	if(array_length(primary_weapon) > 0)
	{
		for(var i = 0; i < array_length(primary_weapon); i++)
		{
			Reload(primary_weapon[i])
		}
	}
	
	if(array_length(secondary_weapon) > 0)
	{
		for(var i = 0; i < array_length(secondary_weapon); i++)
		{
			Reload(secondary_weapon[i])
		}
	}
}

function Reload(weapon)
{
	weapon.cooldown = weapon.cooldown > 0 ? weapon.cooldown - 1 : 0;
}

function GeneratorRecharge(Generator, _object)
{
	if(Generator.capacity <= Generator.max_capacity)
	{
		if(Generator.recharge_cooldown <= 0 && 
			Generator.capacity < Generator.max_capacity)
		{
			Generator.capacity += (Generator.recharge_volume
				+ _object.player_state.buffs.generator_recharge_volume
				- _object.player_state.debuffs.generator_recharge_volume);
				
			Generator.recharge_cooldown = Generator.recharge_rate;				
		} 
		else
		{
			Generator.recharge_cooldown--;

		}
	}
	
	if(Generator.capacity > Generator.max_capacity) Generator.capacity = Generator.max_capacity;
	
}

function ShieldRecharge(ship, object)
{
	var Generator = ship.Generator;
	var Shield = ship.Shield;
	
	if(Shield.capacity <= Shield.max_capacity)
	{
		if(Shield.recharge_cooldown <= 0 && 
			Shield.capacity < Shield.max_capacity)
		{
			if(!!GeneratorCapacityCheck(ship, Shield.cost))
			{
				Generator.capacity -= Shield.cost;
				Shield.capacity += Shield.recharge_volume

				Shield.recharge_cooldown = 
					(Shield.recharge_rate - 
						object.player_state.buffs.shield_recharge_rate + 
						object.player_state.debuffs.shield_recharge_rate);
			}
		} 
		else
		{
			Shield.recharge_cooldown--;
		}
	}
	
	if(Shield.capacity > Shield.max_capacity) Shield.capacity = Shield.max_capacity;
}

function DeBuffsRefresh(object)
{
	var buffs_name = variable_struct_get_names(object.player_state.buffs);
	var debuffs_name = variable_struct_get_names(object.player_state.debuffs);
	for(var i = 0; i < array_length(buffs_name); i++)
	{
		object.player_state.buffs[$ buffs_name[i]] = 0;
	}
	for(var i = 0; i < array_length(debuffs_name); i++)
	{
		object.player_state.debuffs[$ debuffs_name[i]] = 0;
	}
}

function Refresh(_player, object)
{
	var ship = _player.ship;
	if(object.inv_frames > 0) inv_frames--;
	GeneratorRecharge(ship.Generator, object);
	Reload_check(ship);
}