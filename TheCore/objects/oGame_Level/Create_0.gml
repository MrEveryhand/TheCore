randomize();
global.player_control = Config_loader(scrPlayerInput());
if(!variable_struct_exists(global, "game_state"))
	{global.game_state = Config_loader(scrGameStateConfig());}
global.game_state.state = "level";
if(!variable_struct_exists(global, "player_state"))
{
	global.player_state = Config_loader(scrPlayerState());
	function Rarity()
	{
		return Chances([[1,6],[2,3],[3,1]])
	}

	global.player_state.ship = Retrieve_ship_part(scrShipConfig(), "Star_Walker", false, undefined);
	global.player_state.ship.Hull = Retrieve_ship_part(scrHullConfig(), "Carapace", true, Rarity());
	global.player_state.ship.Engine = Retrieve_ship_part(scrEngineConfig(), "EU_100", true, Rarity());
	array_push(global.player_state.ship.Weapons, Retrieve_ship_part(scrPrimaryWeaponsConfig(), "Vulcan", true, Rarity()));
	array_push(global.player_state.ship.Subweapons, Retrieve_ship_part(scrSecondaryWeaponsConfig(), "Rockets", true, Rarity()));
	global.player_state.ship.Generator = Retrieve_ship_part(scrGeneratorConfig(), "GU_100", true, Rarity());
	global.player_state.ship.Shield = Retrieve_ship_part(scrShieldConfig(), "Bubble", true, Rarity());
}

with(instance_create_layer(
	0,0,"Tech",oCamera))
	{
		image_alpha = 0;
		_path = pTestLevelCamera;
		path_start(_path, 0.5, path_action_stop, true);
	}

//window_set_size(960, 600);