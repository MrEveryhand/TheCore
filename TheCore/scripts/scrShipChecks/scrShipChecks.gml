function ConditionChecks(object){
	var parts = object.player_state.ship.ship_parts;
	var current_part;
	var effects = [];
	var weapons_count = 0;
	for(var i = 0; i < array_length(parts); i++)
	{
		///DEAL WITH SIDEKICKS LATER
		if((!!is_array(object.player_state.ship[$ parts[i]]))
			&& (parts[i] != "Sidekicks"))
		{
			current_part = object.player_state.ship[$ parts[i]][weapons_count];
		}
		else
		{
			current_part = object.player_state.ship[$ parts[i]];
		}
		
		if((parts[i] != "Sidekicks")
			&& (variable_struct_names_count(current_part.effects) > 0))
		///=============================
		{
			switch(parts[i])
			{
				case "Hull":
					if(current_part.current_hp == 
						current_part.max_hp)
					{
						array_push(effects, "onMaxHP");
					}	
					
					
				break;
				case "Generator":
					if(current_part.capacity == 
						current_part.max_capacity)
					{
						current_part.recharged = true;
						array_push(effects, "onGeneratorMax");
					} 
					else
					{
						array_push(effects, "onGeneratorOverheat");
					}
				break;
				case "Engine":
					if(abs(object.pif) >= current_part.top_speed * 0.5)
					{
						array_push(effects, "onTopSpeed");
					}	
					if(object.right == 0 && object.left == 0 && 
					object.up == 0 && object.down == 0)
					{
						array_push(effects, "onIdle");
					}	
				break;
				case "Shield":
					if(current_part.capacity == 
						current_part.max_capacity)
					{
						current_part.recharged = true;
						array_push(effects, "onShieldMax");
					}
					if(current_part.capacity <= 0)
					{
						array_push(effects, "onShieldDown");
					}
				break;
				case "Weapons":
					//if(!!current_part.fired)
					//{
					//	array_push(effects, "onFire");
					//	current_part.fired = false;
					//}
				break;
				case "Subweapons":
					//if(!!current_part.fired)
					//{
					//	array_push(effects, "onFire");
					//	current_part.fired = false;
					//}
				break;
			}
			
			for(var j = 0; j < array_length(effects); j++)
			{
				if(!!variable_struct_exists(current_part.effects, effects[j]))
					onTrigger(current_part.effects[$ effects[j]], object);
			}
			
			if(parts[i] == "Shield" && 
				current_part.capacity <= 0 && 
				current_part.recharged == true)
				current_part.recharged = false;
				
			if(parts[i] == "Generator" && 
				current_part.capacity <= 0 && 
				current_part.recharged == true)
				current_part.recharged = false;
			
			if(!!is_array(parts[i]) &&
				(weapons_count < array_length(parts[i]) - 1))
			{
				weapons_count++;
				i--;
			}
			else
			{
				weapons_count = 0;
			}
			effects = [];
		}
	}
}