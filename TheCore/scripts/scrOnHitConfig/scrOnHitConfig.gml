var effects = 
{
	Robbery : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Robbery"
			chance = [[1,5],[0,95]]
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnHitChances(), 
				"Robbery", rarity)
			title = "Robbery";
			chance = buffer.chance;
			_rarity = rarity;
			delete buffer;
		}
		icon = sRobbery;
		type = "utility";
		action = function(_object, effect)
		{
			with(instance_create_layer(
				_object.x,
				_object.y,
				"Instances",
				oCoin
			))
			{
				cost = ceil(_object.damage * 0.5);
				horizontal_acc = !irandom(1) ? irandom_range(-5,-3) : irandom_range(3,5);
				vertical_acc = irandom_range(-2,-3);
			}
		}
	},
	
	Slow : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Slow"
			chance = [[1,5],[0,95]];
			effect = 0.75;
			duration = 15;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnHitChances(), 
				"Slow", rarity)
			title = "Slow";
			chance = buffer.chance;
			effect = buffer.effect;
			duration = buffer.duration;
			_rarity = rarity;
			delete buffer;
		}
		icon = sSlow;
		type = "utility";
		action = function(_object, effect)
		{
			if(!is_array(DebuffSearch(_object.collide_object, effect._id)))
				array_push(_object.collide_object._debuffs, 
					Retrieve_debuff(scrDebuffsConfig(), 
					"Slow", effect.effect, effect.duration, effect._id));
		}
	}
}
	
return effects