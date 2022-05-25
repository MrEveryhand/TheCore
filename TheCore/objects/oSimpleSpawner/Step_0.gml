if(spawn_sequence.state == "end") {instance_destroy(self);}
spawn_sequence.Evaluate();
timer++;
if(counter <= 0) spawn_sequence.state = "end"