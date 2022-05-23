var level = 
{
	difficulty :
	[
		// 0
		[
			//Random vertical spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pStraight);
					path_shift(_path, irandom_range(20, 170), 0);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 8,
				interval : 30,
				_message : "Random vertical spinners",
				number_of_enemies : 8,
				path_length : 380,
			},
			// Right U-shape spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pBoomerang);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top");
					
					show_debug_message(_message);
				},
				quantity : 5,
				interval : 15,
				_message : "Right U-shape spinners",
				number_of_enemies : 5,
				path_length : 350,
			},
			// Left U-shape spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pBoomerang);
					path_mirror(_path);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top");
					
					show_debug_message(_message);
				},
				quantity : 5,
				interval : 15,
				_message : "Left U-shape spinners",
				number_of_enemies : 5,
				path_length : 350,
			},	
			// Left S-shape spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pSShape);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 5,
				interval : 15,
				_message : "Left S-shape spinners",
				number_of_enemies : 5,
				path_length : 290,
			},	
			// Right S-shape spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pSShape);
					path_mirror(_path);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 5,
				interval : 15,
				_message : "Left S-shape spinners",
				number_of_enemies : 5,
				path_length : 290,
			},
			// Random vertical hitnrun
			{
				wave : function()
				{
					var _path = path_duplicate(pStraight);
					var _x = irandom_range(5, 15) * 10;
					if(_x > 100) path_mirror(_path);
					path_shift(_path, _x, 0);
					Spawner(
						oMediumBasicEnemy, 
						_path, 
						3, 
						1, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 3,
				interval : 60,
				_message : "Random vertical hitnrun",
				number_of_enemies : 3,
				path_length : 320,
			},
			// Random tight-UShape hitnrun
			{
				wave : function()
				{
					var _path = path_duplicate(pBoomerangTight);
					var _x = irandom_range(5, 15) * 10;
					path_shift(_path, _x, 0);
					Spawner(
						oMediumBasicEnemy, 
						_path, 
						3, 
						1, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top");
					
					show_debug_message(_message);
				},
				quantity : 3,
				interval : 60,
				_message : "Random tight-UShape hitnrun",
				number_of_enemies : 3,
				path_length : 400,
			},
			//Random vertical\tight-UShape hitnrun
			{
				wave : function()
				{
					var d2 = irandom(1);
					var _path = d2 > 0 ? path_duplicate(pBoomerangTight)
					: path_duplicate(pStraight);
					var oob = d2 > 0 ? "top" : "bottom";
		
					var _x = irandom_range(5, 15) * 10;
					if(d2 > 0) if(_x > 100) path_mirror(_path);
					path_shift(_path, _x, 0);
					Spawner(
						oMediumBasicEnemy, 
						_path, 
						3, 
						1.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						oob);
					
					show_debug_message(_message);
				},
				quantity : 6,
				interval : 60,
				_message : "Random vertical/tight-UShape hitnrun",
				number_of_enemies : 6,
				path_length : 450,
			},
			//Both sides tight U-spahe hitnrun
			{
				wave : function()
				{
					var _path = path_duplicate(pBoomerangTight);
					path_shift(_path, 220, 0);
					Spawner(
						oMediumBasicEnemy, 
						_path, 
						3, 
						1, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top")
					
					
					_path = path_duplicate(pBoomerangTight);
					path_shift(_path, 60, 0);
					path_mirror(_path);
					Spawner(
						oMediumBasicEnemy, 
						_path, 
						3, 
						1, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top");
					
					show_debug_message(_message);
				},
				quantity : 3,
				interval : 120,
				_message : "Both sides vertical hitnrun",
				number_of_enemies : 6,
				path_length : 400,
			},
			// Three vertical bigbois
			{
				wave : function()
				{
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						var _x = (irandom(2) + 2) * 40;
						var counter = -1;
						repeat(3)
						{
							with(instance_create_layer(
								camera._xx + _x + (30 * counter),
								camera._yy + -30,
								"Instances",
								oBigBasicEnemy))
							{
								_direction = 0
								mass = 12;
								top_speed = 0.5;
								_acceleration = 0.2;
								_speed = 1;
								_ease_in = 0.05;
							}
							
							counter++;
						}
						show_debug_message(_message);
					}
				},
				quantity : 1,
				interval : 0,
				_message : "Three vertical bigbois",
				number_of_enemies : 3,
				path_length : 520,
			},
			//Random vertical diamonds
			{
				wave : function()
				{
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						with(instance_create_layer(
							camera._xx,
							camera._yy,
							"Instances",
							oSimpleSpawner
						)){
							speed = irandom_range(0,1) * 0.5; 
							direction = 270;
							spawn_sequence = new Sequence([
								new Timer(irandom_range(2,4) * 30),
								new Event(function()
								{
									if(!!instance_exists(oCamera))
									{
										var camera = GetCamera(oCamera);
										instance_create_layer(
											camera._xx + 50 + (irandom_range(0, 3) + 1) * 25,
											camera._yy + -5,
											"Instances",
											oDiamond)
									}
								}, 1, 0)
							], true)
						}
					};
					show_debug_message(_message);
				},
				quantity : 1,
				interval : 0,
				_message : "Random vertical diamonds",
				number_of_enemies : 0,
				path_length : 0,
			},
		],
		//1
		[
			//Left zigzag spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pZigZag);
					path_shift(_path, 30, -20);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.5, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 8,
				interval : 15,
				_message : "Left zigzag spinners",
				number_of_enemies : 8,
				path_length : 720,
			},
			// Right zigzag spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pZigZag);
					path_mirror(_path);
					path_shift(_path, 30, -20);
					Spawner(
						oSmallBasicEnemy, 
						_path, 
						1, 
						1.5, 
						0.5, 
						1, 
						0.05,
						true,
						path_action_stop);
					
					show_debug_message(_message);
				},
				quantity : 8,
				interval : 15,
				_message : "Right zigzag spinners",
				number_of_enemies : 8,
				path_length : 720,
			},
			// Stalagmits left-right and spinners
			{
				wave : function()
				{
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						for(var i = 0; i < 3; i++)
						{
							var _xx = 0
							if(i % 2 != 0) _xx = 270;
							var _yy = i * 110;
							with(instance_create_layer(
								camera._xx + _xx,
								camera._yy - (20 + _yy),
								"Obstacles_1",
								oStalagmit
							))
							{
								sprite_index = asset_get_index("sObstacleTestLevelHor" + string(irandom_range(1,3)));
								if(i % 2 == 1) image_angle = 180;
							}

							var _path = path_duplicate(pWobbleSentry);
							if(i % 2 == 0) _xx = 200;
							else _xx = 20;
							path_shift(_path, _xx, -(10 + _yy));
							Spawner(
								oSmallBasicEnemy, 
								_path, 
								1, 
								1.5, 
								0.2, 
								1, 
								0.05, 
								false,
								path_action_reverse);
							
						}
					};
					show_debug_message(_message);
				},
				quantity : 1,
				interval : 0,
				_message : "Stalagmits",
				number_of_enemies : 3,
				path_length : 900,
				
			},
			//Stalagmit tonnel with hitnruns
			{
				wave : function()
				{
					if(!instance_exists(oCamera)) {return}
					var camera = GetCamera(oCamera);
					var center = instance_create_layer(
						camera._xx + 100,
						camera._yy - 20,
						"Instances",
						oSimpleSpawner
					)
					var enemies_amount = 10;
					
					with(center)
					{
						_enemies_amount = enemies_amount;
						speed = -0.25; 
						direction = 270;
						spawn_sequence = new Sequence([
							new Event(function()
							{
								if(!instance_exists(oCamera)) {return}
								var camera = GetCamera(oCamera);
								var _x_gap = abs(100 - (other.y - camera._yy));
								other.speed = max(-(0.25 + ((100 - _x_gap) * 0.0025)), -0.49);
								with(instance_create_layer(
									other.x - (220 + _x_gap),
									camera._yy - 20,
									"Obstacles_1",
									oStalagmit
								))
								{
									sprite_index = asset_get_index("sObstacleTestLevelHor" + string(irandom_range(1,3)));
								}
								with(instance_create_layer(
									other.x + (220 + _x_gap),
									camera._yy - 20,
									"Obstacles_1",
									oStalagmit
								))
								{
									sprite_index = asset_get_index("sObstacleTestLevelHor" + string(irandom_range(1,3)));
									image_angle = 180;
								}
								var chances = Chances([[10, 216 - camera._xx + other.x],[-10, camera._xx + other.x]]);
								other.x += chances;
								if(other.x > camera._xx + 150) other.x -= 40;
								if(other.x < camera._xx + 50) other.x += 40;
								
								if(Chances([[0, 7],[1, 3]]) == 1)
								{
									if(_enemies_amount > 0)
									{
									var _path = path_duplicate(pWobbleSentry);
									path_shift(_path, other.x - 50, -20);
									Spawner(
										oSmallBasicEnemy, 
										_path, 
										1, 
										1.5, 
										0.2, 
										1, 
										0.05, 
										false,
										path_action_reverse);
										_enemies_amount--;
									}
								}
							}, 
							100, 80)
						], true)
					}
				},
				quantity : 1,
				interval : 0,
				_message : "Stalagmits tonnel",
				number_of_enemies : 10,
				path_length : 3500,
			},
			//Left horizontal hitnrun
			{
				wave : function()
				{
					if(!!instance_exists(oPlayerBox))
					{
						var _path = path_duplicate(pStraightHorizontal);
						if(!!instance_exists(oCamera))
						{
							var camera = GetCamera(oCamera);
							path_shift(_path, -15, oPlayerBox.y - camera._yy)
							Spawner(
								oMediumBasicEnemy, 
								_path, 
								3, 
								1, 
								0.2, 
								1, 
								0.05,
								true,
								path_action_stop);
							
						}
					}
					show_debug_message(_message);
				},
				quantity : 6,
				interval : 120,
				_message : "Left horizontal hitnrun",
				number_of_enemies : 6,
				path_length : 400,
			},
			// Right horizontal hitnrun
			{
				wave : function()
				{
					if(!!instance_exists(oPlayerBox))
					{
						var _path = path_duplicate(pStraightHorizontal);
						path_mirror(_path);
						if(!!instance_exists(oCamera))
						{
							var camera = GetCamera(oCamera);
							path_shift(_path, -100, oPlayerBox.y - camera._yy);							
							Spawner(
								oMediumBasicEnemy, 
								_path, 
								3, 
								1, 
								0.2, 
								1, 
								0.05,
								true,
								path_action_stop);
							
						}
					}
					show_debug_message(_message);
				},
				quantity : 6,
				interval : 120,
				_message : "Right horizontal hitnrun",
				number_of_enemies : 6,
				path_length : 400,
			},
			// Random U-shape bigbois + 3 vertical spinners
			{
				wave : function()
				{
					var _path = path_duplicate(pBoomerang);		
					var _x = irandom(1);
					var counter = 0;
					if(_x == 0) 
					{
						path_mirror(_path);
					}
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						with(instance_create_layer(
							camera._xx,
							camera._yy,
							"Instances",
							oSimpleSpawner
						))
						{
							speed = 0.5; 
							direction = 270;
							spawn_sequence = new Sequence([
								new	Timer(120),
								new Event(function()
								{
									var _path2 = path_duplicate(pStraight);
									path_shift(_path2, 
										50 + (irandom_range(0, 3) + 1) * 25,
										0);
									Spawner(
										oSmallBasicEnemy, 
										_path2, 
										1, 
										1.5, 
										0.2, 
										1, 
										0.05,
										true,
										path_action_stop)
									
								}, 1, 0),
							], true)
						}
					};
		
					Spawner(
						oBigBasicEnemy, 
						_path, 
						12, 
						0.5, 
						0.2, 
						1, 
						0.05,
						true,
						path_action_stop,
						"top");
					
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						instance_create_layer(
							camera._xx + 50 + (irandom_range(0, 3) + 1) * 25,
							camera._yy + -5,
							"Instances",
							oDiamond
						)
					};
					show_debug_message(_message);
				},
				quantity : 3,
				interval : 180,
				_message : "Random U-shape bigbois + 3 vertical spinners",
				number_of_enemies : 6,
				path_length : 1230,
			},
			// Hitnrun both sides + vertical spinners
			{
				wave : function()
				{
					//POSSIBLE WAY TO REFACTOR WAVES CODE
					var _objects = [oSmallBasicEnemy, oMediumBasicEnemy, oMediumBasicEnemy]
					var _mass = [1, 3, 3];
					var _top_speed = [1.5, 1, 1];
					var _delay = [120, 60, 120];
					var amount_and_repeat = [[1,0],[4,180],[4,180]]
					var _x_shift = [
						{ coords : function(){return 50 + (irandom_range(0, 3) + 1) * 25}},
						{ coords : function(){return 20}}, 
						{ coords : function(){return 200}} 
						]
					var _path = pStraight;
					
					function NewWave(___path, __objects, __mass, __top_speed) constructor
					{
						p = ___path;
						o = __objects;
						m = __mass;
						ts = __top_speed;
						show_debug_message(path_get_x(p, 0));	
						wave = function()
						{
						var _p = path_duplicate(p);
						Spawner(
							o, 
							_p, 
							m, 
							ts, 
							0.2, 
							1, 
							0.05,
							true,
							path_action_stop)
						}

					};
					
					if(!!instance_exists(oCamera))
					{
						var camera = GetCamera(oCamera);
						for(var i = 0; i < 3; i++)
						{
							var __path = path_duplicate(_path);
							path_shift(__path, _x_shift[i].coords(), 0);
							
							var nw = new NewWave(
								__path, 
								_objects[i], 
								_mass[i], 
								_top_speed[i]);

							with(instance_create_layer(
								camera._xx,
								camera._yy,
								"Instances",
								oSimpleSpawner
							))
							{
								speed = -0.25; 
								direction = 270;
								spawn_sequence = new Sequence([
									new Timer(_delay[i]),
									new Event(nw.wave, 
									amount_and_repeat[i][0], 
									amount_and_repeat[i][1])
								], true)
							}
						}
					}

					show_debug_message(_message);
				},
				quantity : 1,
				interval : 0,
				_message : "Hitnrun both sides + vertical spinners",
				number_of_enemies : 15,
				path_length : 880,
			},
		]
	]
}
	
return level