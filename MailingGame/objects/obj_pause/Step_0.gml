/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);


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


for (var i = 0; i < array_length(button_array); i++) {

	var _x = button_x;
	var _y = button_array[i].y_pos
	//115 30
	
	if point_in_rectangle(mouse_x, mouse_y, vx + (_x - (115/2)), _y - 15 + shift, vx + (_x + (115/2)), _y + 15 + shift) {
	button_array[i].rot = 3;
	button_array[i].text.origin(0, 15 - 5);
	if mouse_check_button_pressed(mb_left) {
		button_array[i].func();
	}
} else {
	button_array[i].rot = 0;
	button_array[i].text.origin(0, 15);
}
	
	
}



if shift_step > 60 {
	
	global.pause = false;
	instance_destroy();	
}
	