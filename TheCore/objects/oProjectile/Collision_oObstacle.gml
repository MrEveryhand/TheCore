collide_object = other;
if(collide_object._incorporeal == false && _harm == true)
{
	OnHit(onHit, self);
	if(_explosion != noone)
		instance_create_layer(
			x,
			y,
			"Explosions",
			_explosion
			);
	if(collide_object._incorporeal == false)
		instance_destroy(self);
	if(collide_object._invincible == false)
	{
		collide_object.hp -= damage;
		collide_object.flash = 3;
	}
	event_user(3);
}