gloss_sequence.Evaluate();

if(horizontal_acc < 0) horizontal_acc += 0.1;
if(horizontal_acc > 0) horizontal_acc -= 0.1;

if(vertical_acc < 1) vertical_acc += 0.1;

image_speed = 1 * ((horizontal_acc + 1) * 0.3);

x += horizontal_acc;
y += vertical_acc;