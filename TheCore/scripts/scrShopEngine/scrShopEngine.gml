function ChooseWeapon(){

}

function LevelUp(_object){
	var ship = _object.player_state.ship;
	var cursor = _object.current_menu.cursor;
	var title = _object.current_menu.title;
	var list = _object.part_lists;
	if(list[$ title][cursor].part.title != "None")
	{
		switch(title)
		{
			case "Weapons":
			var chosen_weapon = _object._menu.current_weapon;
			break;
		
			case "Subweapons":
			var chosen_weapon = _object._menu.current_subweapon;
			break;
		
			case "Sidekicks":
			var chosen_weapon = _object._menu.current_sidekick;
			break;
		}
		var current_weapon = Config_loader(ship[$ title][chosen_weapon]);
		var chosen_weapon = Config_loader(ship[$ title][chosen_weapon])
		var money = _object.player_state.money;
		var price = LevelShiftPrice(list[$ title][cursor].part.original_price, current_weapon.current_level + 1);
		if(money >= price && 
			(array_length(current_weapon.levels)) > current_weapon.current_level &&
			!!list[$ title][cursor].is_owned)
		{
			money -= price;
			current_weapon.current_level++;
			current_weapon.price += price;
		
			variable_struct_set(global.player_state, "money", money);
			variable_struct_set(global.player_state.ship[$ title][chosen_weapon], 
				"current_level", current_weapon.current_level);
			variable_struct_set(global.player_state.ship[$ title][chosen_weapon], 
				"price", current_weapon.price);
			variable_struct_set(list[$ title][cursor].part, 
				"current_level", current_weapon.current_level);
			variable_struct_set(list[$ title][cursor].part, 
				"price", current_weapon.price);
		}
	}
}

function LevelDown(_object){
	var ship = _object.player_state.ship;
	var cursor = _object.current_menu.cursor;
	var title = _object.current_menu.title;
	var list = _object.part_lists;
	if(list[$ title][cursor].part.title != "None")
	{
		switch(title)
		{
			case "Weapons":
			var chosen_weapon = _object._menu.current_weapon;
			break;
		
			case "Subweapons":
			var chosen_weapon = _object._menu.current_subweapon;
			break;
		
			case "Sidekicks":
			var chosen_weapon = _object._menu.current_sidekick;
			break;
		}
		var current_weapon = Config_loader(ship[$ title][chosen_weapon]);
		var chosen_weapon = Config_loader(ship[$ title][chosen_weapon])
		var money = _object.player_state.money;
		var price = LevelShiftPrice(list[$ title][cursor].part.original_price, current_weapon.current_level);
		if(1 < current_weapon.current_level &&
			!!list[$ title][cursor].is_owned)
		{
			money += price;
			current_weapon.current_level--;
			current_weapon.price -= price;
			variable_struct_set(global.player_state, "money", money);
			variable_struct_set(global.player_state.ship[$ title][chosen_weapon], 
				"current_level", current_weapon.current_level);
			variable_struct_set(global.player_state.ship[$ title][chosen_weapon], 
				"price", current_weapon.price);
			variable_struct_set(list[$ title][cursor].part, 
				"current_level", current_weapon.current_level);
			variable_struct_set(list[$ title][cursor].part, 
				"price", current_weapon.price);
		}
	}
}

function GoFurther(_object)
{
	if(array_length(_object.current_menu.menu[_object.current_menu.cursor].menu) > 0)
	{
		array_push(_object._menu.current_path, _object.current_menu.cursor);
		_object.current_menu = CurrentMenu(_object);
	}
}

function GoBack(_object)
{
	array_pop(_object._menu.current_path)
	_object.current_menu = CurrentMenu(_object);
}

function BuyGoodie(_object)
{
	var chosen_weapon_slot = 0
	var money = _object.player_state.money;
	var title = _object.current_menu.title;
	var ship = _object.player_state.ship;
	var slot = !is_array(ship[$ title]) ? ship[$ title] : ship[$ title][chosen_weapon_slot];
	var cursor = _object.current_menu.cursor;
	var list = _object.part_lists[$ title];
	var picked_part = list[cursor];
	
	var current_price = 0;
	if(variable_struct_exists( _object.player_state.ship, title))
	{
		var _current_part = _object.player_state.ship[$ title];
		var current_weapon = 0;
		
		if(!is_array(_current_part))
			current_price = _current_part.price;
		else
			current_price = _current_part[current_weapon].price;
	}
	
	if(money >= (picked_part.part.price - current_price) && !picked_part.is_owned)
	{
		for(var i = 0; i < array_length(list); i++)
		{
			list[i].is_owned = false;
		}
		picked_part.is_owned = true;
		if(slot.price == 0 && slot.title != "None") slot.price = list[0].part.price;
		money += slot.price - picked_part.part.price;
		variable_struct_set(global.player_state, "money", money);
		ReplacePart(slot, picked_part.part)
	}
}

function TakeOff(next_level)
{
	scrSlideTransition(TRANS_MODE.GOTO, TestLevel);
}