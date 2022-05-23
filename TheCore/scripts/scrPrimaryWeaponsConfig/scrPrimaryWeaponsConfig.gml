var primary_weapons = 
{
	Blaster : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Blaster"
			icon = noone;
			current_level = 1;
			init_fire_rate = 5;
			init_cost = 4;
			init_mass = 0.4;
			init_speed = 4;
			init_damage = 1;
			init_dispersion = 0;
			price = 0;
			original_price = 200;
			effects = {
				onFire : [],
				onHit : [],
			}
			_rarity = 1;
		}
		else
		{
			var buffer = ShipPartGenerator(scrPrimaryWeaponChances(), 
				"Blaster", rarity, "PrimaryWeapon")
			title = string(buffer.title) + " Blaster";
			icon = buffer.icon;
			init_fire_rate = buffer.init_fire_rate;
			init_cost = buffer.init_cost;
			init_mass = buffer.init_mass;
			init_speed = buffer.init_speed;
			init_damage = buffer.init_damage;
			init_dispersion = buffer.init_dispersion;
			price = buffer.price;
			original_price = buffer.price;
			
			effects_amount = buffer.effects_amount;
			
			//effects_pool = {onFire:[],onHit:[]};
			//array_push(effects_pool.onFire, buffer.onfire_effect_pool);
			//array_push(effects_pool.onHit, buffer.onhit_effect_pool);
			
			effects_pool = [];
			array_push(effects_pool, buffer.onfire_effect_pool);
			array_push(effects_pool, buffer.onhit_effect_pool);
			effects = AddWeaponEffect(effects_amount, effects_pool, rarity);			
			
			_rarity = rarity;
			delete buffer;
		}
		family = "Blaster";
		_id = 0;
		current_level = 1;
		muzzle_flash = oBlasterMuzzleFlash;
		explosions = oBlasterExplosion;
		cooldown = 0;
		fired = false;
		levels =
		[
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost + 2,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 4},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 15
								},
						_speed : init_speed - 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 4},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return -15
								},
						_speed : init_speed - 1,
						damage : init_damage,
						incorporeal : false,
					}
				],

			},
			{
				cost : init_cost + 3,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 4},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return 30
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 15
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return -15
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 4},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return -30
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost + 6,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 3},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 3},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return -20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return -35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost + 6,
				fire_rate : init_fire_rate,
				mass : init_mass * 2,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 8},
						origin_y : function(_y){ return _y + 5},
						angle : function(dispersion){ 
								return 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 3},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 6},
						origin_y : function(_y){ return _y + 3},
						angle : function(dispersion){ 
								return 20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 6},
						origin_y : function(_y){ return _y + 4},
						angle : function(dispersion){ 
								return -20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 3},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return -20
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return -35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 8},
						origin_y : function(_y){ return _y + 5},
						angle : function(dispersion){ 
								return -35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
		];
		
		total_cost = function(_object){ return TotalCost(_object);}
		total_fire_rate = function(_object){ return TotalFireRate(_object);}
		total_mass = function(_object){ return TotalMass(_object);}
		total_speed = function(_object){ return TotalSpeed(_object);}
		total_damage = function(_object){ return TotalDamage(_object);}
		total_dps = function(_object){ return TotalDPS(TotalDamage(_object), TotalFireRate(_object));}
	},
	
	Vulcan : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Vulcan"
			icon = sVulcan;
			current_level = 1;
			init_fire_rate = 4;
			init_cost = 1;
			init_mass = 0.1;
			init_speed = 5;
			init_damage = 1;
			init_dispersion = 0;
			price = 0;
			original_price = 200;
			effects = {};
			_rarity = 1;
		}
		else
		{
			var buffer = ShipPartGenerator(scrPrimaryWeaponChances(), 
				"Vulcan", rarity, "PrimaryWeapon")
			title = string(buffer.title) + " Vulcan";
			icon = buffer.icon;
			init_fire_rate = buffer.init_fire_rate;
			init_cost = buffer.init_cost;
			init_mass = buffer.init_mass;
			init_speed = buffer.init_speed;
			init_damage = buffer.init_damage;
			init_dispersion = buffer.init_dispersion;
			price = buffer.price;
			original_price = buffer.price;
			
			effects_amount = buffer.effects_amount;
			
			//effects_pool = {onFire:[],onHit:[]};
			//array_push(effects_pool.onFire, buffer.onfire_effect_pool);
			//array_push(effects_pool.onHit, buffer.onhit_effect_pool);
			
			effects_pool = [];
			array_push(effects_pool, buffer.onfire_effect_pool);
			array_push(effects_pool, buffer.onhit_effect_pool);
			effects = AddWeaponEffect(effects_amount, effects_pool, rarity);			
			
			_rarity = rarity;
			delete buffer;
		}
		family = "Vulcan";
		_id = 0;	
		current_level = 1;
		muzzle_flash = oVulcanMuzzleFlash;
		explosions = oVulcanExplosion;
		cooldown = 0;
		fired = false;
		levels =
		[
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-3, 2)},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (4 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-3, 2)},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(4 + dispersion), (3 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1)},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (2 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate - 1,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-1, 0)},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (2 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate - 1,
				mass : init_mass * 2,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-1, 0)},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(2 + dispersion), (1 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage + 1,
						incorporeal : false,
					}
				],
			},
		];
		
		total_cost = function(_object){ return TotalCost(_object);}
		total_fire_rate = function(_object){ return TotalFireRate(_object);}
		total_mass = function(_object){ return TotalMass(_object);}
		total_speed = function(_object){ return TotalSpeed(_object);}
		total_damage = function(_object){ return TotalDamage(_object);}
		total_dps = function(_object){ return TotalDPS(TotalDamage(_object), TotalFireRate(_object));}
	},
	
	Flak : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Flak cannon"
			icon = noone;
			current_level = 1;
			init_fire_rate = 60;
			init_cost = 10;
			init_mass = 0.4;
			init_speed = 6;
			init_damage = 20;
			init_dispersion = 10;
			price = 0;
			original_price = 350;
			effects = {};
			_rarity = 1;
		}
		else
		{
			var buffer = ShipPartGenerator(scrPrimaryWeaponChances(), 
				"Flak", rarity, "PrimaryWeapon")
			title = string(buffer.title) + " Flak cannon";
			icon = buffer.icon;
			init_fire_rate = buffer.init_fire_rate;
			init_cost = buffer.init_cost;
			init_mass = buffer.init_mass;
			init_speed = buffer.init_speed;
			init_damage = buffer.init_damage;
			init_dispersion = buffer.init_dispersion;
			price = buffer.price;
			original_price = buffer.price;
			
			effects_amount = buffer.effects_amount;
			
			//effects_pool = {onFire:[],onHit:[]};
			//array_push(effects_pool.onFire, buffer.onfire_effect_pool);
			//array_push(effects_pool.onHit, buffer.onhit_effect_pool);
			
			effects_pool = [];
			array_push(effects_pool, buffer.onfire_effect_pool);
			array_push(effects_pool, buffer.onhit_effect_pool);
			effects = AddWeaponEffect(effects_amount, effects_pool, rarity);			
			
			_rarity = rarity;
			delete buffer;
		}
		family = "Flak cannon";
		_id = 0;
		current_level = 1;
		muzzle_flash = oRocketsPuff;
		explosions = oRocketExplosion;
		cooldown = 0;
		fired = false;
		levels =
		[
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost + 2,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost + 6,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost + 8,
				fire_rate : init_fire_rate - 10,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(10 + dispersion), (10 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(5 + dispersion), (5 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost + 10,
				fire_rate : init_fire_rate - 10,
				mass : init_mass * 2,
				projectiles : [
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(6 + dispersion), (6 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(6 + dispersion), (6 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(3 + dispersion), (3 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(6 + dispersion), (6 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(6 + dispersion), (6 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oFlakShotSmall,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return irandom_range(-(8 + dispersion), (8 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
		];
		
		total_cost = function(_object){ return TotalCost(_object);}
		total_fire_rate = function(_object){ return TotalFireRate(_object);}
		total_mass = function(_object){ return TotalMass(_object);}
		total_speed = function(_object){ return TotalSpeed(_object);}
		total_damage = function(_object){ return TotalDamage(_object);}
		total_dps = function(_object){ return TotalDPS(TotalDamage(_object), TotalFireRate(_object));}
	},
	
	Rockets : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Rockets";
			icon = false;
			init_fire_rate = 60;
			init_cost = 5;
			init_mass = 0.5;
			init_speed = 0;
			init_damage = 10;
			init_dispersion = 0;
			price = 0;
			original_price = 200;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrSecondaryWeaponChances(), 
				"Rockets", rarity, "SecondaryWeapon");
			title = string(buffer.title) + " Rockets";
			icon = buffer.icon;
			init_fire_rate = buffer.init_fire_rate;
			init_cost = buffer.init_cost;
			init_mass = buffer.init_mass;
			init_speed = buffer.init_speed;
			init_damage = buffer.init_damage;
			init_dispersion = buffer.init_dispersion;
			price = buffer.price;
			original_price = buffer.price;
			_rarity = rarity;
			delete buffer;
		}
		effects = {};
		family = "Rockets";
		_id = 0;	
		current_level = 1;
		muzzle_flash = oRocketsPuff;
		explosions = oRocketExplosion;
		cooldown = 0;
		fired = false;
		levels =
		[
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion;
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 3,
				fire_rate : init_fire_rate + 5,
				mass : init_mass,
				projectiles : [
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 5
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 5
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 4,
				fire_rate : init_fire_rate + 10,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 6
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 6
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 5,
				fire_rate : init_fire_rate + 10,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 6
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotBig,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed,
						damage : init_damage * 5,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 6
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 5,
				fire_rate : init_fire_rate + 10,
				mass : init_mass * 2,
				projectiles : [
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x - 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 6
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotBig,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed + 1,
						damage : init_damage * 5,
						incorporeal : false,
					},
					{
						projectile : oRocketShotBig,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion
								},
						_speed : init_speed + 1,
						damage : init_damage * 5,
						incorporeal : false,
					},
					{
						projectile : oRocketShot,
						origin_x : function(_x){ return _x + 7},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 6
								},
						_speed : init_speed + 2,
						damage : init_damage,
						incorporeal : false,
					},
				],
			}
		];
		
		total_cost = function(_object){ return TotalCost(_object);}
		total_fire_rate = function(_object){ return TotalFireRate(_object);}
		total_mass = function(_object){ return TotalMass(_object);}
		total_speed = function(_object){ return TotalSpeed(_object);}
		total_damage = function(_object){ return TotalDamage(_object);}
		total_dps = function(_object){ return TotalDPS(TotalDamage(_object), TotalFireRate(_object));}
	}
}
	
return primary_weapons