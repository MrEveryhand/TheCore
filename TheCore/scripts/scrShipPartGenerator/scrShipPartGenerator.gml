function ShipPartGenerator(config, name, rarity){
	var completed_part = {}
	var current_cell, current_key;
	var config_keys = variable_struct_get_names(config[$ name]);
	var picked_indexes = {};
	for(var i = 0; i < array_length(config_keys); i++)
	{
		current_key = config_keys[i];
		current_cell = config[$ name][$ current_key];
		if(!!is_array(current_cell[rarity - 1]))
		{
			completed_part[$ current_key] = Chances(current_cell[rarity - 1]);
			if(PickedIndex(current_key, config.compare_keys) > -1)
			{
				picked_indexes[$ current_key] = 
					PickedIndex(completed_part[$ current_key], current_cell[rarity - 1]);
			}
		}
		else
		{
			completed_part[$ current_key] = current_cell[rarity - 1];
			if(PickedIndex(current_key, config.compare_keys) > -1)
			{
				picked_indexes[$ current_key] = rarity - 1;
			}
		}
	}
	completed_part.price = PriceGenerator(config, completed_part, name, picked_indexes, rarity)
	
	return completed_part
}

function PriceGenerator(config, _object, name, indexes, rarity)
{
	var price_multiply = 0.2;
	var price_effect_multiply = 0.3;
	var comp_part = config.compare_keys;
	var price = _object.price;
	var current_diff, total_diff, current_median, current_key, current_cell, reverse;
	total_diff = 0;
	for(var i = 0; i < array_length(comp_part); i++)
	{
		current_key = comp_part[i];
		current_cell = config[$ name][$ current_key[0]][rarity - 1];
		if(!!is_array(current_cell))
		{
			reverse = current_key[1];
			current_median = ceil(array_length(current_cell) / 2) - 1;
			total_diff += ((indexes[$ current_key[0]] - current_median) * 
				(price_multiply * rarity)) * reverse;
		}
	}

	if(!!variable_struct_exists(_object ,"effects_amount"))
	{
		total_diff += (price_effect_multiply * _object.effects_amount * rarity);
	}

	price += price * total_diff;
	
	return (int64(price / 10) * 10)
}