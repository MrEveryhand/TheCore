if(!!instance_exists(oPlayerBox))
{
	intermediate_hp += Ease_in(intermediate_hp, 
		oPlayerBox.player_state.ship.Hull.current_hp, 0.25);
	intermediate_shield += Ease_in(intermediate_shield, 
		oPlayerBox.player_state.ship.Shield.capacity, 0.25);
	intermediate_generator += Ease_in(intermediate_generator, 
		oPlayerBox.player_state.ship.Generator.capacity, 0.25);
	
	_x = global.game_state.state == "level" ? -29 : 110;
	
	if(intermediate_hp != oPlayerBox.player_state.ship.Hull.current_hp)
	{
		var diff = abs(intermediate_hp - oPlayerBox.player_state.ship.Hull.current_hp) * 10;
		Draw_bar(
		intermediate_hp, 
		oPlayerBox.player_state.ship.Hull.max_hp, 
		sHealthBar, 
		16,
		198,
		31 + _x + irandom_range(-diff, diff), 
		1 + irandom_range(-diff, diff));
	}

	var diff = oPlayerBox.player_state.ship.Hull.current_hp == 1 ? 1 : 0;
	Draw_bar(
	intermediate_hp, 
	oPlayerBox.player_state.ship.Hull.max_hp, 
	sHealthBar, 
	16,
	198,
	31 + _x + irandom_range(-diff, diff), 
	1 + irandom_range(-diff, diff));

			
	Draw_bar(
		intermediate_shield, 
		oPlayerBox.player_state.ship.Shield.max_capacity, 
		sShieldBar, 
		16,
		198,
		43 + _x, 
		7);
	
	Draw_bar(
		intermediate_generator, 
		oPlayerBox.player_state.ship.Generator.max_capacity, 
		sGeneratorBar, 
		16,
		198,
		53 + _x, 
		12);
	
	draw_text_color(33 + _x, 90, 
		floor(oPlayerBox.player_state.ship.Hull.current_hp), c_white, c_white, c_white, c_white, 1.0);
	draw_text_color(43 + _x, 90, 
		floor(oPlayerBox.player_state.ship.Shield.capacity), c_white, c_white, c_white, c_white, 1.0);
	draw_text_color(50 + _x, 90, 
		floor(oPlayerBox.player_state.ship.Generator.capacity), c_white, c_white, c_white, c_white, 1.0);
	
	draw_set_color(c_white);
	draw_set_font(fMenuLil);
	
	if(global.game_state.state == "menu")
	{
		draw_text(190, 0, "Total mass:" + 
			string(Player_ship_mass_calculation(oPlayerBox.player_state)));
		draw_text(190, 10, "Money:" + string(oPlayerBox.player_state.money));
		draw_text(5, 190, string(global.player_control.primary_weapon.key) + ": Confirm");
		draw_text(75, 190, string(global.player_control.secondary_weapon.key) + ": Abort");
		//draw_text(35, 230, string("R : Restock shop"));
	}
	if(global.game_state.state == "level")
	{
		if(!!instance_exists(oSpawnerTestLevelTrue))
		{
			draw_set_color(c_orange);
			draw_text(180, 25, "Enemies created: " + string(oSpawnerTestLevelTrue.enemies_created));
			draw_text(180, 35, "Enemies touched: " + string(oSpawnerTestLevelTrue.enemies_touched));
			draw_text(180, 45, "Enemies left: " + string(oSpawnerTestLevelTrue.enemies_passed));
			draw_text(180, 55, "Enemies destroyed: " + string(oSpawnerTestLevelTrue.enemies_destroyed));
			draw_text(180, 65, "Time left: " + string(oSpawnerTestLevelTrue.time));
			draw_text(180, 75, "Menace: " + string(oSpawnerTestLevelTrue.menace));
			draw_text(180, 85, "Suspiscions: " + string(oSpawnerTestLevelTrue.suspicions));
			draw_text(180, 95, "Wave: " + string(oSpawnerTestLevelTrue.wave_is_on));
			draw_set_color(c_white);
		}
		draw_text(145, 185, string(oPlayerBox.player_state.money) + " $");
	}
}
else
{
	draw_set_font(fMenu);
	draw_set_color(c_white);
	draw_text(75, 60, "Press R to restart");
}
