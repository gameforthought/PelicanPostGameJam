/// @description Insert description here
// You can write your code in this editor

if (x > obj_camera_manager.camera_target - 620) && (x < obj_camera_manager.camera_target + 620) {

draw_sprite_ext(spr_conductorArm, 0, x - 75, y - 65, 1, 1, 265, c_white, 1);

draw_sprite_ext(spr_train, 1, x, y, 1, 1, 0, c_white, 1);


draw_sprite_ext(spr_train_wheel, 0, x - 90, y - 12, 1, 1, wheel_rotate, c_gray, 1);
draw_sprite_ext(spr_train_wheel, 0, x - 55, y - 12, 1, 1, wheel_rotate, c_gray, 1);

draw_sprite_ext(spr_train_wheel, 0, x + 90, y - 12, 1, 1, wheel_rotate, c_gray, 1);
draw_sprite_ext(spr_train_wheel, 0, x + 55, y - 12, 1, 1, wheel_rotate, c_gray, 1);


draw_sprite_ext(spr_train, 0, x, y, 1, image_yscale, 0, c_white, 1);


draw_sprite_ext(spr_conductorBody, blink, x - 65, y - 42, -1, 1 - (0.03 * cos(0.1 * char_anim)), 0, c_white, 1);
draw_sprite_ext(spr_conductorArm, 0, x - 58, y - 65, 1, 1, (((EaseInOutBack(sin(0.005 * pi * wave_anim), 1, 2.6, 1)) * 10 * cos(0.05 * char_anim))) - EaseInOutBack(sin(0.005 * pi * wave_anim), 0, 120, 1), c_white, 1);
}






