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

if grow = true && radius >= 80 {
	if global.intro = false || room != demo_room {
	obj_playerChar.pepper_state = PlayerState.FreeMove;
	global.pause = 0;
	}
}

if grow = true && radius >= 240 {
	instance_destroy();	
}
if grow = false && radius <= 0 {
	
	if grow_amount != 0 {
		alarm[0] = 8;
		grow_amount = 0;
	}
	
	
}

