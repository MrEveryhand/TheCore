time = 2400;
types = ["aliens"];
suspicions = 0;
menace = 0;
difficulty = 0;
intervals = 60;
pool = [];
current_pool = [];
spawn_sequence = new Sequence([], false);
wave_is_on = -1;
previuos_wave = -1;
wave_counter = 0;
timer = 0;
config = Config_loader(scrTestLevel());
array_copy(
	current_pool,
	0,
	config.difficulty,
	0,
	array_length(config.difficulty)
	)
	
enemies_created = 0;
enemies_destroyed = 0;
enemies_touched = 0;
enemies_passed = 0;

//spawn_sequence = LevelBuilder(scrTestLevel(), time, difficulty);
spawn_sequence = LevelBuilder(self);