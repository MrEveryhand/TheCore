if(!!keyboard_check_pressed(ord("R"))) 
{
	scrSlideTransition(TRANS_MODE.RESTART);
	global.player_state.ship.Hull.current_hp = global.player_state.ship.Hull.max_hp;
}
if(!!keyboard_check_pressed(vk_escape)) game_end();

if(!!instance_exists(oCamera))
{
	if(oCamera.path_position >= 100)
	{
		scrSlideTransition(TRANS_MODE.GOTO, Shop);
	}
}