if(global.game_state.state == "level")
{
	spawner = !!instance_exists(oSpawnerTestLevelTrue) ? true : false;
	if(oob_direction == "bottom")
	{
		if(!!instance_exists(oCamera))
		{
			var camera = GetCamera(oCamera);
			if(!!OOB(
				camera.left_border - 40, 
				camera.right_border + 30, 
				camera.top_border - 3000, 
				camera.bottom_border + 20, self)) 
				{
					if(!!spawner)
					{
						oSpawnerTestLevelTrue.enemies_passed++
						oSpawnerTestLevelTrue.wave_is_on--;
					}
					instance_destroy(self);
				}
		}
		else
		{
			if(!!OOB(-40, 380, -3000, 240, self)) 
			{
				if(!!instance_exist(oSpawnerTestLevelTrue))
					{
						oSpawnerTestLevelTrue.enemies_passed++;
						oSpawnerTestLevelTrue.wave_is_on--;
					}
				instance_destroy(self);
			}
		}
	}
	if(oob_direction == "top")
	{
		if(!!instance_exists(oCamera))
		{
			var camera = GetCamera(oCamera);
			if(!!OOB(
				camera.left_border - 40, 
				camera.right_border + 30, 
				camera.top_border - 40, 
				camera.bottom_border + 3000, self)) 
				{
					if(!!spawner)
					{
						oSpawnerTestLevelTrue.enemies_passed++
						oSpawnerTestLevelTrue.wave_is_on--;
					}
					instance_destroy(self);
				}
		}
		else
		{
			if(!!OOB(-40, 380, -40, 3000, self)) 
			{
				if(!!instance_exist(oSpawnerTestLevelTrue))
					{
						oSpawnerTestLevelTrue.enemies_passed++;
						oSpawnerTestLevelTrue.wave_is_on--;
					}
				instance_destroy(self);
			}
		}	
	}
}

if(!!instance_exists(ancor))
{
	var camera = GetCamera(oCamera);
	_destination[0] = ancor.x + camera._xx;
	if(!!ancor.absolute)
		_destination[1] = ancor.y + camera._yy;
}

Movement_and_physics(self);
if(hp <= 0)
{
	if(!!spawner)
	{
		oSpawnerTestLevelTrue.enemies_destroyed++
		oSpawnerTestLevelTrue.wave_is_on--;
	}
}
event_user(2);