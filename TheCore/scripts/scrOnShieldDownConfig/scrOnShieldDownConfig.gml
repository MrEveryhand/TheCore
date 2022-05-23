var effects = 
{
	Sparks : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Sparks"
			amount = 20;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnShieldDownChances(), 
				"Sparks", rarity)
			title = "Sparks";
			amount = buffer.amount;
			_speed = buffer._speed;
			_rarity = rarity;
			delete buffer;
		}
		icon = sSparks;
		action = function(_object, effect)
		{
			var recharged = _object.player_state.ship.Shield.recharged;
			if(!!recharged)
			{
				repeat(effect.amount)
				{
					with(instance_create_layer(
						_object.x,
						_object.y,
						"Projectiles",
						oBurstParticle
					))
					{
						_type = "electric";
						_explosion = oBurstElectricExplosion;
						damage = 2;
						direction = irandom(359);
						speed = irandom_range(1, effect._speed);
						image_index = irandom_range(0,1);
						image_speed = speed * 0.25;
					}
				}
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
			var buffer = EffectGenerator(scrOnShieldDownChances(), 
				"Burden", rarity)
			title = "Burden";
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sAccUp;
		action = function(_object, effect)
		{
			var recharged = _object.player_state.ship.Shield.recharged;
			if(!recharged)
				_object.player_state.buffs.acceleration += effect.effect;
		}
	},
}
	
return effects