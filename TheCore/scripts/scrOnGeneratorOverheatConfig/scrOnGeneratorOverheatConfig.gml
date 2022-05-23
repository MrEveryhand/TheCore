var effects = 
{
	Emergency : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Emergency"
			hp = 1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnGeneratorOverheatChances(), 
				"Emergency", rarity)
			title = "Emergency";
			treshold = buffer._treshold;
			hp = buffer.hp;
			_recharge = buffer._recharge;
			_rarity = rarity;
			
			delete buffer;
		}
		icon = sEmergency;
		_cooldown = _recharge;
		action = function(_object, effect)
		{
			if(_cooldown <= 0)
			{
				var current_capacity = _object.player_state.ship.Generator.capacity;
				var max_capacity = _object.player_state.ship.Generator.max_capacity;
				if(current_capacity < ((100 - effect.treshold) * 0.01 * max_capacity))
				{
					_cooldown = _recharge;
					with(instance_create_layer(
						_object.x,
						_object.y,
						"OverParticles",
						oGenShellShield
					))
					{
						hp = effect.hp;
					}
				}
			} 
			else
			{
				_cooldown--;
			}
		}
	},
	
	Burden : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Burden"
			effect = 0.1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnGeneratorOverheatChances(), 
				"Burden", rarity)
			title = "Burden";
			treshold = buffer._treshold;
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sAccUp;
		action = function(_object, effect)
		{
			var current_capacity = _object.player_state.ship.Generator.capacity;
			var max_capacity = _object.player_state.ship.Generator.max_capacity;
			if(current_capacity < ((100 - effect.treshold) * 0.01 * max_capacity))
			{
				var recharged = _object.player_state.ship.Generator.recharged;
				if(!recharged)
					_object.player_state.buffs.acceleration += effect.effect;
			}
		}
	},
}
	
return effects