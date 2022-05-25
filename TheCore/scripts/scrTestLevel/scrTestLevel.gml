var level = 
{
	difficulty :
	[
		// 0
		[
			//Random vertical spinners
			{
				Unpack : function(){Spawner(self);},				
				wave :
				{
					enemies : 
						{			
							title : oSmallBasicEnemy,
							mass : 1,
							top_speed : 1.5,
							acceleration : 0.2,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 6,
					intervals : 40,
					patterns : pStraight,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, wave.patterns);				
							path_shift(info.___path, 10 + (irandom_range(1,40) * 6), -20);
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 6,
				_delete_chance : Chances([[2,0],[8,1]]),
				_message : "Random vertical smallies",			
			},
			//Vertical spinners
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oSmallBasicEnemy,
							mass : 1,
							top_speed : 1.5,
							acceleration : 0.2,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 6,
					intervals : 10,
					patterns : pStraight,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						var _path = path_duplicate(wave.patterns);
						path_shift(_path, 10 + (irandom_range(1,40) * 6), 0);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, _path);				

							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 6,
				_delete_chance : Chances([[4,0],[6,1]]),
				_message : "Vertical smallies",	
			},
			//U-turn spinners
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oSmallBasicEnemy,
							mass : 1,
							top_speed : 1.5,
							acceleration : 0.2,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "top",
						}
					,
					amount : 6,
					intervals : 10,
					patterns : pUTurn,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						var _path = path_duplicate(wave.patterns);
						if(irandom(1) > 0) path_mirror(_path);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, _path);				

							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 6,
				_delete_chance : Chances([[5,0],[5,1]]),
				_message : "U-Turn smallies",	
			},
			//Zigzag spinners
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oSmallBasicEnemy,
							mass : 1,
							top_speed : 1.5,
							acceleration : 1,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 12,
					intervals : 10,
					patterns : pZigZag,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						var _path = path_duplicate(wave.patterns);
						if(irandom(1) > 0) path_mirror(_path);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, _path);				

							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 840,
				wave_count : 12,
				_delete_chance : Chances([[5,0],[5,1]]),
				_message : "Zigzag spinners",	
			},
			//U-turn spinners
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oSmallBasicEnemy,
							mass : 1,
							top_speed : 1.5,
							acceleration : 0.2,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 6,
					intervals : 10,
					patterns : pSTurn,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						var _path = path_duplicate(wave.patterns);
						if(irandom(1) > 0) path_mirror(_path);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, _path);				

							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 6,
				_delete_chance : Chances([[5,0],[5,1]]),
				_message : "S-Turn smallies",		
			},
			//Random vertical mediums
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oMediumBasicEnemy,
							mass : 3,
							top_speed : 1,
							acceleration : 0.15,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 4,
					intervals : 60,
					patterns : pStraight,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, wave.patterns);				
							path_shift(info.___path, 10 + (irandom_range(1,40) * 6), -20);
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 4,
				_delete_chance : Chances([[2,0],[8,1]]),
				_message : "Random vertical mediums",			
			},
			//Random tight U-turn mediums
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oMediumBasicEnemy,
							mass : 3,
							top_speed : 1,
							acceleration : 0.15,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "top",
						}
					,
					amount : 4,
					intervals : 60,
					patterns : pUTurnTight,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies, wave.patterns);				
							path_shift(info.___path, 20 + (irandom_range(1,38) * 6), -20);
							if(path_get_point_x(info.___path, 0) < 100) path_mirror(info.___path);
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						}
					}
				},
				wave_length : 600,
				wave_count : 4,
				_delete_chance : Chances([[4,0],[6,1]]),
				_message : "Random tight U-turn mediums",			
			},
			//Pair of bigbois
			{
				Unpack : function(){Spawner(self);},
				wave :
				{
					enemies : 
						{			
							title : oBigBasicEnemy,
							mass : 12,
							top_speed : 0.5,
							acceleration : 0.05,
							_speed : 0,
							ease_in : 0.05,
							ancor : true,
							absolute : true,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 2,
					intervals : 120,
					patterns : pStraight,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						function Info (_enemy, __path) constructor
						{
							enemy = _enemy;
							___path = path_duplicate(__path);
							_event = function()
							{
								EnemyInit(enemy, ___path);
							}
						};

						var info = new Info (wave.enemies, wave.patterns);				
						path_shift(info.___path, 190, -20);
						array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
						array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
						
						var info = new Info (wave.enemies, wave.patterns);				
						path_shift(info.___path, 40, -20);
						array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));

					}
				},
				wave_length : 600,
				wave_count : 2,
				_delete_chance : Chances([[2,0],[8,1]]),
				_message : "Pair of bigbois",			
			},
			//Random turrets
			{
				Unpack : function(){Spawner(self);},				
				wave :
				{
					enemies : 
						{			
							title : oTurretBasicEnemy,
							mass : 10000,
							top_speed : 0,
							acceleration : 0,
							_speed : 0,
							ease_in : 0.05,
							ancor : false,
							absolute : false,
							end_action : path_action_stop,
							oob : "bottom",
						}
					,
					amount : 10,
					intervals : 120,
					patterns : false,
					cyclic : false,
					Generate : function(wave)
					{
						var spawner = SpawnerInit(wave, oCamera);
						function Info (_enemy) constructor
						{
							enemy = _enemy;
							_event = function()
							{
								EnemyInit(enemy, [10 + (irandom_range(1,44) * 6), -20]);
							}
						};
						for(var o = 0; o < wave.amount; o++)
						{
							var info = new Info (wave.enemies);				
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
							array_push(spawner.spawn_sequence._s, new Event(function()
							{
								var camera = GetCamera(oCamera);
								with(instance_create_layer(
									camera._xx + 122, 
									camera._yy -20, 
									"Obstacles_1", 
									oBridge))
									{if (irandom(1) > 0) image_angle = 180}
							}
							,1,0));
							array_push(spawner.spawn_sequence._s, 
								new Timer(wave.intervals + (irandom_range(-1, 1) * 20)));
						}
					}
				},
				wave_length : 1200,
				wave_count : 10,
				_delete_chance : Chances([[4,0],[6,1]]),
				_message : "Random turrets",			
			},
			//Arrow formation bigbois and smallies
			{
				Unpack : function(){Spawner(self);},
				wave :
				[
					{
						enemies : 
							{			
								title : oBigBasicEnemy,
								mass : 12,
								top_speed : 0.5,
								acceleration : 0.1,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 1,
						intervals : 0,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};

							var info = new Info (wave.enemies, wave.patterns);				
							path_shift(info.___path, 121, -20);
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));

						}
					},
					{
						Unpack : function(){Spawner(self);},
						enemies : 
							{			
								title : oSmallBasicEnemy,
								mass : 1,
								top_speed : 0.5,
								acceleration : 0.5,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 3,
						intervals : 20,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};
							for(var o = 0; o < wave.amount; o++)
							{
								var info = new Info (wave.enemies, wave.patterns);				
								path_shift(info.___path, 111 - (o * 20), -20);
								if(path_get_point_x(info.___path, 0) < 100) path_mirror(info.___path);
								array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
								array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
							}
						}
					},
					{
						Unpack : function(){Spawner(self);},
						enemies : 
							{			
								title : oSmallBasicEnemy,
								mass : 1,
								top_speed : 0.5,
								acceleration : 0.5,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 3,
						intervals : 20,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};
							for(var o = 0; o < wave.amount; o++)
							{
								info = new Info (wave.enemies, wave.patterns);				
								path_shift(info.___path, 131 + (o * 20), -20);
								if(path_get_point_x(info.___path, 0) < 100) path_mirror(info.___path);
								array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
								array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
							}
						}
					},
				],
				wave_length : 600,
				wave_count : 7,
				_delete_chance : Chances([[2,0],[8,1]]),
				_message : "Arrow formation bigbois and smallies",			
			},
		],
		// 1
		[
			//Sample wave
			{
				Unpack : function(){Spawner(self);},
				wave :
				[
					{
						enemies : 
							{			
								title : oBigBasicEnemy,
								mass : 12,
								top_speed : 0.5,
								acceleration : 0.1,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 1,
						intervals : 0,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};

							var info = new Info (wave.enemies, wave.patterns);				
							path_shift(info.___path, 121, -20);
							array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));

						}
					},
					{
						Unpack : function(){Spawner(self);},
						enemies : 
							{			
								title : oSmallBasicEnemy,
								mass : 1,
								top_speed : 0.5,
								acceleration : 0.5,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 3,
						intervals : 20,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};
							for(var o = 0; o < wave.amount; o++)
							{
								var info = new Info (wave.enemies, wave.patterns);				
								path_shift(info.___path, 111 - (o * 20), -20);
								if(path_get_point_x(info.___path, 0) < 100) path_mirror(info.___path);
								array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
								array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
							}
						}
					},
					{
						Unpack : function(){Spawner(self);},
						enemies : 
							{			
								title : oSmallBasicEnemy,
								mass : 1,
								top_speed : 0.5,
								acceleration : 0.5,
								_speed : 0,
								ease_in : 0.05,
								ancor : true,
								absolute : true,
								end_action : path_action_stop,
								oob : "bottom",
							}
						,
						amount : 3,
						intervals : 20,
						patterns : pStraight,
						cyclic : false,
						Generate : function(wave)
						{
							var spawner = SpawnerInit(wave, oCamera);
							function Info (_enemy, __path) constructor
							{
								enemy = _enemy;
								___path = path_duplicate(__path);
								_event = function()
								{
									EnemyInit(enemy, ___path);
								}
							};
							for(var o = 0; o < wave.amount; o++)
							{
								info = new Info (wave.enemies, wave.patterns);				
								path_shift(info.___path, 131 + (o * 20), -20);
								if(path_get_point_x(info.___path, 0) < 100) path_mirror(info.___path);
								array_push(spawner.spawn_sequence._s, new Event(info._event ,1,0));
								array_push(spawner.spawn_sequence._s, new Timer(wave.intervals));
							}
						}
					},
				],
				wave_length : 600,
				wave_count : 7,
				_delete_chance : Chances([[2,0],[8,1]]),
				_message : "Arrow formation bigbois and smallies",			
			},
		]
	]
}
	
return level