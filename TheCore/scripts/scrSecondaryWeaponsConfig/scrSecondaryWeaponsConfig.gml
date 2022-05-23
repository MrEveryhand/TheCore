var secondary_weapons = 
{
	Rockets : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Rockets";
			icon = false;
			current_level = 1;
			init_fire_rate = 60;
			init_cost = 5;
			init_mass = 0.5;
			init_speed = 1;
			init_damage = 5;
			init_dispersion = 0;
			price = 0;
			original_price = 200;
			_rarity = 1;
			effects = {
				onFire : [],
				onHit : [],
			}
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
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : floor(init_fire_rate * 0.85),
				mass : init_mass,
				projectiles : [
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 4,
				fire_rate : floor(init_fire_rate * 0.85),
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 10},
						origin_y : function(_y){ return _y + 10},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 10},
						origin_y : function(_y){ return _y + 10},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 4,
				fire_rate : floor(init_fire_rate * 0.65),
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x - 8},
						origin_y : function(_y){ return _y + 8},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oRocketShotSub,
						origin_x : function(_x){ return _x + 8},
						origin_y : function(_y){ return _y + 8},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost * 4,
				fire_rate : floor(init_fire_rate * 0.65),
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oRocketShotBig,
						origin_x : function(_x){ return _x - 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion + 35
								},
						_speed : init_speed,
						damage : init_damage * 5,
						incorporeal : false,
					},
					{
						projectile : oRocketShotBig,
						origin_x : function(_x){ return _x + 5},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return dispersion - 35
								},
						_speed : init_speed,
						damage : init_damage * 5,
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
	Enering : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Enering";
			icon = false;
			current_level = 1;
			init_fire_rate = 30;
			init_cost = 10;
			init_mass = 0.5;
			init_speed = 1;
			init_damage = 0.5;
			init_dispersion = 0;
			price = 0;
			original_price = 300;
			_rarity = 1;
			effects = {};
		}
		else
		{
			var buffer = ShipPartGenerator(scrSecondaryWeaponChances(), 
				"Enering", rarity, "SecondaryWeapon");
			title = string(buffer.title) + " Enering";
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
		family = "Enering";
		_id = 0;	
		current_level = 1;
		muzzle_flash = false;
		explosions = noone;
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
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 60
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 120
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 180
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 240
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 300
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : true,
					},
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate * 1.1,
				mass : init_mass,
				projectiles : [
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 60
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 120
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 180
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 240
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 300
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate * 1.1,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 45
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 135
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 180
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 225
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 315
								},
						_speed : init_speed * 0.9,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 45
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 135
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 180
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 225
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 315
								},
						_speed : init_speed * 0.8,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate * 0.5,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 0
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 45
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 135
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 180
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 225
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
					},
					{
						projectile : oEnergyShot,
						origin_x : function(_x){ return _x},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 315
								},
						_speed : init_speed * 0.7,
						damage : init_damage + 0.1,
						incorporeal : true,
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
	Blaster : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Blaster"
			icon = noone;
			current_level = 1;
			init_fire_rate = 15;
			init_cost = 4;
			init_mass = 0.2;
			init_speed = 4;
			init_damage = 4;
			init_dispersion = 0;
			price = 0;
			original_price = 200;
			effects = {};
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
				cost : init_cost * 2,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 90
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
								return 270
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 3},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y + 3},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y - 3},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 3},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost * 2,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 105
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 75
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 255
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 285
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost * 3,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 105
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 90
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 75
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 255
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 270
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 285
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					}
				],
			},
			{
				cost : init_cost * 3,
				fire_rate : init_fire_rate,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return 105
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 100
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 80
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x - 2},
						origin_y : function(_y){ return _y - 2},
						angle : function(dispersion){ 
								return 75
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 2},
						angle : function(dispersion){ 
								return 255
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y + 1},
						angle : function(dispersion){ 
								return 260
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y - 1},
						angle : function(dispersion){ 
								return 280
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oBlasterShot,
						origin_x : function(_x){ return _x + 2},
						origin_y : function(_y){ return _y - 2},
						angle : function(dispersion){ 
								return 285
								},
						_speed : init_speed + 1,
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
						origin_x : function(_x){ return _x + irandom_range(-3, 2) - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 20 + irandom_range(-(5 + dispersion), (4 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-3, 2) + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return -20 + irandom_range(-(5 + dispersion), (4 + dispersion))
								},
						_speed : init_speed,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate,
				mass : init_mass,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 20 + irandom_range(-(4 + dispersion), (3 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return -20 + irandom_range(-(4 + dispersion), (3 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate - 1,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 20 + irandom_range(-(4 + dispersion), (3 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return -20 + irandom_range(-(4 + dispersion), (3 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate - 1,
				mass : init_mass * 1.25,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 20 + irandom_range(-(3 + dispersion), (2 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return -20 + irandom_range(-(3 + dispersion), (2 + dispersion))
								},
						_speed : init_speed + 1,
						damage : init_damage + 1,
						incorporeal : false,
					},
				],
			},
			{
				cost : init_cost,
				fire_rate : init_fire_rate - 1,
				mass : init_mass * 1.5,
				projectiles : [
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) - 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return 20 + irandom_range(-(2 + dispersion), (1 + dispersion))
								},
						_speed : init_speed + 3,
						damage : init_damage + 1,
						incorporeal : false,
					},
					{
						projectile : oVulcanShot,
						origin_x : function(_x){ return _x + irandom_range(-2, 1) + 3},
						origin_y : function(_y){ return _y},
						angle : function(dispersion){ 
								return -20 + irandom_range(-(2 + dispersion), (1 + dispersion))
								},
						_speed : init_speed + 3,
						damage : init_damage + 1,
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
}
	
return secondary_weapons