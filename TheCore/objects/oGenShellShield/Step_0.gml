current_horizontal_speed = 0;
current_vertical_speed = 0;
if(!!instance_exists(oPlayerBox))
{
	x = oPlayerBox.x;
	y = oPlayerBox.y;
	current_horizontal_speed = oPlayerBox.current_horizontal_speed;
	current_vertical_speed = oPlayerBox.current_vertical_speed;
}
trace_sequence.Evaluate();
if(hp > 0 && image_index >= 2) image_index = 1;