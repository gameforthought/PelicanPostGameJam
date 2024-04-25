/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(lerp(0.4, 0, shift / 256));
draw_rectangle(0, 0, windowScale * 550, windowScale * 256, false);
draw_set_alpha(1);

draw_rectangle((344 + shift) * windowScale, 0, (550 + shift)  * windowScale, 300  * windowScale, false);

draw_sprite_ext(spr_title, 0, (218 + shift) * windowScale, 9 * windowScale, windowScale, windowScale, 0, c_white, 1);