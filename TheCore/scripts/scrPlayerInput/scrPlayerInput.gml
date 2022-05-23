var input = 
{
	up : 
	{
		key : vk_up,
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_up(argument0);
					break;
				case "menu":
					Cursor_up(argument1);
					break;
			}
		}
	},
	down : 
	{
		key : vk_down,
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_down(argument0);
					break;
				case "menu":
					Cursor_down(argument1);
					break;
			}
		}
	},
	left : 	
	{
		key : vk_left,
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_left(argument0);
					break;
				case "menu":
					Cursor_left(argument1);
					break;
			}
		}
	},
	right : 
	{
		key : vk_right,
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_right(argument0);
					break;
				case "menu":
					Cursor_right(argument1);
					break;
			}
		}
	},
	primary_weapon : 
	{
		key : "Z",
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_primary_fire(argument0, argument1);;
					break;
				case "menu":
					Confirm(argument1);
					break;
			}
		}
	},
	secondary_weapon : 
	{
		key : "X",
		mode : "normal",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Player_secondary_fire(argument0, argument1);;
					break;
				case "menu":
					Abort(argument1);
					break;
			}
		}
	},
	thrust :
	{
		key : "A",
		mode : "press",
		Action : function()
		{
			//Leveling_up(argument1);
		}
	},
	slow : 
	{
		key : "S",
		mode : "press",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					room_goto(Shop);
					break;
				case "menu":
					break;
			}

			//Leveling_down(argument1);
		}
	},
	damage_self : 
	{
		key : "D",
		mode : "press",
		Action : function()
		{
			switch(global.game_state.state)
			{
				case "level":
					Damage_control(argument0, argument1, 1);
					break;
				case "menu":
					break;
			}
		}
	},
}
	
return input
