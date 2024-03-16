/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < ((room_width + 320) / 64); i += 1) {
	if (x + (64 * i) > obj_cameraManager.camera_target - 480) && (x + (64 * i) < obj_cameraManager.camera_target + 480) {
		draw_sprite(spr_sidewalk, 0, x + (64 * i), y);
		draw_sprite(spr_sidewalk, pattern_array[i - 12 * (i div 12)], x + (64 * i), y);
	}
	
	//show_debug_message(string(i - 12 * (i div 12)))
}

for (var i = 0; i < ((room_width + 320) / 1200); i += 1) {
	draw_sprite(spr_sewergrate, 0, x + (1200 * i), y);
}


