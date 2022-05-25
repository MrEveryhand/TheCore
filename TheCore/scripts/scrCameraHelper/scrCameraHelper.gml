function GetCamera(camera){
	if(!!instance_exists(camera))
	{
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
	}
	else
	{
		var camera_object =
		{
			_x : 160,
			_y : 100,
			_xx : 38,
			_yy : 0,
			left_border : 38,
			right_border : 320,
			top_border : 0,
			bottom_border : 200,
			_speed : 0
		}
	}
	
	return camera_object
}