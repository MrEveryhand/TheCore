if(!!instance_exists(oPlayerBox))
{
	x = oPlayerBox.x;
	y = oPlayerBox.y;
}
image_xscale += speed * 0.1;
image_yscale = image_xscale;
if(image_yscale > damage * 4) instance_destroy(self);