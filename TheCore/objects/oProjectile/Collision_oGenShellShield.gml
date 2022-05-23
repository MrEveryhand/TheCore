if(source != "Player")
{
	collide_object = other;
	if(_explosion != noone)
		instance_create_layer(
			x,
			y,
			"Explosions",
			_explosion
			);
	if(_incorporeal == false)
		instance_destroy(self);
	other.hp -= 2;
	event_user(4);
}