if(global.game_state.state == "level")
{
	if(!!instance_exists(oCamera))
	{
		var camera = GetCamera(oCamera);
		if(!!OOB(
			camera.left_border - 3000, 
			camera.right_border + 3000, 
			camera.top_border - 30, 
			camera.bottom_border + 30, self)) {instance_destroy(self);}
	}
	else
	{
		if(!!OOB(-30, 360, -30, 240, self)) {instance_destroy(self);}
	}
}

spawn_sequence.Evaluate();
timer++;