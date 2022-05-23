image_blend = make_color_rgb(255,255,255);
//path_speed += Ease_in(path_speed, _speed, _ease_in);
//speed += Ease_in(speed, _speed, _ease_in);
image_angle += Ease_in(image_angle, _image_angle, _ease_in);
vertical_force_direction = 0;
horizontal_force_direction = 0;
acceleration += Ease_in(acceleration, _acceleration, 0.5);
DebuffsApplying(self);
event_user(1);