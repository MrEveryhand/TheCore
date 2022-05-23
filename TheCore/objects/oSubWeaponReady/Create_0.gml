_switch = false;
image_alpha = 0;
on_sequence = new Sequence([
	new Timer(30),
	new Event(function()
		{other._switch = false;}, 1)
], true);

_switch = false;;

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