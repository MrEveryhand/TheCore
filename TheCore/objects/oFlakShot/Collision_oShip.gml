collide_object = other;
OnHit(onHit, self);
with(instance_create_layer(
	x,
	y,
	"Explosions",
	oRocketExplosion
	)){image_angle = irandom(359)};
instance_destroy(self);