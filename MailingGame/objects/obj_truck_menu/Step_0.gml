/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);



for (var i = 0; i < length; i++) {
	var _x = x + (i * 33);
	var _y = y - 12;
	
	if point_in_rectangle(mouse_x, mouse_y, (_x - 15), (_y - 30), 
	(_x + 15), (_y)) {
		button_array[i].rot = -5;
		
		if mouse_check_button_pressed(mb_left) {
			button_array[i].func();
			instance_destroy();
		}
		
	}
	else {
		button_array[i].rot = 0;
	}
	
	
}

if obj_menu_manager.hudAppear = 0 {
			instance_destroy();
		}

if mouse_check_button_pressed(mb_left) {
		if position_meeting(mouse_x, mouse_y, obj_truck) {
			x = mouse_x;
			y = mouse_y;
		} else {
			instance_destroy();	
		}
	}