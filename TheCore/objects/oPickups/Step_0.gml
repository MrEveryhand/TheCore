if(global.game_state.state == "level")
{
	if(!!instance_exists(oCamera))
	{
		var camera = GetCamera(oCamera);
		if(!!OOB(
			camera.left_border - 10, 
			camera.right_border + 10, 
			camera.top_border - 10, 
			camera.bottom_border + 10, self)) {instance_destroy(self);}
	}
	else
	{
		if(!!OOB(-10, 350, -10, 210, self)) {instance_destroy(self);}
	}
}
else
	{if(!!OOB(160, 320, 0, 200, self)) instance_destroy(self);}
event_user(2);