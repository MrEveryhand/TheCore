function GetCurrentMenuInfo(menu){
	var menu_depth = array_length(menu.Current_path);
	var current_menu = menu[$ menu.Current_path[0]];
	var current_menu_length = array_length(current_menu.Menu);
	
	for(var i = 1; i < menu_depth; i++)
	{
		for(var j = 0; j < current_menu_length; j++)
		{
			if(current_menu.Menu[j].Title == menu.Current_path[i])
			{
				current_menu = current_menu.Menu[j];
				current_menu_length = array_length(current_menu.Menu);
			}
		}
	}
	
	return current_menu;
}