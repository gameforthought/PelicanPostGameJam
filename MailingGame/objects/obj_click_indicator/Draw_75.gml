/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_sprite_ext(spr_click, 0, windowScale * (x - vx), windowScale * (y - vy), windowScale * scale, windowScale * scale, rotation, c_white, 1);


