/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(spr_train, 1, x, y, 1, 1, 0, c_white, 1);


draw_sprite_ext(spr_train_wheel, 0, x - 90, y - 12, 1, 1, wheel_rotate, c_gray, 1);
draw_sprite_ext(spr_train_wheel, 0, x - 55, y - 12, 1, 1, wheel_rotate, c_gray, 1);

draw_sprite_ext(spr_train_wheel, 0, x + 90, y - 12, 1, 1, wheel_rotate, c_gray, 1);
draw_sprite_ext(spr_train_wheel, 0, x + 55, y - 12, 1, 1, wheel_rotate, c_gray, 1);


draw_sprite_ext(spr_train, 0, x, y, 1, image_yscale, 0, c_white, 1);






