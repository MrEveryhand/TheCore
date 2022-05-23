function Ship_control_input_read(input, _player, object)
{
	if(!!keyboard_check(vk_anykey)) 
	{
		var input_keys = variable_struct_get_names(input);
		for(var i = 0; i < array_length(input_keys); i++)
		{
			if(!!Retrieve_input(input[$ input_keys[i]].key, input[$ input_keys[i]].mode)) 
				input[$ input_keys[i]].Action(object, _player);
		}
	}
}

function Player_up(object)
{
	object.up = 1;
}

function Player_down(object)
{
	object.down = 1;
}

function Player_left(object)
{
	object.left = 1;
}

function Player_right(object)
{
	object.right = 1;
}

function Player_primary_fire(object,  _player)
{
	var ship = _player.ship;
	var Weapons = ship.Weapons;
	var primary_nest = ship.Weapons_nest;

	Fire_check (object, ship, Weapons, primary_nest);
}

function Player_secondary_fire(object, _player)
{
	var ship = _player.ship;
	var Subweapons = ship.Subweapons;
	var secondary_nest = ship.Subweapons_nest;

	Fire_check (object, ship, Subweapons, secondary_nest);
}

function Leveling_up(_player)
{
	var ship = _player.ship;
	var Weapons = ship.Weapons;
	var Subweapons = ship.Subweapons;
	
	if(array_length(Weapons) > 0)
	for(var i = 0; i < array_length(Weapons); i++)
	{
		if(Weapons[i].current_level < array_length(Weapons[i].levels))
			Weapons[i].current_level++;
	}
	
	if(array_length(Subweapons) > 0)
	for(var i = 0; i < array_length(Subweapons); i++)
	{
		if(Subweapons[i].current_level < array_length(Subweapons[i].levels))
			Subweapons[i].current_level++;
	}
}

function Leveling_down(_player)
{
	var ship = _player.ship;
	var Weapons = ship.Weapons;
	var Subweapons = ship.Subweapons;
	
	if(array_length(Weapons) > 0)
	for(var i = 0; i < array_length(Weapons); i++)
	{
		if(Weapons[i].current_level > 1)
			Weapons[i].current_level--;
	}
	
	if(array_length(Subweapons) > 0)
	for(var i = 0; i < array_length(Subweapons); i++)
	{
		if(Subweapons[i].current_level > 1)
			Subweapons[i].current_level--;
	}
}