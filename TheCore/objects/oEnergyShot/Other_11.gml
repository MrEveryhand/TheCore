if(!!instance_exists(oPlayerBox))
{
	var _coordinates = Rotate(
		oPlayerBox.x, 
		oPlayerBox.y, 
		travel, 
		direction, 
		0, 
		0, 
		direction + 90,
		direction + 180
	)
	x = _coordinates[0];
	y = _coordinates[1];
}
if(travel > damage * 100) instance_destroy(self);