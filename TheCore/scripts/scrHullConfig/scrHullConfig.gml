var hulls = 
{
	Carapace : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Carapace";
			sprite = sStarWalkerCarapace1;
			mass = 2;
			max_hp = 5;
			//a_resistance = 0;
			//b_resistance = 0;
			//c_resistance = 0;
			airodynamics = 0;
			price = 0;
			_rarity = 1;
			effects = 
			{
				onDamage : [],
				onMaxHP : [],
			};
		}
		else
		{
			var buffer = ShipPartGenerator(scrHullChances(), "Carapace", rarity, "Hull");
			title = string(buffer.title) + " Carapace";
			sprite = buffer.sprite;
			mass = buffer.mass;
			max_hp = buffer.max_hp;
			//a_resistance = buffer.a_resistance;
			//b_resistance = buffer.b_resistance;
			//c_resistance = buffer.c_resistance;
			airodynamics = buffer.airodynamics;	
				
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ondamage_effect_pool);
			array_push(effects_pool, buffer.onmaxhp_effect_pool);
			effects = AddHullEffect(effects_amount, effects_pool, rarity);
				
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Carapace";
		_id = 0;
		current_hp = max_hp;
	},
	Brick : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Brick";
			sprite = sStarwalkerBrick1;
			mass = 2;
			max_hp = 7;
			//a_resistance = 0;
			//b_resistance = 0;
			//c_resistance = 0;
			airodynamics = -0.05;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrHullChances(), "Brick", rarity, "Hull");
			title = string(buffer.title) + " Brick";
			sprite = buffer.sprite;
			mass = buffer.mass;
			max_hp = buffer.max_hp;
			//a_resistance = buffer.a_resistance;
			//b_resistance = buffer.b_resistance;
			//c_resistance = buffer.c_resistance;
			airodynamics = buffer.airodynamics;	
				
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ondamage_effect_pool);
			array_push(effects_pool, buffer.onmaxhp_effect_pool);
			effects = AddHullEffect(effects_amount, effects_pool, rarity);
				
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Brick";
		_id = 0;
		current_hp = max_hp;
	},
	Needle : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Needle";
			sprite = sStarWalkerNeedle1;
			mass = 0.5;
			max_hp = 3;
			//a_resistance = 0;
			//b_resistance = 0;
			//c_resistance = 0;
			airodynamics = 0.1;
			price = 0;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrHullChances(), "Needle", rarity, "Hull");
			title = string(buffer.title) + " Needle";
			sprite = buffer.sprite;
			mass = buffer.mass;
			max_hp = buffer.max_hp;
			//a_resistance = buffer.a_resistance;
			//b_resistance = buffer.b_resistance;
			//c_resistance = buffer.c_resistance;
			airodynamics = buffer.airodynamics;	
				
			effects_amount = buffer.effects_amount;
			effects_pool = [];
			array_push(effects_pool, buffer.ondamage_effect_pool);
			array_push(effects_pool, buffer.onmaxhp_effect_pool);
			effects = AddHullEffect(effects_amount, effects_pool, rarity);
				
			price = buffer.price;	
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		family = "Needle";
		_id = 0;
		current_hp = max_hp;
	}
}
	
return hulls
