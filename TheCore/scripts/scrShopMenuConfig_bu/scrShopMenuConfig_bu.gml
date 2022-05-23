var menu = 
{
	Main_menu :
	{
		Title : "Main menu",
		_cursor : 0,
		Menu :
		[
			{
				Title : "Shop",
				Action : function()
				{
					Menu = new Create_shop(global.game_state.level, shop_config);
				},
				_cursor : 0,
				Menu : 
				[],
			},
			{
				Title : "Surprise shop",
				Action : function()
				{
					Create_shop(global.game_state.level);
				},
				_cursor : 0,
				Menu : 
				[],
			},
			{
				Title : "To bar [CLOSED]",
				Action : false,
				_cursor : 0,
				Menu : 
				[],
			},
			{
				Title : "Next level",
				Action : false,
				_cursor : 0,
				Menu : 
				[],
			}
		]
	}
}
	
return menu

//[{
//	Title : "Hull",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Engine",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Weapons",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Subweapons",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Sidekicks",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Generator",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Shield",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "To bar [CLOSED]",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//},
//{
//	Title : "Next level",
//	Action : false,
//	_cursor : 0,
//	Menu : 
//	[],
//}],