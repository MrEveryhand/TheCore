function Config_loader(config){
	var keys = variable_instance_get_names(config);
	var output = {};
	for(var i = 0; i < array_length_1d(keys); i++)
	{
		{
			output[$ keys[i]] = variable_struct_get(config, keys[i]);
		}
	}
	return output
}

function Retrieve_config(config, name)
{
	var current_config = new config[$ name]();
	return current_config
}

function Retrieve_ship_part(config, name, random, rarity)
{
	var parts_list = config;
	var current_part = new parts_list[$ name](random, rarity);
	current_part._id = IdGenerator();
	return current_part
}

function Retrieve_effect(config, name, random, rarity)
{
	var parts_list = config;
	var current_part = new parts_list[$ name](random, rarity);
	current_part._id = IdGenerator();
	return current_part
}

function Retrieve_debuff(config, name, effect, duration, _id)
{
	var parts_list = config;
	var current_part = new parts_list[$ name](effect, duration);
	current_part.parent_id = _id
	return current_part
}