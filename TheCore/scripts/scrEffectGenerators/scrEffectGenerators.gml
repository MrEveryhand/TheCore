function EffectGenerator(config, name, rarity){
	var completed_effect = {}
	var current_cell, current_key;
	var config_keys = variable_struct_get_names(config[$ name]);
	for(var i = 0; i < array_length(config_keys); i++)
	{
		current_key = config_keys[i];
		current_cell = config[$ name][$ current_key];
		if(!!is_array(current_cell[rarity - 1]))
		{
			completed_effect[$ current_key] = Chances(current_cell[rarity - 1]);
		}
		else
		{
			completed_effect[$ current_key] = current_cell[rarity - 1];
		}
	}

	return completed_effect
}

function AddWeaponEffect(amount, pool, rarity)
{
	var type = 0
	var effects = 
	{
		onFire : [],
		onHit : [],
	};
	repeat(amount)
	{
		type = irandom(array_length(pool) - 1);
		switch(type)
		{
			case 0:
				if(!is_array(pool[type]))
					{array_push(effects.onFire, Retrieve_effect(scrOnFireConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onFire, Retrieve_effect(scrOnFireConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
			
			case 1:
				if(!is_array(pool[type]))
					{array_push(effects.onHit, Retrieve_effect(scrOnHitConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onHit, Retrieve_effect(scrOnHitConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
		}
	}	
	
	return effects
}

function AddShieldEffect(amount, pool, rarity)
{
	var type = 0
	var effects = 
	{
		onShieldMax : [],
		onShieldDown : [],
	};
	repeat(amount)
	{
		type = irandom(array_length(pool) - 1);
		switch(type)
		{
			case 0:
				if(!is_array(pool[type]))
					{array_push(effects.onShieldMax, Retrieve_effect(scrOnShieldMaxConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onShieldMax, Retrieve_effect(scrOnShieldMaxConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
			
			case 1:
				if(!is_array(pool[type]))
					{array_push(effects.onShieldDown, Retrieve_effect(scrOnShieldDownConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onShieldDown, Retrieve_effect(scrOnShieldDownConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
		}
	}	
	
	return effects
}

function AddGeneratorEffect(amount, pool, rarity)
{
	var type = 0
	var effects = 
	{
		onGeneratorMax : [],
		onGeneratorOverheat : [],
	};
	repeat(amount)
	{
		type = irandom(array_length(pool) - 1);
		switch(type)
		{
			case 0:
				if(!is_array(pool[type]))
					{array_push(effects.onGeneratorMax, Retrieve_effect(scrOnGeneratorMaxConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onGeneratorMax, Retrieve_effect(scrOnGeneratorMaxConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
			
			case 1:
				if(!is_array(pool[type]))
					{array_push(effects.onGeneratorOverheat, Retrieve_effect(scrOnGeneratorOverheatConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onGeneratorOverheat, Retrieve_effect(scrOnGeneratorOverheatConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
		}
	}	
	
	return effects
}

function AddEngineEffect(amount, pool, rarity)
{
	var type = 0
	var effects = 
	{
		onTopSpeed : [],
		onIdle : [],
	};
	repeat(amount)
	{
		type = irandom(array_length(pool) - 1);
		switch(type)
		{
			case 0:
				if(!is_array(pool[type]))
					{array_push(effects.onTopSpeed, Retrieve_effect(scrOnTopSpeedConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onTopSpeed, Retrieve_effect(scrOnTopSpeedConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
			
			case 1:
				if(!is_array(pool[type]))
					{array_push(effects.onIdle, Retrieve_effect(scrOnIdleConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onIdle, Retrieve_effect(scrOnIdleConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
		}
	}	
	
	return effects
}

function AddHullEffect(amount, pool, rarity)
{
	var type = 0
	var effects = 
	{
		onDamage : [],
		onMaxHP : [],
	};
	repeat(amount)
	{
		type = irandom(array_length(pool) - 1);
		switch(type)
		{
			case 0:
				if(!is_array(pool[type]))
					{array_push(effects.onDamage, Retrieve_effect(scrOnDamageConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onDamage, Retrieve_effect(scrOnDamageConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
			
			case 1:
				if(!is_array(pool[type]))
					{array_push(effects.onMaxHP, Retrieve_effect(scrOnMaxHPConfig(), pool[type], true, rarity))}
				else
					{array_push(effects.onMaxHP, Retrieve_effect(scrOnMaxHPConfig(), 
							pool[type][array_length(pool[type]) - 1], true, rarity))}
			break;
		}
	}	

	return effects
}

function AddEffect(amount, part_effects, pool, rarity)
{	
	var type;
	var _part_effects = part_effects;
	var _part_effect_keys = variable_struct_get_names(_part_effects);
	repeat(amount)
	{
		type = _part_effect_keys[irandom(array_length(_part_effect_keys) - 1)];
		if(!is_array(pool[type]))
			{array_push(_part_effects[$ type].effects, 
				Retrieve_effect(_part_effects[$ type].config, 
					pool[$ type], 
					true, 
					rarity))}
		else
			{array_push(_part_effects[$ type].effects, 
				Retrieve_effect(_part_effects[$ type].config, 
					pool[$ type][array_length(pool[$ type]) - 1], 
					true, 
					rarity))}			
	}	
	
	return _part_effects
}