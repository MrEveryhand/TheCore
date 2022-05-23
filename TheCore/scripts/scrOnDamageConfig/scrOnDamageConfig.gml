var effects = 
{
	Beehive : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Beehive"
			chance = [[1,5],[0,95]]
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnDamageChances(), 
				"Beehive", rarity)
			title = "Beehive";
			_top_speed = buffer._top_speed;
			amount = buffer.amount;
			_acceleration = buffer._acceleration;
			_damage = buffer._damage;
			_rarity = rarity;
			delete buffer;
		}
		icon = sBeehive;
		type = "attack";
		action = function(_object, effect)
		{
			var counter = effect.amount;
			var angle = 360 / counter;
			repeat(effect.amount)
			{
				var enemy = [];
				if(!!instance_exists(oShip))
				{
					for (var i = 0; i < instance_number(oShip); ++i;)
					{
						enemy[i] = instance_find(oShip,i);
					}
				}
				var __angle = angle * counter;
				with(instance_create_layer(
					_object.x,
					_object.y,
					"Projectiles",
					oRocketBeehiveShot
				))
				{
					if(array_length(enemy) > 0)
						target = enemy[irandom(array_length(enemy) - 1)];
					else
						target = noone;
					source = "Player";
					damage = effect._damage;
					top_speed = effect._top_speed;
					acceleration = effect._acceleration;
					_angle = __angle;
					_destination = 
						[_object.x + lengthdir_x(1000, _angle),
						_object.y + lengthdir_y(1000, _angle)]
				}
				counter--;
			}
		}
	},
	
	Compensation : function(randomize, rarity) constructor
	{
		if(!randomize)
		{
			title = "Compensation"
			_value = 1;
			_rarity = 1;
		}
		else
		{
			var buffer = EffectGenerator(scrOnDamageChances(), 
				"Compensation", rarity)
			title = "Compensation";
			_value = buffer._value;
			_rarity = rarity;
			delete buffer;
		}
		type = "utility";
		icon = sCompensation;
		cooldown = 0;
		action = function(_object, effect)
		{
			_object.player_state.ship.Shield.capacity += effect._value;
		}
	}
}
	
return effects