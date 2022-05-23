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
			var buffer = EffectGenerator(scrOnTopSpeedChances(), 
				"Arrowhead", rarity)
			title = "Arrowhead";
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sAccUp;
		action = function(_object, effect)
		{
			_object.player_state.buffs.top_speed += effect.effect;
		}
	},
	
	Dynamo : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Dynamo"
			effect = 0.1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnTopSpeedChances(), 
				"Dynamo", rarity)
			title = "Dynamo";
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sRecharge;
		action = function(_object, effect)
		{
			_object.player_state.buffs.generator_recharge_volume += effect.effect;
		}
	},
}
	
return effects