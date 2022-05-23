var shields = 
{
	Bubble : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Bubble";
			icon = sBubble;
			max_capacity = 3;
			recharge_rate = 30;
			recharge_volume = 1;
			cost = 15;
			mass = 1;
			price = 0;
			_rarity = 1;
			effects = 
			{
				onShieldMax : [],
				onShieldDown : [],
			};
		}
		else
		{
			var buffer = ShipPartGenerator(scrShieldsChances(), "Bubble", rarity, "Shields");
			title = string(buffer.title) + " Bubble";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			cost = buffer.cost;
			mass = buffer.mass;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.onshieldmax_effect_pool);
			array_push(effects_pool, buffer.onshielddown_effect_pool);
			effects = AddShieldEffect(effects_amount, effects_pool, rarity);
			
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		
		var color = irandom(2);
		switch(color)
		{
			case 0:
			r = 255; g = 200; b = 200;
			break;
			case 1:
			r = 200; g = 255; b = 200;
			break;
			case 2:
			r = 200; g = 200; b = 255;
			break;
		}
		
		family = "Bubble";
		recharged = true;
		_id = 0;
		capacity = max_capacity;
		_object = oBubbleShield;
		recharge_cooldown = 0;
	},
	Shell : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Shell";
			icon = sBubble;
			max_capacity = 6;
			recharge_rate = 180;
			recharge_volume = 2;
			cost = 20;
			mass = 1;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrShieldsChances(), "Shell", rarity, "Shields");
			title = string(buffer.title) + " Shell";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			cost = buffer.cost;
			mass = buffer.mass;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.onshieldmax_effect_pool);
			array_push(effects_pool, buffer.onshielddown_effect_pool);
			effects = AddShieldEffect(effects_amount, effects_pool, rarity);
			
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		
		var color = irandom(2);
		switch(color)
		{
			case 0:
			r = 255; g = 200; b = 200;
			break;
			case 1:
			r = 200; g = 255; b = 200;
			break;
			case 2:
			r = 200; g = 200; b = 255;
			break;
		}
		
		family = "Shell";
		recharged = true;
		_id = 0;
		capacity = max_capacity;
		_object = oShellShield;
		recharge_cooldown = 0;
	},
	Veil : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Veil";
			icon = sBubble;
			max_capacity = 2;
			recharge_rate = 30;
			recharge_volume = 1;
			cost = 10;
			mass = 0.1;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrShieldsChances(), "Veil", rarity, "Shields");
			title = string(buffer.title) + " Veil";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			cost = buffer.cost;
			mass = buffer.mass;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.onshieldmax_effect_pool);
			array_push(effects_pool, buffer.onshielddown_effect_pool);
			effects = AddShieldEffect(effects_amount, effects_pool, rarity);
			
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		
		var color = irandom(2);
		switch(color)
		{
			case 0:
			r = 255; g = 200; b = 200;
			break;
			case 1:
			r = 200; g = 255; b = 200;
			break;
			case 2:
			r = 200; g = 200; b = 255;
			break;
		}
		
		family = "Veil";
		recharged = true;
		_id = 0;
		capacity = max_capacity;
		_object = oVeilShield;
		recharge_cooldown = 0;
	}
}
	
return shields
