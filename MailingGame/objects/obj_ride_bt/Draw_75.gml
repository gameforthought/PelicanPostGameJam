/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_sprite_ext(spr_ride_bt, 0, 1.5 * (x - vx), 1.5 * (y - vy), 1.5 * image_xscale, 1.5 * image_yscale, 0, c_white, 1)


