function DebuffSearch(_object, _id){
	var debuffs = _object._debuffs;
	var info = [];
	for(var i = 0; i < array_length(debuffs); i++)
	{
		if(debuffs[i].parent_id == _id)
		{
			array_push(info, debuffs[i]);
			array_push(info, i);
			return info
		}
	}
	return false
}

function DebuffsApplying(_object)
{
	var debuffs = _object._debuffs;
	for(var i = 0; i < array_length(debuffs); i++)
	{
		debuffs[i].action(_object, debuffs[i]);
	}
}