timer--;
image_xscale += 0.01 * z_vector;
image_yscale += 0.01 * z_vector;
if(timer <= 0) instance_destroy(self);