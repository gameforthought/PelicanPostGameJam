/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if room = demo_room {

draw_sprite_ext(sprite, 0, x, y, door_stage / 48, 1, 0, c_white, 1);
draw_sprite(sprite, 1, x + lerp(44, 0, door_stage / 48), y);

draw_set_color(color);
draw_rectangle(x - door_stage - lerp(8, 0, door_stage / 48), y, x - door_stage, y + 82, false);

draw_set_color(c_black);
draw_rectangle(x - door_stage - 1, y, x - door_stage, y + 82, false);
draw_rectangle(x - door_stage - 1 - lerp(7, 0, door_stage / 48), y, x - door_stage - lerp(7, 0, door_stage / 48), y + 82, false);

}


if indicator = true && !instance_exists(obj_textbox) {
draw_sprite(spr_click_prox, 0, x - 24, y - bounce);
}