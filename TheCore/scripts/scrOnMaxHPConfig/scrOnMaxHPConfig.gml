var effects = 
{
	Arrowhead : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Arrowhead"
			effect = 0.1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnMaxHPChances(), 
				"Arrowhead", rarity)
			title = "Arrowhead";
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sAccUp;
		action = function(_object, effect)
		{
			_object.player_state.buffs.acceleration += effect.effect;
		}
	},
	
	Sparks : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Sparks"
			chance = [[1,10],[0,90]];
			effect = 0.1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnMaxHPChances(), 
				"Sparks", rarity)
			title = "Sparks";
			chance = buffer.chance;
			_speed = buffer._speed;
			_rarity = rarity;
			delete buffer;
		}
		icon = sSparks;
		action = function(_object, effect)
		{
			
			if(!!Chances(effect.chance))
			{
				with(instance_create_layer(
					_object.x,
					_object.y,
					"Projectiles",
					oBurstParticle
				))
				{
					source = "Player";
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
	},
}
	
return effects