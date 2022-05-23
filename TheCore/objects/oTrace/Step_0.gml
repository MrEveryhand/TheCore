image_alpha += Ease_in(image_alpha, 0, 0.25);
if(image_alpha <= 0) instance_destroy(self);