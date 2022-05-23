collide_object = other;
OnHit(onHit, self);
instance_create_layer(
	x,
	y,
	"Explosions",
	oVulcanExplosion
	);
instance_destroy(self);