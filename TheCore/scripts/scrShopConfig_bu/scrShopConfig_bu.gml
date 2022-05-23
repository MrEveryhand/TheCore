var shop = 
{
	Create_Shop : function(level, config, player_state) constructor
	{
		var current_level = level;
		var _config = config;
		var _player_state = player_state;
		var ship = _player_state.ship;
		var ship_parts_list = variable_struct_get_names(ship);
		var ship_parts_counts = variable_struct_names_count(ship);
		var new_menu = [];
		
		for(var i = 0; i < ship_parts_counts; i++)
		{
			if(array_length(ship[$ ship_part_list[i]]) > 0 ||
				variable_struct_names_count(ship[$ ship_part_list[i]]) > 0)
				array_push(new_menu, _config.Generate_option(ship_part_list[i], function(){}));
		}
		
	},
	Generate_Hull : function(name, rarity)
	{
		return Retrieve_ship_part(scrHullConfig(), name, true, rarity);
	},
	Generate_Engine : function(name, rarity)
	{
		return Retrieve_ship_part(scrEngineConfig(), name, true, rarity);
	},
	Generate_Weapons : function(name, rarity)
	{
		return Retrieve_ship_part(scrPrimaryWeaponsConfig(), name, true, rarity);
	},
	Generate_Subweapons : function(name, rarity)
	{
		return Retrieve_ship_part(scrSecondaryWeaponsConfig(), name, true, rarity);
	},
	Generate_Sidekicks : function(name, rarity)
	{
		return Retrieve_ship_part(scrGeneratorConfig(), name, true, rarity);
	},
	Generate_Generator : function(name, rarity)
	{
		return Retrieve_ship_part(scrGeneratorConfig(), name, true, rarity);
	},
	Generate_Shield : function(name, rarity)
	{
		return Retrieve_ship_part(scrShieldConfig(), name, true, rarity);
	},
	Generate_option : function(_title, _func) constructor
	{
		Title = _title;
		_action = _func;
		Action = function()
		{
			_action();
		};
		_cursor = 0;
	},
	Level_1 :
	{
		rarity : 
		function()
		{
			return Chances([[1,7],[2,3]])
		},
		Hull_list : [],
		number_of_Hull : function()
		{
			return irandom_range(1, 2);
		},
		Engine_list : [],
		number_of_Engine : function()
		{
			return irandom_range(1, 2);
		},
		Ship_list : [],
		number_of_Weapons : function()
		{
			return irandom_range(3, 4);
		},
		Weapons_list : [],
		number_of_Subweapons : function()
		{
			return irandom_range(2, 3);
		},
		Subweapons_list : [],
		number_of_Sidekicks : function()
		{
			return irandom_range(1, 2);
		},
		Sidekicks_list : [],
		number_of_Generator : function()
		{
			return irandom_range(1, 3);
		},
		Generator_list : [],
		number_of_Shield : function()
		{
			return irandom_range(1, 3);
		},
		Shield_list : [],
	}
}
	
return shop