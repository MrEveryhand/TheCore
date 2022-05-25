function Sequence(s, _repeat) constructor
{
	_s = s;
	__repeat = _repeat;
	counter = 0;
	state = "start";
	
	Evaluate = function ()
	{
		if(!is_array( _s)) {return}
		if(state == "stop") {return}
		
		if(counter < array_length(_s)) 
		{
			state = "play";
			if(!!_s[counter].Evaluate())
				counter++;
		}
		else 
		{
			state = "end";
			if(!!__repeat) counter = 0;
		}
	}
}

function Timer(interval) constructor
{
	_interval = interval;
	_max_interval = interval;
	Evaluate = function()
	{
		if(_interval > 0) {_interval--;}
		if(_interval <= 0) {_interval = _max_interval; return true} return false
	}
}

function Event(f, r, i) constructor
{
	_f = f;
	_repeat = r;
	_max_repeat = r;	
	_interval = 0;
	_max_interval = i;
	Evaluate = function()
	{		
		if(_repeat > 0)
		{
			if(_interval > 0) {_interval--;}
			if(_interval <= 0) 
			{
				_interval = _max_interval; 
				_repeat--;
				_f();
			}
		} 
		else 
		{
			_interval = _max_interval; 
			_repeat = _max_repeat;
			return true		
		}

	}
}

function If(f) constructor
{
	_f = f;
	Evaluate = function()
	{
		if(!!_f())
			return true
		else
			return false
	}
}