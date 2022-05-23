if(!!instance_exists(oCamera))
{
	var camera = GetCamera(oCamera);
	draw_set_color(c_white);
	draw_circle(x + camera._xx, y + camera._yy, 2, true);
	draw_set_color(c_red);
	draw_line(follower._destination[0], follower._destination[1], follower.x, follower.y);
}
