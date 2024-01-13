/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(spr_playerLegs_walk, 0, x, y, image_xscale, 1, 0, c_white, 1);

draw_self();

draw_sprite_ext(spr_playerBody, blink, x, y, image_xscale, 1 - (0.02 * cos(0.1 * char_anim)), hspd * -2, c_white, 1);


