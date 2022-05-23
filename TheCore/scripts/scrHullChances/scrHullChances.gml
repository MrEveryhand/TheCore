var chances = 
{
	compare_keys : [
		["mass",-1], 
		["max_hp",1], 
		["airodynamics",1]
	],
	Carapace :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		sprite : [
		[[sStarWalkerCarapace1, 5], [sStarWalkerCarapace2, 5]],
		[[sStarWalkerCarapace3, 5], [sStarWalkerCarapace4, 5]],
		[[sStarWalkerCarapace5, 8], [sStarWalkerCarapace6, 2]]
		],
		mass : [
		[[2, 8], [2.4, 2]],
		[[2, 9], [2.4, 1]],
		[[1.6, 2], [2, 8]]
		],
		airodynamics : [
		[[0, 8], [0.05, 2]],
		[[0, 9], [0.05, 1]],
		[[0.1, 2], [0.05, 8]]
		],
		max_hp : [
		[[4, 2], [5, 7], [6, 1]],
		[[4, 2], [5, 6], [6, 2]],
		[[5, 7], [6, 3]]
		],
		//a_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//b_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//c_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onmaxhp_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ondamage_effect_pool : [
		[["Beehive", 9], [["Beehive", "Compensation"], 1]],
		[["Beehive", 6], [["Beehive", "Compensation"], 4]],
		[["Beehive", 3], [["Beehive", "Compensation"], 7]]
		],
		price : [
			300, 400, 500
		]
	},
	Brick :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		sprite : [
		[[sStarWalkerBrick1, 5], [sStarWalkerBrick2, 5]],
		[[sStarWalkerBrick3, 5], [sStarWalkerBrick4, 5]],
		[[sStarWalkerBrick5, 8], [sStarWalkerBrick6, 2]]
		],
		mass : [
		[[2.4, 8], [2.8, 2]],
		[[2.4, 9], [2.8, 1]],
		[[2, 2], [2.4, 8]]
		],
		airodynamics : [
		[[-0.1, 8], [-0.05, 2]],
		[[-0.1, 9], [-0.05, 1]],
		[[-0.025, 2], [-0.05, 8]]
		],
		max_hp : [
		[[6, 2], [7, 7], [8, 1]],
		[[6, 2], [7, 6], [8, 2]],
		[[7, 7], [8, 3]]
		],
		//a_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//b_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//c_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onmaxhp_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ondamage_effect_pool : [
		[["Beehive", 9], [["Beehive", "Compensation"], 1]],
		[["Beehive", 6], [["Beehive", "Compensation"], 4]],
		[["Beehive", 3], [["Beehive", "Compensation"], 7]]
		],
		price : [
			300, 400, 500
		]
	},
	Needle :
	{
		title :[
		"Common",
		"Uncommon",
		"Rare",
		],
		sprite : [
		[[sStarWalkerNeedle1, 5], [sStarWalkerNeedle2, 5]],
		[[sStarWalkerNeedle3, 5], [sStarWalkerNeedle4, 5]],
		[[sStarWalkerNeedle5, 8], [sStarWalkerNeedle6, 2]]
		],
		mass : [
		[[1.6, 8], [1.2, 2]],
		[[1.6, 9], [1.2, 1]],
		[[0.8, 2], [1.2, 8]]
		],
		airodynamics : [
		[[0.05, 8], [0.1, 2]],
		[[0.05, 9], [0.1, 1]],
		[[0.15, 2], [0.1, 8]]
		],
		max_hp : [
		[[2, 2], [3, 7], [4, 1]],
		[[2, 2], [3, 6], [4, 2]],
		[[3, 7], [4, 3]]
		],
		//a_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//b_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		//c_resistance : [
		//[[0, 2], [0.1, 7], [0.2, 1]],
		//[[0, 1], [0.1, 7], [0.2, 2]],
		//[[0, 2], [0.1, 5], [0.2, 3]],
		//],
		effects_amount : [
		[[0, 8], [1, 2]],
		[[0, 6], [1, 3], [2, 1]],
		[[0, 4], [1, 3], [2, 2], [3, 1]]
		],
		onmaxhp_effect_pool : [
		[["Sparks", 8], [["Sparks", "Arrowhead"], 2]],
		[["Sparks", 6], [["Sparks", "Arrowhead"], 4]],
		[["Sparks", 4], [["Sparks", "Arrowhead"], 6]]
		],
		ondamage_effect_pool : [
		[["Beehive", 9], [["Beehive", "Compensation"], 1]],
		[["Beehive", 6], [["Beehive", "Compensation"], 4]],
		[["Beehive", 3], [["Beehive", "Compensation"], 7]]
		],
		price : [
			300, 400, 500
		]
	}
}
	
return chances