function sInventoryRender(_x, _y, _content, _length, _line_length){
	_counter_x = 0;
	_counter_y = 0;
	
	__length = !!is_array(_content) ? array_length(_content) : _length;
	
	for(var i = 0; i < __length; i++)
	{
		_sprite = !!is_array(_content) ? _content[i].icon : _content;
		_sprite_width = sprite_get_width(_sprite);
		draw_sprite(
			_sprite,
			0,
			_x + ((_sprite_width / 2) + (_counter_x * _sprite_width)),
			_y + ((_sprite_width / 2) + (_counter_y * _sprite_width))
			)
		_counter_x++;
		if(_counter_x > _line_length - 1)
		{
			_counter_x = 0;
			_counter_y++;
		}
	}
}

function TitleRender(menu, _x, _y){
	draw_set_font(fMenu);
	draw_set_color(c_white);
	var title = menu.title;
	draw_text(_x,_y, title);
}

function MenuRender(_object, _x, _y){
	draw_set_font(fMenuLil);
	var _menu = _object.current_menu.menu;
	var _parts = _object.part_lists;
	var _cursor = _object.current_menu.cursor;
	for(var i = 0; i < array_length(_menu); i ++)
	{
		var part = !!is_array(_parts[$ _object.current_menu.title]) ?
			_parts[$ _object.current_menu.title][i] : undefined;
		draw_set_color(c_white);
		
		if(_cursor == i) 
		{
			if(part != undefined)
			{
				draw_set_font(fMenuLil);
				if(((!!variable_struct_exists(_menu[i], "_Cursor_left") ||
					!!variable_struct_exists(_menu[i], "_Cursor_right")) && 
					!!part.is_owned && variable_struct_exists(part.part, "levels"))
					&& part.part.title != "None")
				{
					if(part.part.current_level < 
						array_length(part.part.levels))
						{
							if(global.player_state.money >= LevelShiftPrice(
								part.part.original_price,
								part.part.current_level + 1))
							{
								draw_set_color(c_white);
							}
							else
							{
								draw_set_color(c_red);
							}
							draw_sprite(sUpgrade, 0, _x + 99, _y + 8 + (19 * i));
							draw_text(_x + 105, _y + 3 + (19 * i), LevelShiftPrice(
								part.part.original_price,
								part.part.current_level + 1));
						}
					if(part.part.current_level > 1)
						{
							draw_sprite(sDowngrade, 0, _x + 90, _y + 8 + (19 * i));
							//draw_set_color(c_white);
							//draw_text(_x + 105, _y + 14 + (24 * i), LevelShiftPrice(
							//	part.part.original_price,
							//	part.part.current_level - 1));
						}
				}
			}
		}
		
		draw_set_color(c_white);
		if(_cursor == i) draw_set_color(c_orange);		
		if(part != undefined)
		{
			if(!_menu[i].available) draw_set_color(c_red);
			draw_set_font(fMenu);
			draw_text(_x , _y + (18 * i), _menu[i].title);
			draw_set_color(c_yellow);
			if(!_menu[i].available) draw_set_color(c_red);
			draw_set_font(fMenuLil);
			draw_text(_x - 1 , _y + 8 + (19 * i), part.part.price);
			if(part.is_owned == true) draw_sprite(sShopPointer, 0, _x - 8, _y + 8 + (19 * i));
		}
		else
		{
			if(!_menu[i].available) draw_set_color(c_red);
			draw_set_font(fMenu);
			draw_text(_x , _y + (12 * i), _menu[i].title);
		}
		draw_set_font(fMenuLil);
		if(!!variable_struct_exists(_parts, _object.current_menu.title))
		{
			draw_set_color(c_yellow);
			if(!_menu[i].available) draw_set_color(c_red);
		}
		
	}
}

function StatsRender(_object, _x, _y)
{
	var _ship = Config_loader(_object.player_state.ship);
	var chosen_weapon_slot = 0;
	var menu = _object.current_menu;
	var cursor = menu.cursor;
	var _title = menu.title;
	var _stats = _object._menu.compare[$ _title];
	var _reverse = _object._menu.compare[$ string(_title) + "_reverse"];
	var _compare_title = _object._menu.compare[$ string(_title) + "_title"];
	var list = _object.part_lists[$ _title];
	var total_string = "";
	var totral_string_length = 0;
	var value = 0;
	var comp_value = 0;
	var diff = 0;
	var effect_counter = 0;
	if(!!is_array(list))
	{
		var picked_part = Config_loader(list[cursor].part);
		if(picked_part.title != "None")
		{			
			draw_set_font(fMenuLil);
			for(var i = 0; i < array_length(_stats); i++)
			{
				draw_set_color(c_white);
				if(!is_array(_ship[$ _title]))
				{
					if(!is_method(_ship[$ _title][$ _stats[i]]))
					{
						value = _ship[$ _title][$ _stats[i]];
						comp_value = picked_part[$ _stats[i]];
					}
					else
					{
						value = _ship[$ _title][$ _stats[i]](_ship[$ _title]);
						comp_value = picked_part[$ _stats[i]](picked_part);
					}
				}
				else
				{
					if(!is_method(_ship[$ _title][chosen_weapon_slot][$ _stats[i]]))
					{
						value = _ship[$ _title][chosen_weapon_slot][$ _stats[i]];
						comp_value = picked_part[$ _stats[i]];
					}
					else
					{
						value = 
							_ship[$ _title][chosen_weapon_slot]
							[$ _stats[i]](_ship[$ _title][chosen_weapon_slot]);
						comp_value = picked_part[$ _stats[i]](picked_part);
					}
				}
				
				if(_title == "Weapons" || _title == "Subweapons")
				{
					if(_ship[$ _title][chosen_weapon_slot].title == "None")
					{
						value = comp_value;
					}
				}
				else
				{
					if(_ship[$ _title].title == "None")
					{
						value = comp_value;
					}
				}
					
				total_string = string(_compare_title[i]) + ":" + string(value);
				totral_string_length = string_width(total_string);
				draw_text(_x , _y + (8 * i), total_string);
			
				if(comp_value < value) 
				{
					if(!_reverse[i]) {draw_set_color(c_red);} else {draw_set_color(c_lime);}
					diff = string(comp_value - value);
					draw_text(_x + totral_string_length + 8 , _y + (8 * i), diff);
				} 
				else if(comp_value > value) 
				{
					if(!_reverse[i]) {draw_set_color(c_lime);} else {draw_set_color(c_red);}
					diff = "+" + string(comp_value - value);
					draw_text(_x + totral_string_length + 8 , _y + (8 * i), diff);
				} 
			
			}
		
			if(!!variable_struct_exists(picked_part ,"effects"))
			{
				var effects_list = variable_instance_get_names(picked_part.effects)
				for(var i = 0; i < array_length(effects_list); i++)
				{
					for(var j = 0; j < array_length(picked_part.effects[$ effects_list[i]]); j++)
					{
						switch(picked_part.effects[$ effects_list[i]][j]._rarity)
						{
							case 1:
							draw_sprite(sLowTier, 0, 
								_x + 5 + (10 * effect_counter), _y - 4);
							break;

							case 2:
							draw_sprite(sMidTier, 0, 
								_x + 5 + (10 * effect_counter), _y - 4);
							break;
							
							case 3:
							draw_sprite(sHighTier, 0, 
								_x + 5 + (10 * effect_counter), _y - 4);
							break;
						}
						draw_sprite(picked_part.effects[$ effects_list[i]][j].icon, 0, 
							_x + 5 + (10 * effect_counter), _y - 4);
						effect_counter++;
					}
				}
			}
		}
	}
}