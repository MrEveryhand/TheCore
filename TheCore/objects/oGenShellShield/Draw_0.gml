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