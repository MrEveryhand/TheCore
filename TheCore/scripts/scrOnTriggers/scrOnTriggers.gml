///THINK ABOUT ON_FIRE\ON_HIT UNIFICATION
function OnHit(onHit, _object){
	for(var i = 0; i < array_length(onHit); i++)
	{
		if(!!Chances(onHit[i].chance))
			onHit[i].action(_object, onHit[i]);
	}
}

function OnFire(_object, onFire, nest){
	for(var i = 0; i < array_length(onFire); i++)
	{
		if(!!Chances(onFire[i].chance))
			onFire[i].action(_object, nest);
	}
}

function OnDamage(_object, onDamage){
	for(var i = 0; i < array_length(onDamage); i++)
	{
		onDamage[i].action(_object, onDamage[i]);
	}
}
///==============================

function onTrigger(effects, _object)
{
	for(var i = 0; i < array_length(effects); i++)
	{
		effects[i].action(_object, effects[i]);
	}
}