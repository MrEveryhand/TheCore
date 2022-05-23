Movement_and_physics(self)
steam_sequence.Evaluate();
lock_sequence.Evaluate();

if(!!instance_exists(target))
{
	if(target != noone && _lock_on == true)
	{
		_destination = [target.x, target.y];
	}
}
else
{
	if(!!instance_exists(oShip))
	{
		for (var i = 0; i < instance_number(oShip); ++i;)
		{
			enemy[i] = instance_find(oShip,i);
		}
		target = enemy[irandom(array_length(enemy) - 1)];
	}
	else
	{
		_destination = 
			[x + lengthdir_x(1000, _direction),
			y + lengthdir_y(1000, _direction)]
	}
}

image_speed = pif * 0.2;
image_angle = _direction - 90;