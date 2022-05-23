if(!!_switch)
{
	on_sequence.Evaluate();
}

var _xx = 0;
var _yy = 0;

if(!!instance_exists(oCamera))
{
	var camera = GetCamera(oCamera);
	_xx = camera._xx;
	_yy = camera._yy;
}

x = 210 + _xx;
y = 181 + _yy;