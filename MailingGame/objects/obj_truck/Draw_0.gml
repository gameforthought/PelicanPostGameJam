/// @description animations and stuff
// You can write your code in this editor

draw_self();

//draw wheels
draw_sprite_ext(spr_wheel, 0, x + 53, y - 15, 1, 1, wheel_rotate, c_white, 1);
draw_sprite_ext(spr_wheel, 0, x - 53, y - 15, 1, 1, wheel_rotate, c_white, 1);

