/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite, 0, x, y, door_stage / 45, 1, 0, c_white, 1);
draw_sprite(sprite, 1, x + lerp(30 + knob_length, 0, door_stage / 45), y);

draw_set_color(color);
draw_rectangle(x - door_stage - lerp(8, 0, door_stage / 45), y, x - door_stage, y + 76, false);

draw_set_color(c_black);
draw_rectangle(x - door_stage - 1, y, x - door_stage, y + 77, false);
draw_rectangle(x - door_stage - 1 - lerp(7, 0, door_stage / 45), y, x - door_stage - lerp(7, 0, door_stage / 45), y + 77, false);


if shine_step > 0 {


var _door_shine = surface_create(44, 77);
surface_set_target(_door_shine);

var _shine_pos = lerp(100, -80, shine_step / 100);

draw_set_color(c_white);

draw_clear_alpha(c_white, 0);



draw_line_width(-10, -10 + _shine_pos, 58, 58 + _shine_pos, 20);
draw_line_width(-10, -10 + 20 + _shine_pos, 58, 58 + 20 + _shine_pos, 5);



surface_reset_target();

//draw_set_alpha(0.7);
draw_surface(_door_shine, x - 44, y);
//draw_set_alpha(1);

surface_free(_door_shine);


}

if (indicator = true && !instance_exists(obj_textbox) && story != -1) {
	draw_sprite(spr_click_prox, 0, x - (45 / 2), y + 15 - bounce);
}









