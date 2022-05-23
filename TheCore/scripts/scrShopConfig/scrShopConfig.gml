var shop = 
{
	Level_1 : function() constructor
	{
		rarity = [[1,8],[2,2]];
		max_price = 1000;
		next_level = TestLevel;
		Hull =
		{
			names :
			[
			"Carapace",
			"Brick",
			"Needle"
			],
			amount : irandom_range(2,3)			
		};
		Engine =
		{
			names :
			[
			"EU_100",
			"Loco",
			"Pierce"
			],
			amount : irandom_range(2,3)			
		};
		Generator =
		{
			names :
			[
			"GU_100",
			"Endurance",
			"Jumper"
			],
			amount : irandom_range(2,3)				
		};
		Shield =
		{
			names :
			[
			"Bubble",
			"Shell",
			"Veil"
			],
			amount : irandom_range(2,3)				
		};
		Weapons =
		{
			names :
			[
			"Vulcan",
			"Blaster",
			"Flak"
			],
			amount : irandom_range(2,3)				
		};
		Subweapons =
		{
			names :
			[
			"Vulcan",
			"Blaster",
			"Enering"
			],
			amount : irandom_range(2,3)				
		};
		Sidekicks =
		{
			names :
			[
			"GU_100"
			],
			amount : irandom_range(1,2)					
		};
	}
}
	
return shop