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

if shift_step >= 60 {
	visible = false;
} else {
	visible = true;
}

if shift_step > 60 {
	
	instance_destroy();	
}

for (var i = 0; i < array_length(button_array); i++) {
	var xx = vx + 80 + (i mod 3) * 38;
	var yy = (104 + (i div 3) * 38) + shift;
	
	if point_in_rectangle(mouse_x, mouse_y, xx - 17.5, yy - 35, xx + 17.5, yy) {
	button_array[i].rot = -5;
	if mouse_check_button_pressed(mb_left) {
		current_clicked = button_array[i];
		
		var _color = color_lookup(current_clicked.name);
	
		name = scribble(current_clicked.name);
		name.starting_format("ft_gui", _color);
		name.wrap(197 * windowScale);
		name.align(fa_left, fa_top);
	
		job = scribble(current_clicked.job);
		job.starting_format("ft_gui", c_black);
		job.wrap(197 * windowScale);
		job.align(fa_left, fa_top);
	
		location = scribble(current_clicked.location);
		location.starting_format("ft_gui", c_black);
		location.wrap(197 * windowScale);
		location.align(fa_left, fa_top);
		location.line_height(-1, string_height(current_clicked.location) - 3);
		//shift_dir = 1;
	}
} else {
	button_array[i].rot = 0;
}

	
}


//button hover and close
if point_in_rectangle(mouse_x, mouse_y, vx + (close_x - 15), close_y + shift - 30, vx + (close_x + 15), close_y + shift) {
	close_rot = -5;
	if mouse_check_button_pressed(mb_left) {
		obj_menu_manager.close_menu();
		//shift_dir = 1;
	}
} else {
	close_rot = 0;
}