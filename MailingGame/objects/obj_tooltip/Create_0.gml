/// @description Insert description here
// You can write your code in this editor

//struct vars
//complete = true;
//text = "Find the gnome";

depth += 20;

width = 194;
windowScale = global.window_scale;

x_flip = choose(-1, 1);
y_flip = choose(-1, 1);

x_pos = 240 - (width / 2);
y_pos = 256  + 50;

move_dir = 1;

completeness = 0;

tbox_dir = 0;

if instance_exists(obj_textbox) {
		
	tbox_dir = obj_textbox.dir * -80;
	
}


transition_time = 120;
move_step = transition_time;

//if instance_number(obj_tooltip) > 1 {
//	wait = true;	
//} else {
//	wait = false;	
//}

function complete() {
	move_dir = -1;
	
}

