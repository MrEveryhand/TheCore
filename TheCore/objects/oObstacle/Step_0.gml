if(global.game_state.state == "level")
{
	if(!!instance_exists(oCamera))
	{
		var camera = GetCamera(oCamera);
		if(!!OOB(
			camera.left_border - 300, 
			camera.right_border + 300, 
			camera.top_border - 3000, 
			camera.bottom_border + 30, self)) {instance_destroy(self);}
	}
	else
	{
		if(!!OOB(-300, 610, -3000, 240, self)) {instance_destroy(self);}
	}
}

event_user(2);