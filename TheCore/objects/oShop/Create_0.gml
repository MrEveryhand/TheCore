global.game_state.state = "menu";
player_input = global.player_control;
player_state = global.player_state;
_menu = Retrieve_config(scrShopMenuConfig(), "shop");
_shop = Retrieve_config(scrShopConfig(), global.game_state.level);

randomize();

part_lists = CreatePartsLists(_shop, player_state.ship);

current_menu = CurrentMenu(self);
CreateSubMenus(part_lists, _menu, self);