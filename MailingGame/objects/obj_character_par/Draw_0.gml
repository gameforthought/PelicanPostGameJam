/// @description Insert description here
// You can write your code in this editor

//draw arms
draw_sprite_ext(sprite, 1, x + shoulder_width, 256 - 32 - shoulder_height, 1, -1, (-2 * cos(speed_mod * anim_speed * char_anim)), c_white, 1);
draw_sprite_ext(sprite, 1, x - shoulder_width, 256 - 32 - shoulder_height, -1, -1, (+2 * cos(speed_mod * anim_speed * char_anim)), c_white, 1);


// draw body
draw_sprite_ext(sprite, 0, x, 256 - 32, -1, 1 - (0.03 * cos(anim_speed * char_anim)), 0, c_white, 1);

//draw eyes
if blink = 0 {
	draw_sprite_ext(sprite, eyes, x, 256 - 32, -1, 1 - (0.03 * cos(speed_mod * anim_speed * char_anim)), 0, c_white, 1);
} else {
	draw_sprite_ext(sprite, 3, x, 256 - 32, -1, 1 - (0.03 * cos(speed_mod * anim_speed * char_anim)), 0, c_white, 1);
}

//draw mouth
draw_sprite_ext(sprite, mouth, x, 256 - 32, -1, 1 - (0.03 * cos(speed_mod * anim_speed * char_anim)), 0, c_white, 1);