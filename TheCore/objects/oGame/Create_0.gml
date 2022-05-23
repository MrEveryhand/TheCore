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
	global.player_state.ship.Hull = Retrieve_ship_part(scrHullConfig(), "Carapace", false, Rarity());
	global.player_state.ship.Engine = Retrieve_ship_part(scrEngineConfig(), "EU_100", false, Rarity());
	array_push(global.player_state.ship.Weapons, Retrieve_ship_part(scrPrimaryWeaponsConfig(), "Blaster", false, Rarity()));
	array_push(global.player_state.ship.Subweapons, Retrieve_ship_part(scrSecondaryWeaponsConfig(), "Rockets", false, Rarity()));
	global.player_state.ship.Generator = Retrieve_ship_part(scrGeneratorConfig(), "GU_100", false, Rarity());
	global.player_state.ship.Shield = Retrieve_ship_part(scrShieldConfig(), "Bubble", false, Rarity());
}

window_set_size(960, 600);
//window_set_fullscreen(true);