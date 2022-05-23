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
	Damage_control(collide_object, oPlayerBox.player_state, 2);
	event_user(4);
}