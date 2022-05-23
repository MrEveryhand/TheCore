switch(global.game_state.state)
{
	case "level":
	trace_sequence.Evaluate();
	if(sprite_index == sStarWalker5) gloss_sequence.Evaluate();
	Ship_control_input_read(player_input, player_state, self);
	break;
	
	case "menu":
	if(!shoot_lock)
	{
		Player_primary_fire(self,  player_state);
		Player_secondary_fire(self,  player_state);
		shoot_lock = player_state.ship.Generator.capacity == 0 ? true : shoot_lock;
	}
	else
	{
		shoot_lock = EnergyControl(player_state.ship.Generator);
	}

	break;
}
Player_movement_and_physics(player_state, self);