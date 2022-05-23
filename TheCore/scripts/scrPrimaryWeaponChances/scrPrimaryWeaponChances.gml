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
		[[0.4, 8], [0.6, 2]],
		[[0.4, 8], [0.6, 2]],
		[[0.2, 8], [0.4, 2]],
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
			200, 300, 400
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
		[[0.2, 8], [0.4, 2]],
		[[0.2, 8], [0.4, 2]],
		0.2
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
	Flak :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [sVulcan, sVulcan, sVulcan],
		init_fire_rate : [
		[[40, 1], [60, 7], [80, 2]],
		[[40, 1], [60, 7], [80, 2]],
		[[20, 4], [40, 5], [60, 1]]
		],
		init_cost : [
		[[10, 8], [14, 2]],
		[[10, 9], [14, 1]],
		1
		],
		init_mass : [
		[[0.6, 8], [0.8, 2]],
		[[0.6, 9], [0.8, 1]],
		[[0.4, 8], [0.6, 2]],
		],
		init_speed : [
		[[7, 2], [6, 7], [5, 1]],
		[[7, 1], [6, 7], [5, 2]],
		[[6, 2], [5, 7], [4, 1]]
		],
		init_damage : [
		[[10, 9], [15, 1]],
		[[10, 8], [15, 2]],
		[[10, 7], [15, 3]],
		],
		init_dispersion : [
		[[8, 1], [10, 7], [12, 2]],
		[[8, 2], [10, 7], [12, 1]],
		[[8, 3], [10, 7]]
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
		[[1, 8], [1.2, 2]],
		[[1, 9], [1.2, 1]],
		[[0.8, 8], [1.2, 2]],
		],
		init_speed : [
		[[2, 1], [1, 7], [0, 2]],
		[[2, 2], [1, 7], [0, 1]],
		[[3, 2], [2, 7], [1, 1]]
		],
		init_damage : [
		[[10, 9], [15, 1]],
		[[10, 8], [15, 2]],
		[[10, 7], [15, 3]],
		],
		init_dispersion : [
		0,
		0,
		0
		],
		price : [
			300, 500, 700
		]
	}
}
	
return chances