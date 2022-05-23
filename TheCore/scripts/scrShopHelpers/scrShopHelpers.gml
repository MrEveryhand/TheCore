function EnergyControl(generator){
	return generator.max_capacity * 0.8 >= generator.capacity
}

function CreatePosition(_part, _is_owned) constructor
{
	part = _part;
	is_owned = _is_owned;
}

function CreatePartsLists(config, ship)
{
	var _list = {};
	var parts_names = variable_struct_get_names(config);
	var retrievers = Retrievers_list();
	var buffer = {};
	var check = true;
	for(var i = 0; i < array_length(parts_names); i++)
	{
		if(variable_struct_exists(ship, parts_names[i])) {_list[$ parts_names[i]] = [];}
	}
	
	parts_names = variable_struct_get_names(_list);
	
	for(var i = 0; i < array_length(parts_names); i++)
	{
		if(!is_array(ship[$ parts_names[i]]))
		{
			buffer = Config_loader(ship[$ parts_names[i]]);
			array_push(_list[$ parts_names[i]], new CreatePosition(
				buffer, true));
		}
		else
		{
			var slot_count = array_length(ship[$ parts_names[i]]);
			for(var j = 0; j < slot_count; j++)
			{
				buffer = Config_loader(ship[$ parts_names[i]][j]);
				array_push(_list[$ parts_names[i]], new CreatePosition(buffer, true));
			}
		}
		
		repeat(config[$ parts_names[i]].amount)
		{
			if(!!array_length(config[$ parts_names[i]].names)) 
			{
				check = true;
				var picked_name = TakeName(config[$ parts_names[i]].names);
				var generated_part = { part : {price : config.max_price + 1}};
				
				while(!!check)
				{			
					generated_part = new CreatePosition(retrievers[$ "Generate_" + 
						string(parts_names[i])](
							picked_name[0],
							Chances(config.rarity)
						), false);

					check = DoppleCheck(parts_names[i], 
						global.player_state.ship[$ parts_names[i]], generated_part.part, config);
						
					for(var j = 0; j < array_length(_list[$ parts_names[i]]); j++)
					{
						var current_part = _list[$ parts_names[i]][j];
						check = DoppleCheck(parts_names[i], 
							current_part.part, generated_part.part, config);
					}						
				}
					
				array_push(_list[$ parts_names[i]], generated_part);
				
				config[$ parts_names[i]].names = 
					PokeName(config[$ parts_names[i]].names, picked_name[1]);
				delete generated_part;
			}
		}

		if((parts_names[i] != "Hull" && parts_names[i] != "Engine" 
			&& parts_names[i] != "Sidekicks")
			&& _list[$ parts_names[i]][0].part.title != "None")
		{
			array_push(_list[$ parts_names[i]], 
				new CreatePosition({
					title: "None", 
					price: 0, 
					capacity: 0,
					max_capacity: 0,
					recharge_rate: 0,
					recharge_volume: 0,
					recharge_cooldown: 0,
					cost: 0,
					mass: 0,
					_rarity: 0,
					current_level: 0,
					init_fire_rate: 0,
					init_cost: 0,
					init_mass: 0,
					init_speed: 0,
					init_damage: 0,
					init_dispersion: 0,	
					total_cost: function(){ return 0 },
					total_fire_rate: function(){ return 0 },
					total_mass: function(){ return 0 },
					total_speed: function(){ return 0 },
					total_damage: function(){ return 0 },	
					total_dps: function(){ return 0 },
					levels: [],
					effects: {}
				}, false));
		}
	}
	return _list
}

function Retrievers_list()
{
	var retrievers =
	{
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
		}
	}
	
	return retrievers
}

