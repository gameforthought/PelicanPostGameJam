/// @description Insert description here
// You can write your code in this editor

x += 1.8;

y += 0.001 + 1.5 * sin(0.2 * pi * sin_step);

sin_step += 0.005;


if x > (camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0)) + 100) {
	instance_destroy();	
}



