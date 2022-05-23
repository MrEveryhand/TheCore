 //MAYBE NEED A COOLDOWN FOR THIS SECTION
collide_object = other;
if(collide_object._incorporeal == true)
{
	OnHit(onHit, self);
	instance_create_layer(
		x,
		y,
		"Explosions",
		_explosion
		);
	if(_incorporeal == true)
		instance_destroy(self);
	collide_object.hp -= damage;
	collide_object.flash = 3;
	event_user(3);
}