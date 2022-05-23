function IdGenerator()
{
	var new_id = "id_" + string(array_length(global.game_state.id_list));
	array_push(global.game_state.id_list, new_id);
	
	return new_id
}