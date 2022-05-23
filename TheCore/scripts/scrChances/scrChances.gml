function Chances(chances){
	var chance_array = [];
	for(var i = 0; i < array_length(chances); i++)
	{
		repeat(chances[i][1])
			array_push(chance_array, chances[i][0]);
	}
	var chances_length = array_length(chance_array);
	return chance_array[irandom(chances_length - 1)]
}

function PickedIndex(value, chances)
{
	var index = -1;
	for(var i = 0; i < array_length(chances); i++)
	{
		if(value == chances[i][0]) index = i;
	}

	return index
}

function ArraySearch(value, array)
{
	var index = -1;
	for(var i = 0; i < array_length(array); i++)
	{
		if(value == array[i]) index = i;
	}

	return index
}