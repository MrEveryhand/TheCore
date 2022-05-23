var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x-sprite_width/2, y-sprite_height/2 - 7, x+sprite_width/2, y-sprite_height/2 - 5, pc, c_black, c_red, c_lime, 0, true, true)

if(sprite_index != noone)
{
	draw_self();

	if(!!flash)
	{
		flash--;
		shader_set(shWhite);
		draw_self();
		shader_reset();
	}
}
event_user(3);