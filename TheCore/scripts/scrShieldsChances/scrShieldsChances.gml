var chances = 
{
	compare_keys : [
		["max_capacity",1], 
		["recharge_rate",-1], 
		["recharge_volume",1], 
		["cost",-1], 
		["mass",-1]
		],
	Bubble :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[3, 2],[4, 7],[5, 1]], 
		[[3, 1],[4, 6],[5, 3]], 
		[[4, 6],[5, 4]], 
		],
		recharge_rate : 
		[
		[[50, 2],[60, 7],[50, 1]],
		[[70, 2],[60, 7],[50, 1]],
		[[40, 2],[50, 7],[60, 1]],
		],
		recharge_volume :		
		[
		[[1, 8],[2, 2]], 
		[[1, 6],[2, 4]], 
		2
		],
		cost : 		
		[
		[[15, 8],[10, 2]], 
		[[15, 6],[10, 4]], 
		10
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
		onshieldmax_effect_pool : [
		[["Magnet", 8], [["Magnet", "Arrowhead"], 20]],
		[["Magnet", 6], [["Magnet", "Arrowhead"], 40]],
		[["Magnet", 4], [["Magnet", "Arrowhead"], 6]]
		],
		onshielddown_effect_pool : [
		[["Sparks", 8], [["Sparks", "Burden"], 2]],
		[["Sparks", 6], [["Sparks", "Burden"], 4]],
		[["Sparks", 4], [["Sparks", "Burden"], 6]]
		],
		price : [
			200, 300, 400
		]
	},
	Shell :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[4, 2],[6, 7],[8, 1]], 
		[[4, 1],[6, 6],[8, 3]], 
		[[6, 6],[8, 4]], 
		],
		recharge_rate : 
		[
		[[100, 2],[120, 7],[100, 1]],
		[[140, 2],[120, 7],[100, 1]],
		[[80, 2],[100, 7],[120, 1]],
		],
		recharge_volume :		
		[
		[[2, 8],[4, 2]], 
		[[2, 6],[4, 4]], 
		4
		],
		cost : 		
		[
		[[20, 8],[25, 2]], 
		[[20, 6],[25, 4]], 
		20
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
		onshieldmax_effect_pool : [
		[["Magnet", 8], [["Magnet", "Arrowhead"], 2]],
		[["Magnet", 6], [["Magnet", "Arrowhead"], 4]],
		[["Magnet", 4], [["Magnet", "Arrowhead"], 6]]
		],
		onshielddown_effect_pool : [
		[["Sparks", 8], [["Sparks", "Burden"], 2]],
		[["Sparks", 6], [["Sparks", "Burden"], 4]],
		[["Sparks", 4], [["Sparks", "Burden"], 6]]
		],
		price : [
			250, 400, 600
		]
	},
	Veil :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		icon : [false, false, false],
		max_capacity : 
		[
		[[1, 2],[2, 7],[3, 1]], 
		[[1, 1],[2, 6],[3, 3]], 
		[[2, 6],[3, 4]], 
		],
		recharge_rate : 
		[
		[[60, 2],[45, 7],[30, 1]],
		[[30, 2],[45, 7],[60, 1]],
		[[15, 2],[30, 7],[45, 1]],
		],
		recharge_volume :		
		[
		[[0.5, 8],[1, 2]], 
		[[0.5, 6],[1, 4]], 
		1
		],
		cost : 		
		[
		[[5, 8],[10, 2]], 
		[[5, 6],[10, 4]], 
		5
		],
		mass : 		
		[
		[[0.8, 8], [1, 2]],
		[[0.8, 9], [1, 1]],
		[[0.6, 2], [0.8, 8]]
		],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onshieldmax_effect_pool : [
		[["Magnet", 8], [["Magnet", "Arrowhead"], 2]],
		[["Magnet", 6], [["Magnet", "Arrowhead"], 4]],
		[["Magnet", 4], [["Magnet", "Arrowhead"], 6]]
		],
		onshielddown_effect_pool : [
		[["Sparks", 8], [["Sparks", "Burden"], 2]],
		[["Sparks", 6], [["Sparks", "Burden"], 4]],
		[["Sparks", 4], [["Sparks", "Burden"], 6]]
		],
		price : [
			250, 400, 600
		]
	}
}
	
return chances