var ships = 
{
	Star_Walker : function(randomize, rarity) constructor
	{
		//if(!randomize)
		//{
		title = "Starwalker";
		sprite = sStarwalker;
		mass = 0.5;
		_rarity = 1;
		//}
		//else
		//{
		//	var buffer = ShipPartGenerator(scrHullChances(), "Star_Walker", rarity);
		//	title = string(buffer.title) + " Starwalker";
		//	sprite = buffer.sprite;
		//	mass = buffer.mass;
		//	_rarity = rarity;
		//	delete buffer;
		//}
		Hull = {};
		Engine = {};
		ability = function Ability()
		{
			return
		}
		_id = 0;
		max_primary_weapons = 1;
		max_secondary_weapons = 1;
		max_sidekicks = 2;
		ship_parts = ["Hull", "Generator", "Engine", "Shield", "Weapons", "Subweapons", "Sidekicks"];
		Generator = {};
		Shield = {};
		Weapons_nest = 
		[
			{_x : 0, _y : -18}
		];
		Subweapons_nest = 
		[
			{_x : 0, _y : 0}
		]
		Sidekicks_nest = 
		[
			{_x : -10, _y : 3},
			{_x : 10, _y : 3},
		]
		Weapons = [];
		Subweapons = [];
		Sidekicks = [];
	}
}
	
return ships
