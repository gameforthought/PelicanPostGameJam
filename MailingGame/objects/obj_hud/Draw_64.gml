/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(button_array); i++) {

var _x = 480 - 30 - i * 42;
var _y = 256 - 6  + shift;

draw_sprite_ext(spr_hud_black, 0, _x * windowScale, (_y + 6) * windowScale,
windowScale, windowScale, 0, c_white, 1);

draw_sprite_ext(spr_hud_button, 1, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, button_array[i].color, 1);

draw_sprite_ext(spr_hud_button, 0, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, c_white, 1);

draw_sprite_ext(spr_hud_button, button_array[i].icon, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, c_white, 1);

}