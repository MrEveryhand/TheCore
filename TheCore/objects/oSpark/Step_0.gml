if(speed != 0)
{
	speed += Ease_in(speed, 0.5, (irandom_range(1, 5) * 0.25));
	image_speed = speed * 0.5;
}
else
{
	image_speed = 0.5;
}