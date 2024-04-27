/// @description Insert description here
// You can write your code in this editor

if point_in_rectangle(mouse_x, mouse_y, x - 57, y - 15, x + 57, y + 15) {
	rotate = 3;
	label.origin(0, 15 - 5);
} else {
	rotate = 0;
	label.origin(0, 15);
}

x = x_init + camera_get_view_x(view_camera[0]);