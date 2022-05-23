var mass = Player_ship_mass_calculation(self.player_state);
var h_speed_buffer = current_horizontal_speed;
var v_speed_buffer = current_vertical_speed;
var crash_damage = 0;

if(sign(current_horizontal_speed) != sign(other.current_horizontal_speed))
{
	current_horizontal_speed = (((mass - other.mass) * current_horizontal_speed) + 
		(2 * other.mass * other.current_horizontal_speed)) / (other.mass + mass);

	other.current_horizontal_speed = (((other.mass - mass) * other.current_horizontal_speed) + 
		(2 * mass * h_speed_buffer)) / (other.mass + mass);	
}

if(sign(current_vertical_speed) != sign(other.current_vertical_speed))
{
	current_vertical_speed = (((mass - other.mass) * current_vertical_speed) + 
		(2 * other.mass * other.current_vertical_speed)) / (other.mass + mass);
	
	other.current_vertical_speed = (((other.mass - mass) * other.current_vertical_speed) + 
		(2 * mass * v_speed_buffer)) / (other.mass + mass);
}

if(pif > 2)
{
	crash_damage = floor(pif * other.mass);
}
else
{
	crash_damage = 1;
}

other.hp -= crash_damage;
other.flash = 3;
Damage_control(self, player_state, crash_damage);

var player_h_push = 1;
var player_v_push = 1;

if(bbox_right -+ current_horizontal_speed > other.bbox_left && 
	x < other.x) 
	{x -= player_h_push;}

if(bbox_left - current_horizontal_speed < other.bbox_right && 
	x > other.x) 
	{x += player_h_push;}

if(bbox_bottom + current_vertical_speed > other.bbox_top && 
	y < other.y - (other.sprite_height * 0.25)) 
	{y -= player_v_push;}

if(bbox_top - current_vertical_speed < other.bbox_bottom && 
	y > other.y + (other.sprite_height * 0.25)) 
	{y += player_v_push;}