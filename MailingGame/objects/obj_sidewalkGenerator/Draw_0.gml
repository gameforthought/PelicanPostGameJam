/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < (room_width / 64); i += 1) {
	draw_sprite(spr_sidewalk, 0, x + (64 * i), y);
	draw_sprite(spr_sidewalk, pattern_array[i - 12 * (i div 12)], x + (64 * i), y);
	
	//show_debug_message(string(i - 12 * (i div 12)))
}


