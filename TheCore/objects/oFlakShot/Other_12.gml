sparks_sequence.Evaluate();
image_speed = speed * 0.05;
if(image_index >= image_number) image_index = image_number;
var _damage = damage;
damage = floor(_damage / image_index);
