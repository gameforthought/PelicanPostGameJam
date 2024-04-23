/// @description Insert description here
// You can write your code in this editor
global.pause = 1;

if !variable_instance_exists(id, "grow") {
	grow = true;
}
if !variable_instance_exists(id, "next_room") {
	next_room = -1;
}


if player = false {
	circle_x = 240;
	circle_y = 128;
} else {
	circle_x = obj_playerChar.x - camera_get_view_x(view_camera[0]);
	circle_y = obj_playerChar.y - 50;
}

if grow = true {
	radius = 0;
	grow_amount = 2;
} else {
	radius = 240;
	grow_amount = -2;
}
windowScale = global.window_scale;
