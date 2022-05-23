 //MAYBE NEED A COOLDOWN FOR THIS SECTION
 if(source == "Player")
{
	collide_object = other;
	if(!!instance_exists(oSpawnerTestLevelTrue) && 
		!collide_object.touched) 
		{
			collide_object.touched = true;
			oSpawnerTestLevelTrue.enemies_touched++
		}

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
		if(_incorporeal == false)
			instance_destroy(self);
		collide_object.hp -= damage;
		collide_object.flash = 3;
		event_user(3);
	}
}