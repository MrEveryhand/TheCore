function Retrieve_input(button, mode){
	if(mode == "press")
	{
		var input = !is_string(button) ? 
			keyboard_check_pressed(button) : keyboard_check_pressed(ord(button))
	}
	else
	{
		var input = !is_string(button) ? 
			keyboard_check(button) : keyboard_check(ord(button))
	}
	return input
}