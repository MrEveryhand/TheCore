function GetCamera(camera){
	var _camera = camera;
	var o_x = camera.x - 122;
	var o_y = camera.y - 100;
	
	var camera_object =
	{
		_x : camera.x,
		_y : camera.y,
		_xx : o_x,
		_yy : o_y,
		left_border : _camera.x - 122,
		right_border : _camera.x + 160,
		top_border : _camera.y - 100,
		bottom_border : _camera.y + 100,
		_speed : _camera.path_speed
	}
	
	return camera_object
}