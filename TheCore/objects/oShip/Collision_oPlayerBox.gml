//var player_mass = Player_ship_mass_calculation(other.player_state);
//var player_hor_speed = other.current_horizontal_speed;
//var player_ver_speed = other.current_vertical_speed;

//var buffer_v_speed = current_horizontal_speed;
//var buffer_h_speed = current_vertical_speed;

//var intersection_point = Collision_line_point(x, y, other.x, other.y, other, false, true);

//current_horizontal_speed = (((mass - player_mass) * current_horizontal_speed) + 
//	(2 * player_mass * player_hor_speed)) / (mass + player_mass);
	
//current_vertical_speed = (((mass - player_mass) * current_vertical_speed) + 
//	(2 * player_mass * player_ver_speed)) / (mass + player_mass);
	
//other.current_horizontal_speed = (((player_mass - mass) * player_hor_speed) + 
//	(2 * mass * buffer_h_speed)) / (mass + player_mass);
	
//other.current_vertical_speed = (((player_mass - mass) * player_ver_speed) + 
//	(2 * mass * buffer_v_speed)) / (mass + player_mass);

//var h_offset = (sprite_width + other.sprite_width) / 2;
//var v_offset = (sprite_height + other.sprite_height) / 2;

//var hs_delta = current_horizontal_speed + other.current_horizontal_speed;
//var vs_delta = current_vertical_speed + other.current_vertical_speed;

//if(bbox_right > other.bbox_left && x < other.x) x += hs_delta;
//if(bbox_left < other.bbox_right && x > other.x) x += hs_delta;
//if(bbox_bottom > other.bbox_top && y < other.y) y += vs_delta;
//if(bbox_top < other.bbox_bottom && y > other.y) y += vs_delta;

//var delta_h_ = sprite_width / 2;
//var delta_v_ = sprite_height / 2;

//if(other.bbox_left < bbox_right) x -= delta_h_;
//if(other.bbox_right > bbox_left) x += delta_h_;
//if(other.bbox_top > bbox_bottom) y += delta_v_;
//if(other.bbox_bottom < bbox_top) y -= delta_v_;

//var collide_object = other;

//var player_mass = Player_ship_mass_calculation(collide_object.player_state);
//buffer_v_speed = current_horizontal_speed;
//buffer_h_speed = current_vertical_speed;

//var p_x = collide_object.x;
//var p_y = collide_object.y;

//var ip = Collision_line_point(x, y, p_x, p_y, collide_object, false, true);
//show_debug_message(">>>>>>>>>> " + string(collide_object.current_horizontal_speed) + "/" +
//	string(collide_object.current_vertical_speed) + "__" +
//	string(ip[1]) + "_x_" + string(x) + 
//	string(ip[2]) + "_y_" + string(y))
//if((collide_object.current_horizontal_speed > 0 && ip[2] < y) ||
//	(collide_object.current_horizontal_speed < 0 && ip[2] > y) ||
//	(collide_object.current_vertical_speed < 0 && ip[1] < x) ||
//	(collide_object.current_vertical_speed > 0 && ip[1] > x))
//{
//	image_angle -= (player_mass/mass) * collide_object.pif;
//}

//if((collide_object.current_horizontal_speed < 0 && ip[2] > y) ||
//	(collide_object.current_horizontal_speed > 0 && ip[2] < y) ||
//	(collide_object.current_vertical_speed > 0 && ip[1] > x) ||
//	(collide_object.current_vertical_speed < 0 && ip[1] < x))
//{
//	image_angle += (player_mass/mass) * collide_object.pif;
//}

//current_horizontal_speed = (player_mass/mass) * collide_object.current_horizontal_speed;
//current_vertical_speed = (player_mass/mass) * collide_object.current_vertical_speed;

//collide_object.current_horizontal_speed = (mass/player_mass) * buffer_v_speed;
//collide_object.current_vertical_speed = (mass/player_mass) * buffer_h_speed;

//current_horizontal_speed += (collide_object.current_horizontal_speed * player_mass) / mass;
//current_vertical_speed += (collide_object.current_vertical_speed * player_mass) / mass;

//collide_object.current_horizontal_speed += (buffer_v_speed * mass) / player_mass;
//collide_object.current_vertical_speed += (buffer_h_speed * mass) / player_mass;