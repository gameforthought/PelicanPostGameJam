/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);

// hud appear control
if (obj_menu_manager.hudAppear > 10) {
	shift_dir = -1;
} else {
	shift_dir = 1;
}



if shift_dir = -1 && shift_step = 0 {
	shift_dir = 0;	
}

shift_step += shift_dir;

shift_step = clamp(shift_step, 0, 50);


shift = EaseInOutBack(shift_step, 0, 60, 40);



if shift_step > 60 {
	
	visible = false;
} else {
	visible = true;
}


//button hover and click
for (var i = 0; i < array_length(button_array); i++) {

	var _x = 480 - 30 - i * 42;
	var _y = 256 - 6 + shift;


	if point_in_rectangle(mouse_x, mouse_y, vx + (_x - 15), _y - 30 + shift, vx + (_x + 15), _y + shift) {
		button_array[i].rot = -5;
		if mouse_check_button_pressed(mb_left) {
			button_array[i].func();
		}
	} else {
		button_array[i].rot = 0;
	}

}