function Shop_input_read(input, _menu, object)
{
	if(!!keyboard_check_pressed(vk_anykey)) 
	{
		var input_keys = variable_struct_get_names(input);
		for(var i = 0; i < array_length(input_keys); i++)
		{
			if(!!Retrieve_input(input[$ input_keys[i]].key)) 
				input[$ input_keys[i]].Action(_menu, object);
		}
	}
}

function Cursor_down (_object) {
	var _cursor = _object.current_menu.cursor;
	var blocked = true;
	var pointer = _cursor + 1;
	while(!!blocked)
	{
		if(pointer > array_length(_object.current_menu.menu) - 1) {pointer = 0;}
		if(!_object.current_menu.menu[pointer].available) {pointer++;} else {blocked = false;}
	}
	_object.current_menu.cursor = pointer;
}

function Cursor_up (_object) {
	var _cursor = _object.current_menu.cursor;
	var blocked = true;
	var pointer = _cursor - 1;
	while(!!blocked)
	{
		if(pointer < 0) {pointer = array_length(_object.current_menu.menu) - 1;}
		if(!_object.current_menu.menu[pointer].available) {pointer--;} else {blocked = false;}
	}
	_object.current_menu.cursor = pointer;
}

function Cursor_left (_object) {
	if(!!variable_struct_exists(_object.current_menu.menu[_object.current_menu.cursor], "_Cursor_left"))
		_object.current_menu.menu[_object.current_menu.cursor]._Cursor_left(_object);
}

function Cursor_right (_object) {
	if(!!variable_struct_exists(_object.current_menu.menu[_object.current_menu.cursor], "_Cursor_right"))
		_object.current_menu.menu[_object.current_menu.cursor]._Cursor_right(_object);
}

function Confirm (_object) {
	if(!!variable_struct_exists(_object.current_menu.menu[_object.current_menu.cursor], "_Confirm"))
		_object.current_menu.menu[_object.current_menu.cursor]._Confirm(_object);
}

function Abort (_object) {
	if(!!variable_struct_exists(_object.current_menu.menu[_object.current_menu.cursor], "_Abort"))
		_object.current_menu.menu[_object.current_menu.cursor]._Abort(_object);
}