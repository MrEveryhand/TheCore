var buffs = 
{
	Slow : function(effect, duration) constructor
	{

		title = "Slow"
		icon = false;
		_effect = effect;
		_duration = duration;
		action = function(_object, effect)
		{
			_object.image_blend = make_colour_hsv(100, 100, (100 + effect._effect * 100));
			_object.speed = _object.speed * effect._effect;
			_object.path_speed = _object.path_speed * effect._effect;
			effect._duration--
			if(effect._duration <= 0) 
				{array_delete(_object._debuffs, DebuffSearch(_object, effect.parent_id)[1], 1)};
		}
	},
}
	
return buffs