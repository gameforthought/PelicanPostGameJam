/// @description Insert description here
// You can write your code in this editor
var _surf = -1;
if !surface_exists(_surf) {
	_surf = surface_create(480, room_height);
}

surface_set_target(_surf);
draw_clear_alpha(c_black, 1);
gpu_set_blendmode(bm_subtract);
draw_circle(circle_x, circle_y, radius * windowScale, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface_ext(_surf, 0, 0, windowScale, windowScale, 0, c_white, 1);

surface_free(_surf);

if grow = true && radius > 240 {
	show_debug_message("bingo")
	instance_destroy();	
}
if grow = false && radius < 0 {
	if next_room != -1 {
		room_goto(next_room);	
	}
	instance_destroy();	
}