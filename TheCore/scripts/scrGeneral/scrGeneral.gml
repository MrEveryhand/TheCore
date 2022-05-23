function Movement_and_physics(object)
{
	var _direction = point_direction(
		object.x, 
		object.y, 
		object._destination[0], 
		object._destination[1])
	
	//if(abs(_direction - object._direction_buffer) < 45)
	//	_direction = object._direction_buffer;
	
	object.horizontal_force_direction = lengthdir_x(1, _direction);
	object.vertical_force_direction = lengthdir_y(1, _direction);
		
	object.horizontal_acceleration = object.horizontal_force_direction * 
		(object.acceleration / object.mass);
	object.vertical_acceleration = object.vertical_force_direction * 
		(object.acceleration / object.mass);
	
	object.current_horizontal_speed += horizontal_acceleration;
	object.current_vertical_speed += vertical_acceleration;
	
	if(abs(object.current_horizontal_speed) >= object.top_speed) 
		object.current_horizontal_speed = 
			object.top_speed * sign(object.current_horizontal_speed);
	if(abs(object.current_vertical_speed) >= object.top_speed) 
		object.current_vertical_speed = 
			object.top_speed * sign(object.current_vertical_speed);

	if(object.horizontal_force_direction == 0 && abs(object.current_horizontal_speed) > 0) 
		object.current_horizontal_speed += 
		(0 - object.current_horizontal_speed) * (0.04 / object.mass);
	if(object.vertical_force_direction == 0 && abs(object.current_vertical_speed) > 0) 
		object.current_vertical_speed += 
		(0 - object.current_vertical_speed) * (0.04 / object.mass);
		
	x += object.current_horizontal_speed;
		
	if(!!instance_exists(oCamera))
	{
		var camera = GetCamera(oCamera);
		y += object.current_vertical_speed - camera._speed;
	}
	else y += object.current_vertical_speed;
		
	object._x_vector = x + object.current_horizontal_speed;
	object._y_vector = y + object.current_vertical_speed;
	
	object._direction = point_direction(x, y, object._x_vector, object._y_vector);
	object._direction_buffer = object._direction;
	object.pif = power((power(object.current_horizontal_speed, 2) + 
		power(object.current_vertical_speed, 2)), 1/2)
}

function Tilt(ship)
{
	var easy_tilt = ship.top_speed * 0.25;
	var	deep_tilt = ship.top_speed * 0.75;
	
	ship.image_index = 2

	if(ship._direction >= 180 && ship._direction < 359)
	{
		if(abs(ship.current_horizontal_speed) > deep_tilt)
		{
			ship.image_index = 2 + (sign(ship.current_horizontal_speed) * 2);
		}
		else
		if(abs(ship.current_horizontal_speed) > easy_tilt)
		{
			ship.image_index = 2 + sign(ship.current_horizontal_speed);
		}
	}
	else
	{
		if(abs(ship.current_horizontal_speed) > deep_tilt)
		{
			ship.image_index = 2 - (sign(ship.current_horizontal_speed) * 2);
		}
		else
		if(abs(ship.current_horizontal_speed) > easy_tilt)
		{
			ship.image_index = 2 - sign(ship.current_horizontal_speed);
		}
	}
}