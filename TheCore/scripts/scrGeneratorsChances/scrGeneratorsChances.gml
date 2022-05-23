var chances = 
{
	compare_keys : [
		["max_capacity",1], 
		["recharge_rate",-1], 
		["recharge_volume",1], 
		["mass",-1]
	],
	GU_100 :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[15, 2],[20, 7],[25, 1]], 
		[[15, 1],[20, 6],[25, 3]], 
		[[20, 6],[25, 4]], 
		],
		recharge_rate : 
		[
		1, 1, 1
		],
		recharge_volume :		
		[
		[[2, 8],[2.5, 2]], 
		[[2, 6],[2.5, 4]], 
		2.5
		],
		mass : 		
		[
		[[1, 8], [1.2, 2]],
		[[1, 9], [1.2, 1]],
		[[0.8, 2], [1, 8]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		ongeneratormax_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ongeneratoroverheat_effect_pool : [
		[["Emergency", 8], [["Emergency", "Burden"], 2]],
		[["Emergency", 6], [["Emergency", "Burden"], 4]],
		[["Emergency", 4], [["Emergency", "Burden"], 6]]
		],
		price : [
			200, 300, 400
		]
	},
	Endurance :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[40, 2],[60, 7],[80, 1]], 
		[[40, 1],[60, 6],[80, 3]], 
		[[60, 6],[80, 4]], 
		],
		recharge_rate : 
		[
		[[2, 8],[1, 2]], 
		[[2, 6],[1, 4]], 
		1
		],
		recharge_volume :		
		[
		[[1, 8],[1.5, 2]], 
		[[1, 6],[1.5, 4]], 
		1.5
		],
		mass : 		
		[
		[[1.2, 8], [1.4, 2]],
		[[1.2, 9], [1.4, 1]],
		[[1, 2], [1.2, 8]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		ongeneratormax_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ongeneratoroverheat_effect_pool : [
		[["Emergency", 8], [["Emergency", "Burden"], 2]],
		[["Emergency", 6], [["Emergency", "Burden"], 4]],
		[["Emergency", 4], [["Emergency", "Burden"], 6]]
		],
		price : [
			250, 400, 600
		]
	},
	Jumper :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[15, 2],[20, 7],[30, 1]], 
		[[15, 1],[20, 6],[30, 3]], 
		[[20, 6],[25, 4]], 
		],
		recharge_rate : 
		[
		[[30, 8],[15, 2]], 
		[[30, 6],[15, 4]], 
		15
		],
		recharge_volume :		
		[
		[[10, 8],[15, 2]], 
		[[10, 6],[15, 4]], 
		15
		],
		mass : 		
		[
		[[1, 8], [1.2, 2]],
		[[1, 9], [1.2, 1]],
		[[0.8, 2], [1, 8]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		ongeneratormax_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ongeneratoroverheat_effect_pool : [
		[["Emergency", 8], [["Emergency", "Burden"], 2]],
		[["Emergency", 6], [["Emergency", "Burden"], 4]],
		[["Emergency", 4], [["Emergency", "Burden"], 6]]
		],
		price : [
			250, 400, 600
		]
	},
	Thingamajig :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[15, 2],[20, 7],[25, 1]], 
		[[15, 1],[20, 6],[25, 3]], 
		[[20, 6],[25, 4]], 
		],
		recharge_rate : 
		[
		[[2, 8],[1, 2]], 
		[[2, 6],[1, 4]], 
		1
		],
		recharge_volume :		
		[
		[[1, 8],[2, 2]], 
		[[1, 6],[2, 4]], 
		2
		],
		mass : 		
		[
		[[1, 8], [1.2, 2]],
		[[1, 9], [1.2, 1]],
		[[0.8, 2], [1, 8]]
		],
		effects_amount : [
		[[1, 8], [2, 2]],
		[[1, 6], [2, 3], [3, 1]],
		[[1, 4], [2, 3], [3, 2], [4, 1]]
		],
		ongeneratormax_effect_pool : [
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]],
		[["Sparks", 3], [["Sparks", "Arrowhead"], 7]],
		[["Sparks", 2], [["Sparks", "Arrowhead"], 8]]
		],
		ongeneratoroverheat_effect_pool : [
		[["Emergency", 4], [["Emergency", "Burden"], 6]],
		[["Emergency", 3], [["Emergency", "Burden"], 7]],
		[["Emergency", 2], [["Emergency", "Burden"], 8]]
		],
		price : [
			250, 400, 600
		]
	},
	GU_200 :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[25, 2],[30, 7],[35, 1]], 
		[[25, 1],[30, 6],[35, 3]], 
		[[30, 6],[35, 4]], 
		],
		recharge_rate : 
		[
		[[5, 8],[3, 2]], 
		[[5, 6],[3, 4]], 
		3
		],
		recharge_volume :		
		[
		[[3, 8],[5, 2]], 
		[[3, 6],[5, 4]], 
		3
		],
		mass : 		
		[
		[[1.2, 8], [1.4, 2]],
		[[1.2, 9], [1.4, 1]],
		[[1, 2], [1.2, 8]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		ongeneratormax_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ongeneratoroverheat_effect_pool : [
		[["Emergency", 8], [["Emergency", "Burden"], 2]],
		[["Emergency", 6], [["Emergency", "Burden"], 4]],
		[["Emergency", 4], [["Emergency", "Burden"], 6]]
		],
		price : [
			400, 600, 800
		]
	},
}
	
return chances