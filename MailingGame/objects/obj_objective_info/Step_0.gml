/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var _obj_hover = false;


if instance_exists(obj_clock) {
obj_clock.clock_vis = false;
}

if shift_dir = -1 && shift_step = 0 {
	shift_dir = 0;	
}

shift_step += shift_dir;

shift_step = clamp(shift_step, 0, 70);


shift = EaseInOutBack(shift_step, 0, 300, 60);



if shift_step > 60 {
	
	instance_destroy();	
}

//button hover and close
if point_in_rectangle(mouse_x, mouse_y, vx + (close_x - 15), close_y + shift - 30, vx + (close_x + 15), close_y + shift) {
	close_rot = -5;
	if mouse_check_button_pressed(mb_left) {
		shift_dir = 1;
	}
} else {
	close_rot = 0;
}


// check if objective hover
for (var i = 0; i < array_length(obj_objective_manager.array); i++) {

	
	if point_in_rectangle(mouse_x, mouse_y,  vx + (9 + 27), ((256 - 160) + (i * 24) + shift), 
	vx + (9 + 218 - 27), ((256 - 160 + 24) + (i * 24) + shift)) {
		
		desc_text = obj_objective_manager.array[i].text;
		_obj_hover = true;
		
	}
	
	//var _label = scribble(obj_objective_manager.array[i].text);
	
	
}

if _obj_hover = false {
	desc_text = "";
}
	