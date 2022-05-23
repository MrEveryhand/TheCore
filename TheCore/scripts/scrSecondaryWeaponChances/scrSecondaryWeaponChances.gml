var chances = 
{
	compare_keys : [
		["init_fire_rate",1], 
		["init_cost",-1], 
		["init_mass",-1], 
		["init_speed",1], 
		["init_damage",1] ,
		["init_dispersion",-1]
	],
	Rockets :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [sVulcan, sVulcan, sVulcan],
		init_fire_rate : [
		[[45, 1], [60, 7], [75, 2]],
		[[45, 1], [60, 7], [75, 2]],
		[[30, 4], [45, 5], [60, 1]]
		],
		init_cost : [
		[[5, 8], [4, 2]],
		[[5, 9], [4, 1]],
		4
		],
		init_mass : [
		[[0.8, 8], [1, 2]],
		[[0.8, 9], [1, 1]],
		[[0.6, 8], [0.8, 2]],
		],
		init_speed : [
		[[2, 1], [1, 7], [0, 2]],
		[[2, 2], [1, 7], [0, 1]],
		[[3, 2], [2, 7], [1, 1]]
		],
		init_damage : [
		[[5, 9], [10, 1]],
		[[5, 8], [10, 2]],
		[[5, 7], [10, 3]],
		],
		init_dispersion : [
		0,
		0,
		0
		],
		price : [
			300, 500, 600
		]
	},
	Enering :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [sVulcan, sVulcan, sVulcan],
		init_fire_rate : [
		30,
		30,
		30
		],
		init_cost : [
		[[5, 8], [4, 2]],
		[[5, 9], [4, 1]],
		[[4, 8], [3, 2]],
		],
		init_mass : [
		[[0.5, 8], [1, 2]],
		[[0.5, 9], [1, 1]],
		0.5
		],
		init_speed : [
		[[4, 1], [3, 7], [2, 2]],
		[[4, 2], [3, 7], [2, 1]],
		[[5, 2], [4, 7], [3, 1]]
		],
		init_damage : [
		[[0.5, 9], [0.75, 1]],
		[[0.5, 8], [0.75, 2]],
		[[0.5, 7], [0.75, 3]],
		],
		init_dispersion : [
		0,
		0,
		0
		],
		price : [
			200, 300, 400
		]
	},
	Blaster :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [noone, noone, noone],
		init_fire_rate : [
		[[12, 1], [15, 7], [18, 2]],
		[[9, 1], [12, 7], [15, 2]],
		[[9, 4], [12, 5], [15, 1]]
		],
		init_cost : [
		[[4, 8], [6, 2]],
		[[4, 9], [6, 1]],
		4
		],
		init_mass : [
		[[0.2, 8], [0.4, 2]],
		[[0.2, 8], [0.4, 2]],
		0.2
		],
		init_speed : [
		[[4, 2], [4, 7], [6, 1]],
		[[4, 1], [4, 7], [6, 2]],
		[[5, 2], [6, 7], [7, 1]]
		],
		init_damage : [
		[[2, 9], [4, 1]],
		[[2, 8], [4, 2]],
		[[2, 7], [4, 3]],
		],
		init_dispersion : [
		0, 0, 0
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onhit_effect_pool : [
		[["Slow", 8], [["Slow", "Robbery"], 2]],
		[["Slow", 6], [["Slow", "Robbery"], 4]],
		[["Slow", 4], [["Slow", "Robbery"], 6]]
		],
		onfire_effect_pool : [
		"Burst",
		"Burst",
		[["Burst", 6], [["Burst", "InstaLoad"], 4]]
		],
		price : [
			150, 200, 300
		]
	},
	Vulcan :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [sVulcan, sVulcan, sVulcan],
		init_fire_rate : [
		[[4, 1], [5, 7], [6, 2]],
		[[3, 1], [4, 7], [5, 2]],
		[[3, 4], [4, 5], [5, 1]]
		],
		init_cost : [
		[[1, 8], [2, 2]],
		[[1, 9], [2, 1]],
		1
		],
		init_mass : [
		[[0.1, 8], [0.2, 2]],
		[[0.1, 8], [0.2, 2]],
		0.1
		],
		init_speed : [
		[[5, 2], [6, 7], [7, 1]],
		[[5, 1], [6, 7], [7, 2]],
		[[6, 2], [7, 7], [8, 1]]
		],
		init_damage : [
		[[1, 9], [2, 1]],
		[[1, 8], [2, 2]],
		[[1, 7], [2, 3]],
		],
		init_dispersion : [
		[[0, 1], [1, 7], [2, 2]],
		[[0, 2], [1, 7], [2, 1]],
		[[0, 3], [1, 7]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onhit_effect_pool : [
		[["Slow", 8], [["Slow", "Robbery"], 2]],
		[["Slow", 6], [["Slow", "Robbery"], 4]],
		[["Slow", 4], [["Slow", "Robbery"], 6]]
		],
		onfire_effect_pool : [
		"Burst",
		"Burst",
		[["Burst", 6], [["Burst", "InstaLoad"], 4]]
		],
		price : [
			250, 400, 600
		]
	},
}
	
return chances