/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(lerp(0.4, 0, shift / 256));
draw_rectangle(0, 0, windowScale * 550, windowScale * 256, false);
draw_set_alpha(1);

//draw_rectangle((344 + shift) * windowScale, 0, (550 + shift)  * windowScale, 300  * windowScale, false);

for (var i = 0; i < array_length(decoration); i++) {
//var i = 0;

	draw_sprite_ext(spr_titleletters, decoration[i].subimage, 
	(decoration[i].x_pos + shift * decoration[i].h) * windowScale,
	(decoration[i].y_pos + shift * decoration[i].v) * windowScale, 
	windowScale, windowScale, decoration[i].rot, c_white, 1);
		
}

draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, -30 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1);
draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, 256 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1)

draw_sprite_ext(spr_title, 0, (218 + shift) * windowScale, 9 * windowScale, windowScale, windowScale, 0, c_white, 1);