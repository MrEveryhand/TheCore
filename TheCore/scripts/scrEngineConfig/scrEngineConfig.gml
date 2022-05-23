var engines = 
{
	CreateEngine : function(name, randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "EU-100";
			sprite = false;
			top_speed = 3;
			acceleration = 0.5;
			mass = 1;
			_rarity = 1;
			price = 0;
			effects = 
			{
				onTopSpeed : [],
				onIdle : [],
			};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "name", rarity, "Engine");
			title = string(buffer.title) + " EU-100";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "EU_100";
		_id = 0;
	},
	EU_100 : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "EU-100";
			sprite = false;
			top_speed = 3;
			acceleration = 0.5;
			mass = 1;
			_rarity = 1;
			price = 0;
			effects = 
			{
				onTopSpeed : [],
				onIdle : [],
			};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "EU_100", rarity, "Engine");
			title = string(buffer.title) + " EU-100";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "EU_100";
		_id = 0;
	},
	Loco : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Locomotive";
			sprite = false;
			top_speed = 5;
			acceleration = 0.1;
			mass = 0.5;
			_rarity = 1;
			price = 0;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "Loco", rarity, "Engine");
			title = string(buffer.title) + " Locomotive";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Locomotive";
		_id = 0;
	},
	Pierce : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Pierce";
			sprite = false;
			top_speed = 2;
			acceleration = 0.4;
			mass = 1;
			_rarity = 1;
			price = 0;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "Pierce", rarity, "Engine");
			title = string(buffer.title) + " Pierce";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Pierce";
		_id = 0;
	},
	Witchbroom : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Witchbroom";
			sprite = false;
			top_speed = 3;
			acceleration = 0.1;
			mass = 1;
			_rarity = 1;
			price = 0;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "Witchbroom", rarity, "Engine");
			title = string(buffer.title) + " Witchbroom";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Witchbroom";
		_id = 0;
	},
	EU_200 : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "EU-100";
			sprite = false;
			top_speed = 5;
			acceleration = 0.3;
			mass = 1.5;
			_rarity = 1;
			price = 0;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrEngineChances(), "EU_200", rarity, "Engine");
			title = string(buffer.title) + " EU-200";
			sprite = buffer.sprite;
			top_speed = buffer.top_speed;
			acceleration = buffer.acceleration;
						
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ongeneratormax_effect_pool);
			array_push(effects_pool, buffer.ongeneratoroverheat_effect_pool);
			effects = AddEngineEffect(effects_amount, effects_pool, rarity);
			
			mass = buffer.mass;
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "EU_200";
		_id = 0;
	},
}
	
return engines
