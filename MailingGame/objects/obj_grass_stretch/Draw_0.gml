/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(sprites); i++) {
	draw_sprite_ext(spr_grass, 0, sprites[i].x_pos, 256 - 32, sprites[i].dir, 1, 0, c_white, 1);
}