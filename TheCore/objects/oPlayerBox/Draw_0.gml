//pif = power((power(current_horizontal_speed, 2) + power(current_vertical_speed,2)), 1/2)
//var alfa = pif == 0 ? 0 : arccos(current_horizontal_speed / pif);
//var beta = pif == 0 ? 0 : arccos(current_vertical_speed / pif);

//var coords = Rotate(
//	x, 
//	y, 
//	sprite_height / 2, 
//	sprite_width / 2, 
//	current_horizontal_speed, 
//	current_vertical_speed, 
//	alfa,
//	beta
//)
//if(!!instance_exists(oCamera))
//{
//var camera = GetCamera(oCamera)
//	draw_rectangle(
//		camera.left_border, 
//		camera.right_border, 
//		camera.top_border, 
//		camera.bottom_border, true);
//}
draw_self();
////draw_line(x, y, coords[0], coords[1]);
//draw_line(x, y, (x + (current_horizontal_speed * 10)), (y + (current_vertical_speed * 10)));
////draw_text()