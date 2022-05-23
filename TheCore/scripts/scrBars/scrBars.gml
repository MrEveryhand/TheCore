function Draw_bar(current_value, max_value, image, width, height, _x, _y) 
{
	var percentage = 1 - (current_value / max_value);
	var part = height * percentage;
	
	draw_sprite_part(image, 0, 0, part, width, height, _x, _y + part);
}