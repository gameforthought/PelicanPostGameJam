/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_clock) {
obj_clock.clock_vis = false;
}

if start_shift = 1 {
	shift_step += 1;
} else {
	global.pause = 1;
}

shift = EaseInOutBack(shift_step, 0, 300, 60);

start_button.xmod = shift;
//options_button.xmod = shift;
close_button.xmod = shift;

if shift_step > 60 {
	//global.pause = 1;
	instance_destroy(start_button);
	//instance_destroy(options_button);
	instance_destroy(close_button);
	instance_destroy();	
}
	