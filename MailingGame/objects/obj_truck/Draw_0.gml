/// @description animations and stuff
// You can write your code in this editor

if instance_exists(obj_playerChar) {} else {
draw_sprite_ext(spr_truckChar, blink, x, y, image_xscale, 1 - (0.01 * cos(0.1 * char_anim)), 0, c_white, 1);
}

draw_self();

//draw wheels
draw_sprite_ext(spr_wheel, 0, x + 53, y - 13, 1, 1, wheel_rotate, c_white, 1);
draw_sprite_ext(spr_wheel, 0, x - 53, y - 13, 1, 1, wheel_rotate, c_white, 1);