function CheckPrices(_object)
{
	var _menu = _object.current_menu;
	var _cursor = _menu.cursor;
	var _title = _menu.title;
	var _list = _object.part_lists[$ _title];
	var current_price = 0;
	if(variable_struct_exists( _object.player_state.ship, _title))
	{
		var _current_part = _object.player_state.ship[$ _title];
		var current_weapon = 0;
		
		if(!is_array(_current_part))
			current_price = _current_part.price;
		else
			current_price = _current_part[current_weapon].price;
	}
	
	var _money = _object.player_state.money;
	for(var i = 0; i < array_length(_list); i++)
	{
		if(_list[i].part.price - current_price > _money)
		{
			_menu.menu[i].available = false;
			if(_cursor == i) _cursor++
			if(_cursor > array_length(_list) - 1) _cursor = 0;
		}
		else
		{
			_menu.menu[i].available = true;
		}
		if(!!_list[i].is_owned) _menu.menu[i].available = true;
	}
}

function TakeName(_name_list)
{
	var name = [];
	var pick = irandom(array_length(_name_list) - 1);
	array_push(name, _name_list[pick]);
	array_push(name, pick);
	
	return name
}

function PokeName(_name_list, i)
{
	if(!!Chances([[0,2],[1,8]])) {array_delete(_name_list, i, 1)}
	return _name_list
}

function LevelShiftPrice(price, level)
{
	return int64(price * (0.2 * power(level, 2)) / 10)  * 10
};

function CreateSubMenus(_parts, _menu, _object)
{
	var order = ["Hull", "Generator", "Shield", "Weapons", "Subweapons", "Sidekicks", "Engine"];
	//var parts_names = variable_struct_get_names(_parts);
	for(var i = 0; i < array_length(order); i++)
	{
		if(!!variable_struct_exists(_parts, order[i]))
		{
			array_push(_menu.menu[0].menu[0].menu, new CreatePartMenu(order[i], _object));
			for(var j = 0; j < array_length(_parts[$ order[i]]); j++)
			{
				array_push(_menu.menu[0].menu[0].menu[i].menu, 
					new CreateGoodie(_parts[$ order[i]][j].part.title, _object, order[i]));
			}
		}
	}
}

function CreatePartMenu(_title, _object) constructor
{
	title = _title;
	cursor = 0;
	available = true;
	if(_title == "Sidekicks")
	{
		available = false;
	}
	_Confirm = function(_object) {GoFurther(_object)};
	_Abort = function(_object) {GoBack(_object)};
	menu = [];
}

function CreateGoodie(_title, _object, _section) constructor
{
	title = _title;
	cursor = 0;
	available = true;
	_Confirm = function(_object) {BuyGoodie(_object)};
	_Abort = function(_object) {GoBack(_object)};
	if(_section == "Weapons" || _section == "Subweapons")
	{
		_Cursor_left = function(_object) {LevelDown(_object);}
		_Cursor_right = function(_object) {LevelUp(_object);}
	}
	menu = [];
}

function DoppleCheck(title, part, _part, shop_config)
{
	var check = true;
	if(title != "Sidekicks")
	{
		var config = Retrieve_config(scrShopMenuConfig(), "shop");
		var section = config.compare[$ title];	
		for(var i = 0; i < array_length(section); i++)
		{
			if(section[i] != "current_level")
			{
				//show_debug_message(string(section[i]));
				if(!is_array(part))
				{
					if(!is_method(part[$ section[i]]))
					{
						value = part[$ section[i]];
						comp_value = _part[$ section[i]];
					}
					else
					{
						value = part[$ section[i]](part);
						comp_value = _part[$ section[i]](_part);
					}
				}
				else
				{
					if(!is_method(part[0][$ section[i]]))
					{
						value = part[0][$ section[i]];
						comp_value = _part[$ section[i]];
					}
					else
					{
						value = 
							part[0][$ section[i]]
							(part[0]);
						comp_value = _part[$ section[i]](_part);
					}
				}
				if(value != comp_value)	check = false	
			}

		}
		
		if(!is_array(part))
		{
			value = part.effects;
			comp_value = _part.effects;
		}
		else
		{
			value = part[0].effects;
			comp_value = _part.effects;
		}
		
		var effect_titles = variable_struct_get_names(value);
		for(var i = 0; i < array_length(effect_titles); i++)
		{
			if(array_length(value[$ effect_titles[i]]) != 
				array_length(comp_value[$ effect_titles[i]]))	 
				check = false;
		}
		
		if(_part.price <= shop_config.max_price) 
		{			
			check = false;
		}
	} else check = false;
	
	return check
}