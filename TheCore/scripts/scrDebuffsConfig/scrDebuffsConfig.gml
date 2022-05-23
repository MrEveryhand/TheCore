var debuffs = 
{
	Slow : function(effect, duration) constructor
	{

		title = "Slow"
		icon = false;
		_effect = effect;
		_duration = duration;
		action = function(_object, effect)
		{
			show_debug_message(effect._effect * 100);
			_object.image_blend = make_colour_rgb(200, 200, (200 + effect._effect * 100));
			_object.speed = _object.speed * effect._effect;
			_object.acceleration = _object.acceleration * effect._effect;
			_object.path_speed = _object.path_speed * effect._effect;
			effect._duration--
			if(effect._duration <= 0) 
				{array_delete(_object._debuffs, DebuffSearch(_object, effect.parent_id)[1], 1)};
		}
	},
}
	
return debuffs