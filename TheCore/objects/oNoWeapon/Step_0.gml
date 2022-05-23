trace_sequence.Evaluate();
if(!GeneratorCapacityCheck(global.player_state.ship, 
	global.player_state.ship.Weapons[0].total_cost(global.player_state.ship.Weapons[0])))
{
	flickering_sequence.Evaluate();
}
else image_alpha = 0;

var _xx = 0;
var _yy = 0;

if(!!instance_exists(oCamera))
{
	var camera = GetCamera(oCamera);
	_xx = camera._xx;
	_yy = camera._yy;
}

x = 180 + _xx + irandom_range(-1, 1);
y = 181 + _yy + irandom_range(-1, 1);