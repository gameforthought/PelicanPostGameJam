/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_clock) {
obj_clock.clock_vis = false;
}

if shift_dir = -1 && shift_step = 0 {
	shift_dir = 0;	
}

shift_step += shift_dir;

shift_step = clamp(shift_step, 0, 70);

if shift_step >= 60 {
	visible = false;
} else {
	visible = true;
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
	
	global.pause = false;
	instance_destroy();	
}
	