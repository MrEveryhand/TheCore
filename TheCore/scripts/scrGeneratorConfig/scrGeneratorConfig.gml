var generators = 
{
	GU_100 : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "GU-100";
			icon = false;
			max_capacity = 20;
			recharge_rate = 1;
			recharge_volume = 2;
			mass = 1;
			price = 0;
			_rarity = 1;
			effects = 
			{
				onGeneratorMax : [],
				onGeneratorOverheat : [],
			};
		}
		else
		{
			var buffer = ShipPartGenerator(scrGeneratorsChances(), "GU_100", rarity, "Generators");
			title = string(buffer.title) + " GU-100";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddGeneratorEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "GU_100";
		capacity = max_capacity;
		recharge_cooldown = 0;
		recharged = true;
		_id = 0;
	},
	Endurance : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Endurance";
			icon = false;
			max_capacity = 40;
			recharge_rate = 1;
			recharge_volume = 1;
			mass = 1.5;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrGeneratorsChances(), "Endurance", rarity, "Generators");
			title = string(buffer.title) + " Endurance";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddGeneratorEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Endurance";
		capacity = max_capacity;
		recharge_cooldown = 0;
		recharged = true;
		_id = 0;
	},
	Jumper : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Jumper";
			icon = false;
			max_capacity = 15;
			recharge_rate = 30;
			recharge_volume = 5;
			mass = 0.5;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrGeneratorsChances(), "Jumper", rarity, "Generators");
			title = string(buffer.title) + " Jumper";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddGeneratorEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Jumper";
		capacity = max_capacity;
		recharge_cooldown = 0;
		recharged = true;
		_id = 0;
	},
	Thingamajig : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Thingamajig";
			icon = false;
			max_capacity = 20;
			recharge_rate = 1;
			recharge_volume = 1;
			mass = 1;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrGeneratorsChances(), "Thingamajig", rarity, "Generators");
			title = string(buffer.title) + " Thingamajig";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddGeneratorEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Thingamajig";
		capacity = max_capacity;
		recharge_cooldown = 0;
		recharged = true;
		_id = 0;
	},
	GU_200 : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "GU-200";
			icon = false;
			max_capacity = 30;
			recharge_rate = 3;
			recharge_volume = 3;
			mass = 1;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrGeneratorsChances(), "GU_200", rarity, "Generators");
			title = string(buffer.title) + " GU-200";
			icon = buffer.icon;
			max_capacity = buffer.max_capacity;
			recharge_rate = buffer.recharge_rate;
			recharge_volume = buffer.recharge_volume;
			
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddGeneratorEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "GU_200";
		capacity = max_capacity;
		recharge_cooldown = 0;
		recharged = true;
		_id = 0;
	},
}
	
return generators