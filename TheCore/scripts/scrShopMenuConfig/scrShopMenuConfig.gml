var _menu = 
{
	shop : function() constructor
	{
		current_path = [0];
		current_weapon= 0;
		current_subweapon = 0;
		current_sidekick = 0;
		cursor = 0;
		menu =
		[{
		
			title : "Shop menu",
			available : true,
			cursor : 0,
			menu :
			[
				{
					title : "Market",
					available : true,
					cursor : 0,
					_Confirm : function(_object) {GoFurther(_object);},
					menu :
					[
		
					],
				},
				{
					title : "Confluctor [CLOSED]",
					available : false,
					cursor : 0,
					menu :
					[],
				},
				{
					title : "To the bar [CLOSED]",
					available : false,
					cursor : 0,
					menu :
					[],
				},
				{
					title : "Take off",
					available : true,
					cursor : 0,
					_Confirm : function(_object) 
					{
						TakeOff(oShop._shop.next_level);
					},
					menu :
					[],
				},
			]
		
		}]
		compare =
		{
			//Hull : ["current_hp", "a_resistance", "b_resistance", "c_resistance", "mass"],
			Hull : ["current_hp", "airodynamics", "mass"],
			Shield : ["max_capacity", "recharge_rate", "recharge_volume", "cost", "mass"],
			Generator : ["max_capacity", "recharge_rate", "recharge_volume", "mass"],
			Engine : ["top_speed", "acceleration", "mass"],
			Weapons : ["total_cost", "total_fire_rate", "total_speed", "total_damage", "total_mass", "total_dps"],
			Subweapons : ["current_level", "total_cost", "total_fire_rate", "total_speed", "total_damage", "total_mass", "total_dps"],
			Sidekicks : [],
			
			//Hull_reverse : [0, 0, 0, 0, 1],
			Hull_reverse : [0, 0, 1],
			Shield_reverse : [0, 1, 0, 1, 1],
			Generator_reverse : [0, 1, 0, 1],
			Engine_reverse : [0, 0, 1],
			Weapons_reverse : [0, 1, 1, 0, 0, 1, 0],
			Subweapons_reverse : [0, 1, 1, 0, 0, 1, 0],
			Sidekicks_reverse : [],
			
			//Hull_title : ["HP", "Resistance A", "Resistance B", "Resistance C", "Mass"],
			Hull_title : ["HP", "Airodynamics", "Mass"],
			Shield_title : ["Capacity", "Cooldown", "Charge", "Charge cost", "Mass"],
			Generator_title : ["Capacity", "Cooldown", "Charge", "Mass"],
			Engine_title : ["Top speed", "Acceleration", "Mass"],
			Weapons_title : ["Level", "Shot cost", "Fire rate", "Shot speed", "Damage", "Mass", "DPS"],
			Subweapons_title : ["Level", "Shot cost", "Fire rate", "Shot speed", "Damage", "Mass", "DPS"],
			Sidekicks_title : [],
		}
	}
	
}
	
return _menu