if(other.source == "Player")
{
	var collide_object = other;

	var p_x = collide_object.x;
	var p_y = collide_object.y;

	var ip = Collision_line_point(x, y, p_x, p_y, collide_object, false, true);

	if(ip[1] > x)
	{
		current_horizontal_speed += (collide_object.current_horizontal_speed * collide_object.mass) / mass
		//current_vertical_speed += (collide_object.current_vertical_speed * collide_object.mass) / mass
	}
	if(ip[1] < x)
	{
		current_horizontal_speed += (collide_object.current_horizontal_speed * collide_object.mass) / mass
		//current_vertical_speed += (collide_object.current_vertical_speed * collide_object.mass) / mass
	}
	if(ip[2] < y)
	{
		//current_horizontal_speed += (collide_object.current_horizontal_speed * collide_object.mass) / mass
		current_vertical_speed += (collide_object.current_vertical_speed * collide_object.mass) / mass
	}
	if(ip[2] > y)
	{
		//current_horizontal_speed += (collide_object.current_horizontal_speed * collide_object.mass) / mass
		current_vertical_speed += (collide_object.current_vertical_speed * collide_object.mass) / mass
	}
	//current_horizontal_speed += (collide_object.current_horizontal_speed * collide_object.mass) / mass
	//current_vertical_speed += (collide_object.current_vertical_speed * collide_object.mass) / mass
}