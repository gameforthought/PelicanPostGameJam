/// @description Insert description here
// You can write your code in this editor

x += leaf_speed;

y += 0.001 + 1.5 * sin(0.2 * pi * sin_step);

sin_step += 0.005;


if y > (camera_get_view_height(view_get_camera(0)) + 100) {
	instance_destroy();	
}



