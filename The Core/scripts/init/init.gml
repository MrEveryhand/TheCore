function SessionInit() constructor
{
	gameState = new GameState();
	playerState = new PlayerState();
}

function GameState() constructor
{
	var state = "Shop";
	var level = 1;
	var route = 1;
	var EntityLists = 
	{
		players : [],
		shipParts : [],
		projectiles : [],
		pickups : [],
		allies : [],
		enemies : [],
	};
}

function PlayerState() constructor
{
	var state =
	{
		money : 1000,
		reputation : {},
		ship : {},
		perks : [],
		buffs : [],
		debuffs : [],
	}
	var setting =
	{
		inputs :
		{
			up : vk_up,
			down : vk_down,
			left : 	vk_left,
			right : vk_right,
			primary_weapon : "Z",
			secondary_weapon : "X",
			thrust : "A",
			slow : "S",
			damage_self : "D",
		}
	}
}