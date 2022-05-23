gloss_sequence = new Sequence([
	new Timer(10),
	new Event(function()
		{
			with(instance_create_layer(
				other.x + (irandom_range(-4, 4)),
				other.y + (irandom_range(-4, -2)),
				"Particles",
				oGloss
			))
			{
				image_speed = irandom_range(2,4) * 0.20;
			}
		}
	, 2, 1)
], true);

horizontal_acc = 0;
vertical_acc = 0;
cost = 0;