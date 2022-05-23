function CurrentMenu(_object){
	var menu_config = _object._menu;
	var current_path = menu_config.current_path;
	var current_menu = menu_config;
	
	for(var i = 0; i < array_length(current_path); i++)
	{
		current_menu = current_menu.menu[current_path[i]]
	}
	
	return current_menu
}