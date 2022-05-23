var effects = 
{
	Burst : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Burst"
			chance = [[1,5],[0,95]]
			damage_type = "acid";
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnFireChances(), 
				"Burst", rarity)
			title = "Burst";
			chance = buffer.chance;
			damage_type = buffer.damage_type;
			_rarity = rarity;
			delete buffer;
		}
		icon = sBurst;
		type = "attack";
		action = function(_object, nest)
		{
			switch(damage_type)
			{
				case "normal":
					var angle = 45;
					var count = irandom_range(10, 30);
					var _speed_multiply = 0.75;
					var _image_multiply = 0.25;
					var _exp = oVulcanExplosion;
				break;
				case "electric":
					var angle = 15;
					var count = irandom_range(5, 10);
					var _speed_multiply = 2;
					var _image_multiply = 0.15;
					var _exp = oBurstElectricExplosion;
				break;
				case "acid":
					var angle = 60;
					var count = irandom_range(10, 20);
					var _speed_multiply = 0.5;
					var _image_multiply = 0.5;
					var _exp = oBurstAcidExplosion;
				break;
			}
			repeat(count)
			{
				with(instance_create_layer(
					_object.x + nest._x,
					_object.y + nest._y,
					"Projectiles",
					oBurstParticle
				))
				{
					source = "Player";
					_type = other.damage_type;
					_explosion = _exp;
					damage = 2;
					direction = 90 - irandom_range(-angle,angle);
					speed = irandom_range(1,3) * _speed_multiply;
					image_index = irandom_range(0,1);
					image_speed = speed * _image_multiply;
				}
			}
		}
	},
	
	InstaLoad : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "InstaLoad"
			chance = [[1,5],[0,95]]
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnFireChances(), 
				"InstaLoad", rarity)
			title = "InstaLoad";
			chance = buffer.chance;
			damage_type = buffer.chance;
			_rarity = rarity;
			delete buffer;
		}
		type = "utility";
		icon = sReload;
		action = function(_object, n)
		{
			var ship = _object.player_state.ship;
			var info = WeaponEffectParentFinder(_id, _object);
			if(info[0] == "Weapons")
			{
				ship.Subweapons[irandom(array_length(ship.Subweapons) - 1)].cooldown = 0;
				if(!!instance_exists(oSubWeaponReady)) oSubWeaponReady._switch = true;
			}
			if(info[0] == "Subweapons")
			{
				ship.Weapons[irandom(array_length(ship.Weapons) - 1)].cooldown = 0;
			}
		}
	}
}
	
return effects