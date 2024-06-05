/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_alpha(0.75 - (0.025 * obj_time_tracker.night_progress));
draw_circle(camera_get_view_x(camera) + 240 + x - 7, 165 + y, 2 * size, false);
draw_set_alpha(1);
