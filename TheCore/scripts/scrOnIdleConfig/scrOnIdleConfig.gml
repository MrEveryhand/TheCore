var effects = 
{
	Magnet : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Magnet"
			_speed = 0.5;
			_radius = 10;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnShieldMaxChances(), 
				"Magnet", rarity)
			title = "Magnet";
			_speed = buffer._speed;
			_radius = buffer._radius;
			_rarity = rarity;
			delete buffer;
		}
		icon = sMagnet;
		action = function(_object, effect)
		{
			with(collision_circle(
				_object.x, 
				_object.y,
				effect._radius,
				oPickups,
				false,
				true))
			{
				x += Ease_in(x, _object.x, 0.01 * effect._speed);
				y += Ease_in(y, _object.y, 0.01 * effect._speed);
			}
		}
	},
	
	Patience : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Patience"
			effect = 0.1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnIdleChances(), 
				"Patience", rarity)
			title = "Patience";
			effect = buffer.effect;
			_rarity = rarity;
			delete buffer;
		}
		icon = sShieldRecharge;
		action = function(_object, effect)
		{
			_object.player_state.buffs.shield_recharge_rate += effect.effect;
		}
	},
}
	
return effects