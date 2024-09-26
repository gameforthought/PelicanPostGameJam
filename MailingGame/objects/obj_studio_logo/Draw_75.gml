/// @description Insert description here
// You can write your code in this editor
draw_clear_alpha(c_black, 1);

// TEMP FIX: window scale breaks upon game_restart() from video room
windowScale = 2;

draw_sprite_ext(spr_studio_logo, 0, 0, 0, windowScale, windowScale, 0, c_white, logo_alpha);