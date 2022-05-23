_switch = false;
image_alpha = 0;
trace_sequence = new Sequence([
	new Timer(1),
	new Event(function()
		{
			with(instance_create_layer(
				other.x,
				other.y,
				"Particles",
				oTrace
			))
			{
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				image_speed = 0;
			}
		}, 0)
], true);

flickering_sequence = new Sequence([
	new Timer(15),
	new Event(function()
		{other._switch = true}, 1),
	new Timer(15),
	new Event(function()
		{other._switch = false}, 1)
], true);

var _xx = 0;
var _yy = 0;

if(!!instance_exists(oCamera))
{
	var camera = GetCamera(oCamera);
	_xx = camera._xx;
	_yy = camera._yy;
}

x = 180 + _xx;
y = 181 + _yy;